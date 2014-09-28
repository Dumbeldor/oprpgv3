$(function() {
  $('#form_tchat').submit(function(e){
    var msg = $('#msg').val();
    $.post("tchat/post",{message: msg}, function() { $('#msg').val('');update_tchat(); });
    e.preventDefault();
  });
});

setInterval(function(){update_tchat();}, 10000);

function update_tchat() {
  var html = '';
  $.get("tchat/get", function(data) {
    data = JSON.parse(data);
    $.each(data, function(ind, message) {
      html += '<div class="tchat_container"><strong>' + message.pseudo + '</strong> le ' + message.date + '</br>' + message.message + '</br></iv>';
    });
    $('#tchat_container').html(html);
  });
}