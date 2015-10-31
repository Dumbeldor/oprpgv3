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
	  + '<font color="<?= $this->user->getColor('+message.idRanks+') ?>"><strong>' +message.pseudo
	  + '</strong></font> <br> <img src="'+img_url+'/avatarDefault.png"></img><br>'
	  + '</div><div class="columns small-9"><div class="panel" style="border-color: <?= $this->user->getColor($message->idRanks) ?>;  border-radius: 10px">'
	  +'le '
	  + message.date_time
	  + supp
	  + '</br>'
	  + message.message
	  + '</br></div></div></div></div></div>';
    });
    $('#tchat_container').html(html);
  });
}