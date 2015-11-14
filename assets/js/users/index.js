$("input#user_search").keyup(function(){
	// On cherche si le joueur a entré 3 caractères ou plus
	if($("input#user_search").val().length >= 3) {
		$("#liste_users").toggle(false);
		$("#liste_users_search").toggle(true);
		
		var search = $("input#user_search").val();
		$.post("users/search",
			{search_input: search}, 
			function(data) {
				// on vide les anciens résultats
				$('#search_table tbody').empty();
				
				// on reconstruit
				data = $.parseJSON(data);
				if(data.length > 0) {
					$.each(data, function(ind, message) {
						$('#search_table tbody').append('<tr>'
						+ '<td><a href="' + base_url + '/' + message.id + '" class="' + message.rank + '">' + message.pseudo + '</a></td>'
						+ '<td>' + getDatetime(message.registration) + '</td>' 
						+ '</tr>');
					});
				} else {
					$('#search_table tbody').append('<tr><td>Aucun joueur ne correspond à cette recherche...</td><td></td></tr>');
				}
			}
		);
	}
	
	// S'il n'y a plus de caractères dans la recherche, on remet le 
	// tableau de tous les joueurs
	if($("input#user_search").val().length == 0) {
		$("#liste_users").toggle(true);
		$("#liste_users_search").toggle(false);
	}
});

function getDatetime(timestamp) {
	var myDate = new Date(timestamp*1000);
	var months = ['01', '02', '03', '04', '05', '06', '07', '08', '09', '10', '11', '12'];
	var day = (myDate.getDate() < 10) ? '0' + myDate.getDate() : myDate.getDate();
	return day + '/' + months[myDate.getMonth()] + '/' + myDate.getFullYear()
		+ ' à ' + myDate.getHours() + 'h' + myDate.getMinutes();
}