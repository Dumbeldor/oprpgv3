var url_params = window.location.pathname.split('/');
var current_salle = url_params[url_params.length - 1];
$(function() {
  $('#form_tchat').submit(function(e){
    var msg = $('#msg').val();
	$.post("postMessage",{message: msg, id_tchat: current_salle}, function() { $('#msg').val('');update_tchat(); });
    e.preventDefault();
  });
});

setInterval(function(){update_tchat();}, 10000);

function update_tchat() {
  $.get("getMessages/" + current_salle, function(data) {
	var html = '';
	var supp = '';
	data = $.parseJSON(data);
	$.each(data, function(ind, message) {
	  if(modo == true) {
		supp = ' |<a href="' + base_url + '/' + message.id +'">Supprimer</a>';
	  } else {
	    supp = '';
	  }
       html += '<div class="tchat_message"><div class="columns small-12"><div class="row"><div class="columns small-3">'
	  + '<div><strong><a href="'+url_user+'/'+message.userId+'" class="'+message.ranks+'">' +message.pseudo
	  + '</a></strong></div><div class="message_tchat_milieu"><img height="74px" width="74px" src="'+img_url+'/avatarDefault.png"></img></div>'
	  + '</div><div class="columns small-9 messageTchat panel" id="'+message.ranks+'"><div class="message_tchat_haut" id="'+message.ranks+'"">'
	  +'Posté le '
	  + message.date_time
	  + supp
	  + '</div><div class="message_tchat_milieu">'
	  + message.message
	  + '</div><div class="message_tchat_bas"></div></div></div></div></div>';
    });
    $('#tchat_container').html(html);
  });
}