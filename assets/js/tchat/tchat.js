$(document).ready(function(){
	//create a new WebSocket object.
	var wsUri = "ws://localhost:9000/chat/server.php"; 	
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
	
	websocket.onerror	= function(ev){$('#message_box').append("<div class=\"system_error\">Error Occurred - "+ev.data+"</div>");}; 
	websocket.onclose 	= function(ev){$('#msgT').prepend("<div class=\"system_msg\">Connection Closed</div>");}; 


	function notifSound(s)
	{
		var e=document.createElement('audio');
		e.setAttribute('src',s);
		e.play();
	}
	
});