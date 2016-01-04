<?php
require_once('User.php');

class webSocketServer {
	protected $dbh;
	protected $host;
	protected $port;
	protected $socket;
	protected $clients = array();

	public function __construct($host, $port, $dbh) {
		//Create TCP/IP sream socket
		$this->socket = socket_create(AF_INET, SOCK_STREAM, SOL_TCP);
		//reuseable port
		socket_set_option($this->socket, SOL_SOCKET, SO_REUSEADDR, 1);

		//bind socket to specified host
		socket_bind($this->socket, $host, $port);

		//listen to port
		socket_listen($this->socket);
		
		//create & add listning socket to the list
		$User = new User($this->socket);
		$this->clients = array($User);
		$this->dbh = $dbh;
	}
	
	public function run() {
		//start endless loop, so that our script doesn't stop
		while (true) {
			//manage multipal connections
			//$changed = $this->clients;
			
			//echo "<br>TEST :O<br>";
			
			$changed = null;
			foreach($this->clients AS $client) {
				if($client != null)
					$changed[] = $client->getSocket();
			}
			//returns the socket resources in $changed array
			socket_select($changed, $null, $null, 0, 10);
			
			//check for new socket
			if (in_array($this->socket, $changed)) {
				$socket_new = socket_accept($this->socket); //accpet new socket
				$User = new User($socket_new);
				$this->clients[count($this->clients)] = $User; //add socket to client array
				
				$header = socket_read($socket_new, 1024); //read data sent by the socket
				$this->perform_handshaking($header, $socket_new, $this->host, $this->port); //perform websocket handshake
				
				socket_getpeername($socket_new, $ip); //get ip address of connected socket
								
				//make room for new socket
				$found_socket = array_search($this->socket, $changed);
				unset($changed[$found_socket]);
			}
			
			$this->process($changed);
			array_filter($this->clients);
		}
		
		// close the listening socket
		socket_close($sock);
	}
	
	function process($changed) {
		
	}
	
	function send_message($msg)
	{
		foreach($this->clients as $changed_socket)
		{
			@socket_write($changed_socket->socket,$msg,strlen($msg));
		}
		return true;
	}
	
	//Unmask incoming framed message
	function unmask($text) {
		$length = ord($text[1]) & 127;
		if($length == 126) {
			$masks = substr($text, 4, 4);
			$data = substr($text, 8);
		}
		elseif($length == 127) {
			$masks = substr($text, 10, 4);
			$data = substr($text, 14);
		}
		else {
			$masks = substr($text, 2, 4);
			$data = substr($text, 6);
		}
		$text = "";
		for ($i = 0; $i < strlen($data); ++$i) {
			$text .= $data[$i] ^ $masks[$i%4];
		}
		return $text;
	}
	
	//Encode message for transfer to client.
	function mask($text)
	{
		$b1 = 0x80 | (0x1 & 0x0f);
		$length = strlen($text);
		
		if($length <= 125)
			$header = pack('CC', $b1, $length);
		elseif($length > 125 && $length < 65536)
			$header = pack('CCn', $b1, 126, $length);
		elseif($length >= 65536)
			$header = pack('CCNN', $b1, 127, $length);
		return $header.$text;
	}
	
	//handshake new client.
	function perform_handshaking($receved_header,$client_conn, $host, $port)
	{
		$headers = array();
		$lines = preg_split("/\r\n/", $receved_header);
		foreach($lines as $line)
		{
			$line = chop($line);
			if(preg_match('/\A(\S+): (.*)\z/', $line, $matches))
			{
				$headers[$matches[1]] = $matches[2];
			}
		}

		$secKey = $headers['Sec-WebSocket-Key'];
		$secAccept = base64_encode(pack('H*', sha1($secKey . '258EAFA5-E914-47DA-95CA-C5AB0DC85B11')));
		//hand shaking header
		$upgrade  = "HTTP/1.1 101 Web Socket Protocol Handshake\r\n" .
		"Upgrade: websocket\r\n" .
		"Connection: Upgrade\r\n" .
		"WebSocket-Origin: $host\r\n" .
		"WebSocket-Location: ws://$host:$port/demo/shout.php\r\n".
		"Sec-WebSocket-Accept:$secAccept\r\n\r\n";
		socket_write($client_conn,$upgrade,strlen($upgrade));
	}
}