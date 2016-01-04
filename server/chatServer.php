<?php
require_once('webSocketServer.php');
include('database.php');

class chatServer extends webSocketServer {

	function addInBdd($id, $message, $date_time, $salon, $dbh) {
		$stmt = $dbh->prepare("INSERT INTO tchats_messages (message, date_time, id_tchats, id_users) VALUES (:message, :date_time, :id_tchats, :id_users)");
		$stmt->bindParam(':message', $message);
		$stmt->bindParam(':date_time', $date_time);
		$stmt->bindParam(':id_tchats', $salon);
		$stmt->bindParam(':id_users', $id);
		$stmt->execute();
	}
	
	function process($changed) {
		$buf = null;
		//loop through all connected sockets
		foreach ($changed as $changed_socket) {	
			
			//check for any incomming data
			while(socket_recv($changed_socket, $buf, 1024, 0) >= 1)
			{
				var_dump($this->clients);
				$received_text = $this->unmask($buf); //unmask data
				$tst_msg = json_decode($received_text); //json decode 
				$type = $tst_msg->type; //Type message 1 = newConnection 2 = message
				$found_socket = array_search($changed_socket, $changed);
				if($type == 1) {
					$listCo = '';
					foreach($this->clients AS $u) {
						$listCo[] = $u->getId();
					}
					var_dump($listCo);
					$alreadyConnected = array_search($tst_msg->userId, $listCo);
					
					$this->clients[$found_socket]->setPseudo($tst_msg->name);
					$this->clients[$found_socket]->setRank($tst_msg->rank);
					$this->clients[$found_socket]->setSalle($tst_msg->salle);
					$this->clients[$found_socket]->setId($tst_msg->userId);

					if($alreadyConnected == FALSE) {
						$user_name = $tst_msg->name; //sender name
						$user_rank = $tst_msg->rank; //color
						$response_text = $this->mask(json_encode(array('type'=>'system', 'message'=>$user_name.' vien de se connecter au tchat !', 'rank'=>$user_rank,
							'dateTime' => time())));
						$this->send_message($response_text);
					}
				}
				else {
					$user_message = $tst_msg->message; //message text
					$date_time = time();
					//prepare data to be sent to client
					$response_text = $this->mask(json_encode(array('type'=>'usermsg', 'name'=>$this->clients[$found_socket]->getPseudo(),
																   'message'=>$user_message, 'rank'=>$this->clients[$found_socket]->getRank(),
																   'id'=>$this->clients[$found_socket]->getId(), 'dateTime'=>$date_time)));
					$this->send_message($response_text); //send data
					$this->addInBdd($this->clients[$found_socket]->getId(), $user_message, $date_time, 1, $this->dbh);
				}
				break 2; //exist this loop
			}
			
			$buf = @socket_read($changed_socket, 1024, PHP_NORMAL_READ);
			if ($buf === false) { // check disconnected client
				// remove client for $clients array
				$found_socket = array_search($changed_socket, $changed);
				
				$pseudo = $this->clients[$found_socket]->getPseudo();
				$id = $this->clients[$found_socket]->getId();

				
				socket_getpeername($changed_socket, $ip);
				//unset($this->clients[$found_socket]);
				$this->clients[$found_socket] = '';
				//array_filter($this->clients);
				$t = 0;
				for($i = 0; $i < count($this->clients); $i++){
					if($this->clients[$i] == '')
						$t = $i;
					if ($i > $t) 
						$this->clients[$i-1] = $this->clients[$i];
				}
				unset($this->clients[count($this->clients) -1]);
				$listCo = '';
				foreach($this->clients AS $u) {
					$listCo[] = $u->getId();
				}
				$alreadyConnected = array_search($id, $listCo);
				if(!$alreadyConnected){
					echo "Deconnexion \n";
					
					//notify all users about disconnected connection
					$response = $this->mask(json_encode(array('type'=>'system', 'message'=>$pseudo.' disconnected', 'dateTime' => time())));
					$this->send_message($response);
				}
			}
		}
	}
}

$server = new chatServer('localhost', '9000', $dbh);
$server->run();