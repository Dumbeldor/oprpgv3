$(document).ready(function(){
	
	 // Fermeture de page.
    $(window).bind('beforeunload', function(){
            return 'Etes vous sur de vouloir fermer la fenêtre?';
        });
    $(window).unload(function(){
            socket.disconnect();
        });
	
	function addMessage(uId, uname, urank, umsg){
		supp = "";
		classCss = "";
		//dateTime = time();
		var date = new Date();
		var content = '<div class="tchat_message" id="msgT"> <div class="columns small-12"><div class="row"><div class="columns medium-2 small-3">'
				  + '<div><strong><a href="'+url_user+'/'+uId+'" class="'+urank+'">' +uname
				  + '</a></strong></div><div class="message_tchat_milieu"><img data-pseudo="' + uname + '" class="avatarTchat avatarTchat'+urank+'" src="'+img_url+'/avatarsJoueurs/'+uId+'.png"></img></div>'
				  + '</div><div class="panel columns medium-10 small-9 messageTchat ' + classCss + '" id="'+urank+'"><div class="message_tchat_haut" id="'+urank+'"">'
				  +'Posté à '
				  + date.toLocaleString()
				  + supp
				  + '</div><div class="message_tchat_milieu">'
				  + umsg
				  + '</div><div class="message_tchat_bas"></div></div></div></div>';
	
				$('#msgT').prepend(content);
	}
	
	 // Ajoute un connecté
        function insertUser(pseudo) {
			var message = pseudo+' a rejoins le tchat !';
			addMessage(13, 'Pandaman', 'VIP', message);
        }
			
			// Supprime un connecté
        function deleteUser(pseudo) {
            var message = pseudo+' a rquitté le tchat !';
			addMessage(13, 'Pandaman', 'VIP', message);
        }
	
	 // Socket io
        
        
            
        var socket = io.connect('localhost:8081');
            
         socket.on('connect', function(){
			socket.emit('authenticate', {id: userId, pseudo: myname, rank: ranks,token: token});
        });
            // Quand on reçoit un message, on l'insère dans la page
        socket.on('message', function(data) {
            addMessage(data.id, data.pseudo, data.rank, data.message);
			$('#notif')[0].play();
        });

            // Quand un nouveau client se connecte, on affiche l'information (va disparraitre)
        socket.on('nouveau_client', function(pseudo){
            insertUser(pseudo);
        });
            
        socket.on('online_web', function(data){
			/*
             $("#online_web").find(".online").remove();
            $.each(data, function(key, value){
                $('#online_web').append('<li class="online">'+value +'</li>');
            });
            */
        });
            
        socket.on('init_mess', function(initMess){
             //addInitMess(initMess);
        });
            
        socket.on('leave', function(pseudo){
             deleteUser(pseudo);
        });
            
         socket.on('erreur', function(data){    
                // On redirige (non defini et inutile actuellement)
                //document.location.href="/login";
        });
		 
		$('#send_button').click(function(){ //use clicks message send button
			var message = $('#msg').val(); //get message text
		
			if(myname == ""){ //empty name?
				alert("Vous n'êtes pas connecté...");
				return;
			}
			if(message == ""){ //emtpy message?
				alert("Entrer un message !");
				return;
			}
			$('#msg').val('');
			socket.emit('message', message); // Transmet le message aux autres
			//addMessage(userId, myname, ranks, message);
		});
	
	
	
	
	
	
	
	
	/*//create a new WebSocket object.
	var wsUri = "ws://localhost:9000"; 	
	websocket = new WebSocket(wsUri); 


	
	websocket.onopen = function(ev) { // connection is open
		//alert('test');
		var date = new Date();
		var content = '<div class="tchat_message" id="msgT"> <div class="columns small-12"><div class="row"><div class="columns medium-2 small-3">'
			  + '<div><strong><a href="'+url_user+'/13" class="VIP">Pandaman'
			  + '</a></strong></div><div class="message_tchat_milieu"><img data-pseudo="Pandaman" class="avatarTchat avatarTchat VIP" src="'+img_url+'/avatarsJoueurs/13.png"></img></div>'
			  + '</div><div class="panel columns medium-10 small-9 messageTchat " id="VIP"><div class="message_tchat_haut" id="VIP"">'
			  +'Posté à '
			  + date.toLocaleString()
			  + '</div><div class="message_tchat_milieu">'
			  + 'Vous êtes connecté sur le tchat ! Merci de respecter les règles de bonne conduite...<br>Passez un bon moment !'
			  + '</div><div class="message_tchat_bas"></div></div></div></div>';


			$('#msgT').prepend(content);
			
		
		var mymessage = myname + ' vient de se connecter sur le tchat !';
		//prepare json data
		var msg = {
			type: 1,
			message: mymessage,
			name: myname,
			rank : ranks,
			userId : userId,
			salle: salle
		};

		$('#msg').val(''); //reset text
		//convert and send data to server
		websocket.send(JSON.stringify(msg));
	}


	
	
	//#### Message received from server?
	websocket.onmessage = function(ev) {		
		var msg = JSON.parse(ev.data); //PHP sends Json data
		var type = msg.type; //message type
		var umsg = msg.message; //message text
		var dateTime = msg.dateTime; //date poste message

		supp = "";
		classCss = "";
		var date = new Date(dateTime*1000);
		var hours = date.getHours();
		// Minutes part from the timestamp
		var minutes = date.getMinutes();
		// Seconds part from the timestamp
		var seconds = date.getSeconds();
		if(type == 'usermsg' && umsg != null) 
		{
			$('#notif')[0].play();
			var uname = msg.name; //user name
			var urank = msg.rank; //color
			var uId = msg.id; //id user
			var content = '<div class="tchat_message" id="msgT"> <div class="columns small-12"><div class="row"><div class="columns medium-2 small-3">'
			  + '<div><strong><a href="'+url_user+'/'+uId+'" class="'+urank+'">' +uname
			  + '</a></strong></div><div class="message_tchat_milieu"><img data-pseudo="' + uname + '" class="avatarTchat avatarTchat'+urank+'" src="'+img_url+'/avatarsJoueurs/'+uId+'.png"></img></div>'
			  + '</div><div class="panel columns medium-10 small-9 messageTchat ' + classCss + '" id="'+urank+'"><div class="message_tchat_haut" id="'+urank+'"">'
			  +'Posté à '
			  + date.toLocaleString()
			  + supp
			  + '</div><div class="message_tchat_milieu">'
			  + umsg
			  + '</div><div class="message_tchat_bas"></div></div></div></div>';

			$('#msgT').prepend(content);
		}
		if(type == 'system')
		{
			var content = '<div class="tchat_message" id="msgT"> <div class="columns small-12"><div class="row"><div class="columns medium-2 small-3">'
			  + '<div><strong><a href="'+url_user+'/13" class="VIP">Pandaman'
			  + '</a></strong></div><div class="message_tchat_milieu"><img data-pseudo="Pandaman" class="avatarTchat avatarTchat VIP" src="'+img_url+'/avatarsJoueurs/13.png"></img></div>'
			  + '</div><div class="panel columns medium-10 small-9 messageTchat ' + classCss + '" id="VIP"><div class="message_tchat_haut" id="VIP"">'
			  +'Posté à '
			  + date.toLocaleString()
			  + supp
			  + '</div><div class="message_tchat_milieu">'
			  + umsg
			  + '</div><div class="message_tchat_bas"></div></div></div></div>';


			$('#msgT').prepend(content);
		}
	};
	
	websocket.onerror	= function(ev){$('#message_box').append("<div class=\"system_error\">Erreur - "+ev.data+"</div>");}; 
	websocket.onclose 	= function(ev){$('#msgT').prepend("<div class=\"system_msg\">Connexion avec le serveur interrompu</div>");}; 


	function notifSound(s)
	{
		var e=document.createElement('audio');
		e.setAttribute('src',s);
		e.play();
	}
	*/
});