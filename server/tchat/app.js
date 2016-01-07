var app = require('express')(),
    server = require('http').createServer(app),
    io = require('socket.io').listen(server),
    ent = require('ent'), // Permet de bloquer les caractères HTML (sécurité équivalente à htmlentities en PHP)
    Yaml = require('yamljs'),
    mysql = require('mysql');

var connection = mysql.createConnection({
  host     : 'localhost',
  user     : 'root',
  password : '',
  database : 'oprpgv3'
});

connection.connect();

var gConfig = Yaml.load('gConfig.yml');

var maxLastMess = gConfig.nb_last_mess;
// Conserve n derniers messages
var lastsMess = [];
var nbLastMess = 0;

var spamtime = gConfig.spam * 1000;
function isSpam(old, last){
    if (socket.rank == "Administrateur" || socket.rank == "Administratrice") {
        return false;
    }
    if ((old + spamtime) > last) {
        return true;
   }
}

function insertLastMess(id, pseudo, rank, message, id_tchat)
{
   var post = {
    message: message,
    date_time : Math.round(new Date().getTime() / 1000),
    is_block: 0,
    id_tchats: id_tchat,
    id_users: id
   }
   var query = connection.query('INSERT INTO tchats_messages SET ?', post, function(err, resultat) {
   });
}
function checkAuthToken(pseudo, token, callback)
{
    /*
    var can = false;
    if (pseudo != "undefined") {
        pgClient.query({
            text: "SELECT chat_token FROM fos_user where username = $1",
            values: [pseudo]
        }, function(err, result){
            //done();
            if (result.rows[0]) {
                if (result.rows[0].chat_token == token) {
                    console.log("Tokens are correct");
                    can = true;
                }else{
                    can = false;
                }
                return callback(err, can);
            }
        });
    }else{
        var err = "pseudo is not defined."
    }
    return callback(err, can);
    */
    var can = true;
    return true;

}

// Chargement de la page index.html
//app.get('/', function (req, res) {
//  res.sendfile(__dirname + '/index.html');
//});

var online_web = [];
io.sockets.on('connection', function (socket, pseudo) {
socket.auth = false;
    var clientIp = socket.request.connection.remoteAddress;
    socket.on('authenticate', function(data){
        if (data.pseudo !== 'undefined' && data.token !== 'undefined' && data.rank !== 'undefined' && data.id !== 0) {
            //checkAuthToken(data.pseudo, data.token, function(result){
              //  if(false){
                //    console.log("Erreur callback ckeckAuthToken: "+err);
                //}else {
                  //  if(result){
                        console.log("Authenticated socket ", socket.id);
                        console.log("Connexion from: "+clientIp+" by "+data.pseudo);
                        socket.join(data.tchat_id);
                        socket.auth = true;
                        socket.pseudo = data.pseudo;
                        socket.rank = data.rank;
                        socket.myId = data.id;
                        socket.tchat_id = data.tchat_id;
                        socket.spamprotect = Date.now();
                        console.log("Tchat : " + socket.tchat_id + " MyId: "+socket.myId+" rank : " + socket.rank);
                        online_web.push(data.pseudo);
                        socket.emit('init_mess', lastsMess);
                        socket.emit('online_web', online_web);
                        //socket.broadcast.to('1').emit('nouveau_client', socket.pseudo);
                        socket.broadcast.to(socket.tchat_id).emit('nouveau_client', socket.pseudo);
                        socket.broadcast.to(socket.tchat_id).emit('online_web', online_web);
                    
                    //}
                //}
            //});
        }

        setTimeout(function(){
            //Si le socket n'est pas identifié on le deco
            if (!socket.auth) {
                socket.emit('erreur', {"erreur": "aucun_pseudo"});
                console.log("Disconnecting socket ", socket.id);
                socket.disconnect('unauthorized');
            }
        }, 1000);
    });

    // Dès qu'on reçoit un message, on récupère le pseudo de son auteur et on le transmet aux autres personnes
    socket.on('message', function (message) {
        if(typeof socket.pseudo !== 'undefined'){
           if (message.match(/^ +/) || message === "") {
                socket.emit('spam', {spam: true})
            }else{
                var date = Date.now();
                if (isSpam(socket.spamprotect, date)) {
                    socket.emit('spam', {spam: true})
                }else{
                    insertLastMess(socket.myId, socket.pseudo, socket.rank, ent.encode(message), socket.tchat_id);
                    console.log("Message reçu de : " + socket.pseudo + " id : " + socket.myId + " rank : " + socket.rank);
                    socket.spamprotect = date;
                    //socket.broadcast.to('1').emit('message', {id: socket.id, pseudo: socket.pseudo, rank: socket.rank, message: ent.encode(message)});
                    socket.broadcast.to(socket.tchat_id).emit('message', {id: socket.myId, pseudo: socket.pseudo, rank: socket.rank, message: ent.encode(message)})
                }
            }
        }else{  
                socket.emit('erreur', {"erreur": "aucunpseudo"});
        }
    });

    socket.on('disconnect', function () {
        console.log(socket.pseudo+" c'est déconnecté.");
        online_web.splice(online_web.indexOf(socket.pseudo), 1);
        socket.broadcast.to(socket.tchat_id).emit('online_web', online_web);
        socket.broadcast.to(socket.tchat_id).emit('leave', socket.pseudo);
    });

});

server.listen(8081);


