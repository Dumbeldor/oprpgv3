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
	  if(modo) {
		supp = ' |<a href="' + base_url + '/' + message.id +'">Supprimer</a>';
	  } else {
	    supp = '';
	  }
      html += '<div class="tchat_message"><strong>' + message.pseudo + '</strong> le ' + message.date_time + supp + '</br>' + message.message + '</br></div>';
    });
    $('#tchat_container').html(html);
  });
}