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
                var regex = new RegExp(myname);
                if(umsg.match(regex) != null) {
                    classCss = 'messageTchatMoi';
                    $('#notif')[0].play();
                }
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
            var message = pseudo+' a quitté le tchat !';
                        addMessage(13, 'Pandaman', 'VIP', message);
        }
        
        //Ajout pseudo quand lors du clic sur un avatar
    $("#tchat_container").click(function(e){
        if(e.target.nodeName == "IMG") {
            var attr = e.target.attributes;
            var pseudo = '';
            $(attr).each(function(ind, value) {
                if(value.name == "data-pseudo") {
                    pseudo = value.nodeValue;
                }
            });		
            $("#msg").val($("#msg").val() + pseudo + " > ");
        }
    });

         // Socket io
        var socket = io.connect('localhost:8081');

         socket.on('connect', function(){
                        socket.emit('authenticate', {id: userId, pseudo: myname, rank: ranks,token: token, tchat_id: salle});
        }); 
            // Quand on reçoit un message, on l'insère dans la page
        socket.on('message', function(data) {
            addMessage(data.id, data.pseudo, data.rank, data.message);
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
                        addMessage(userId, myname, ranks, message);
                });
				
		socket.on('spam', function(spam){
                if (spam.spam === true) {
					addMessage(13, 'Pandaman', 'VIP', "Votre message n'a pas été envoyé car il est considéré comme spam");
                }
            });
});