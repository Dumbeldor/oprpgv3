<?php
require_once('./webSocketServer.php');
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
				$received_text = $this->unmask($buf); //unmask data
				$tst_msg = json_decode($received_text); //json decode 
				$type = $tst_msg->type; //Type message 1 = newConnection 2 = message
				if($type == 1) {
					$user_name = $tst_msg->name; //sender name
					$user_rank = $tst_msg->rank; //color
					$response_text = $this->mask(json_encode(array('type'=>'system', 'message'=>$user_name.' vien de se connecter au tchat !', 'rank'=>$user_rank,
						'dateTime' => time())));
					send_message($response_text);
					break 2;
				}
				else {
					$user_name = $tst_msg->name; //sender name
					$user_message = $tst_msg->message; //message text
					$user_rank = $tst_msg->rank; //color
					$user_id = $tst_msg->userId;
					$date_time = time();
					//prepare data to be sent to client
					$response_text = $this->mask(json_encode(array('type'=>'usermsg', 'name'=>$user_name, 'message'=>$user_message, 'rank'=>$user_rank, 'id'=>$user_id, 'dateTime'=>$date_time)));
					$this->send_message($response_text); //send data
					$this->addInBdd($user_id, $user_message, $date_time, 1, $this->dbh);
				}
				break 2; //exist this loop
			}
			
			$buf = @socket_read($changed_socket, 1024, PHP_NORMAL_READ);
			if ($buf === false) { // check disconnected client
				// remove client for $clients array
				$found_socket = array_search($changed_socket, $this->clients);
				socket_getpeername($changed_socket, $ip);
				unset($this->clients[$found_socket]);
				echo "Deconnexion \n";
				
				//notify all users about disconnected connection
				$response = $this->mask(json_encode(array('type'=>'system', 'message'=>$ip.' disconnected')));
				$this->send_message($response);
			}
		}
	}
}

$server = new chatServer('localhost', '9000', $dbh);
$server->run();