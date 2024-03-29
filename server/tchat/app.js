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
    if ((old + spamtime) > last) {
        return true;
   }
}

function listCo(id_tchat) {
    var namespace = '/';
    var pseudo = [];
    for (var socketId in io.nsps[namespace].adapter.rooms[id_tchat]) {
      pseudo.push(io.sockets.connected[socketId].pseudo);
    }
    return pseudo;
}

function insertLastMess(id, pseudo, rank, message, id_tchat)
{
  if (id_tchat > 0 && id_tchat < 4) {
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
  else {
    var post = {
     message: message,
     date_time : Math.round(new Date().getTime() / 1000),
     id_crews: id_tchat,
     id_users: id
    }
    var query = connection.query('INSERT INTO tchats_messages_crew SET ?', post, function(err, resultat) {
    });
  }
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
                        socket.join(data.tchat_id);
                        socket.auth = true;
                        socket.pseudo = data.pseudo;
                        socket.rank = data.rank;
                        socket.myId = data.id;
                        socket.tchat_id = data.tchat_id;
                        console.log("Connection au tchat de :" + data.pseudo);
                        var online = listCo(socket.tchat_id);
                        socket.emit('online_web', online);
                        socket.broadcast.to(socket.tchat_id).emit('online_web', online);
                    
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
                    console.log(socket.pseudo + " <" + socket.tchat_id + "> : " + message);
                    //socket.spamprotect = date;
                    //socket.broadcast.to('1').emit('message', {id: socket.id, pseudo: socket.pseudo, rank: socket.rank, message: ent.encode(message)});
                    socket.broadcast.to(socket.tchat_id).emit('message', {id: socket.myId, pseudo: socket.pseudo, rank: socket.rank, message: ent.encode(message)})
                    insertLastMess(socket.myId, socket.pseudo, socket.rank, ent.encode(message), socket.tchat_id);
                }
            }
        }else{  
                socket.emit('erreur', {"erreur": "aucunpseudo"});
        }
    });

    socket.on('disconnect', function () {
        console.log(socket.pseudo+" c'est déconnecté.");
        var online = listCo(socket.tchat_id);
        delete online[socket.pseudo];
        socket.broadcast.to(socket.tchat_id).emit('online_web', online);
    });

});

server.listen(8081);


