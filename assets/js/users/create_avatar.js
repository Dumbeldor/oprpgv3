var color = 'marron';

// Fonctions qui gèrent les événements liés au choix du sexe
$("#sexeHomme").click(function(){
	$("#currentAvatar").attr("src", avat_dir + "/man/body/1.png");
});

$("#sexeFemme").click(function(){
	$("#currentAvatar").attr("src", avat_dir + "/woman/body/1.png");
});

// Fonctions qui gèrent l'affichage les options de chaque étape.
$("#etape_corps").click(function(){
	var sexe = $('input[name=sexe]:checked').val();
	$("#options_avatars div#options").empty();
	if(sexe == 'Homme') {
		for(var i=1;i<=nb_corps_homme;i++) {
			$("#options_avatars div#options").append('<a><img class="option_avatar" id="body-'+i+'" src="'+avat_dir+'/man/body/'+i+'.png"></a> ');
		}
	} else {
		for(var i=1;i<=nb_corps_femme;i++) {
			$("#options_avatars div#options").append('<a><img class="option_avatar" id="body-'+i+'" src="'+avat_dir+'/woman/body/'+i+'.png"></a> ');
		}
	}
});

$("#etape_cheveux").click(function(){
	afficher_cheveux();
});

function afficher_cheveux() {
	var sexe = $('input[name=sexe]:checked').val();
	$("#options_avatars div#options").empty();
	if(sexe == 'Homme') {
		var nb_cheveux = 'nb_cheveux_homme_'+color;
		for(var i=1;i<=window[nb_cheveux];i++) {
			$("#options_avatars div#options").append('<a><img class="option_avatar" id="hair-'+i+'" src="'+avat_dir+'/man/hair/'+color+'/'+i+'.png"></a> ');
		}
	} else {
		var nb_cheveux = 'nb_cheveux_femme_'+color;
		for(var i=1;i<=window[nb_cheveux];i++) {
			$("#options_avatars div#options").append('<a><img class="option_avatar" id="hair-'+i+'" src="'+avat_dir+'/woman/hair/'+color+'/'+i+'.png"></a> ');
		}
	}
}

$("#etape_yeux").click(function(){
	var sexe = $('input[name=sexe]:checked').val();
	$("#options_avatars div#options").empty();
	if(sexe == "Homme") {
		for(var i=1;i<=nb_yeux_homme;i++) {
			$("#options_avatars div#options").append('<a><img class="option_avatar" id="eyes-'+i+'" src="'+avat_dir+'/man/eyes/'+i+'.png"></a> ');
		}
	}
	else {
		for(var i=1;i<=nb_yeux_femme;i++) {
			$("#options_avatars div#options").append('<a><img class="option_avatar" id="eyes-'+i+'" src="'+avat_dir+'/woman/eyes/'+i+'.png"></a> ');
		}
	}
	
});

$("#etape_bouche").click(function(){
	$("#options_avatars div#options").empty();
	for(var i=1;i<=nb_bouches;i++) {
		$("#options_avatars div#options").append('<a><img class="option_avatar" id="mouth-'+i+'" src="'+avat_dir+'/mouths/'+i+'.png"></a> ');
	}
});

// Gestoin du clic sur une option
$("div#options_avatars div#options").click(function(e){
	if($(e.target).attr('class') == "option_avatar") {
		var id = $(e.target).attr('id');
		var type = id.split('-')[0];
		var ind = id.split('-')[1];
		
		switch(type) {
			case 'body':
				$("input#input_body").val(ind);
				break;
				
			case 'hair':
				$("input#input_hair").val(ind);
				$("input#input_couleur").val(color);
				break;
				
			case 'eyes':
				$("input#input_eyes").val(ind);
				break;
				
			case 'mouth':
				$("input#input_mouth").val(ind);
				break;
			
			default:
				break;
		}
		
		avatar_construct();
	}
});

$("div.paletteCouleurs").click(function(){
	var id = $(this).attr('id');
	switch(id) {
		case 'couleurNoir':
			color = 'noir';
			break;
			
		case 'couleurBlanc':
			color = 'blanc';
			break;
			
		case 'couleurRose':
			color = 'rose';
			break;
			
		case 'couleurBleu':
			color = 'bleu';
			break;

		case 'couleurRouge':
			color = 'rouge';
			break;

		case 'couleurVert':
			color = 'vert';
			break;

		case 'couleurJaune':
			color = 'jaune';
			break;

		case 'couleurOrange':
			color = 'orange';
			break;

		case 'couleurMarron':
			color = 'marron';
			break;
			
		default:
			color = 'marron';
			break;
	}
	afficher_cheveux();
});

function avatar_construct() {
	var body = $("input#input_body").val();
	var hair = $("input#input_hair").val();
	var eyes = $("input#input_eyes").val();
	var mouth = $("input#input_mouth").val();
	
	$("div#currentAvatarPanel").empty();
	if(body != "0") {
		var sexe = $('input[name=sexe]:checked').val();
		var folder = (sexe == 'Homme') ? 'man' : 'woman';
		$("div#currentAvatarPanel").append('<img class="currentAvatar" src="'+avat_dir+'/'+folder+'/body/'+body+'.png">');
	}

	if(eyes != "0") {
		var sexe = $('input[name=sexe]:checked').val();
		var folder = (sexe == 'Homme') ? 'man' : 'woman';
		$("div#currentAvatarPanel").append('<img class="currentAvatar" src="'+avat_dir+'/'+folder+'/eyes/'+eyes+'.png">');
	}

	if(hair != "0") {
		var sexe = $('input[name=sexe]:checked').val();
		var color = $("input#input_couleur").val()
		var folder = (sexe == 'Homme') ? 'man' : 'woman';
		$("div#currentAvatarPanel").append('<img class="currentAvatar" src="'+avat_dir+'/'+folder+'/hair/'+color+'/'+hair+'.png">');
	}
	
	if(mouth != "0") {
		$("div#currentAvatarPanel").append('<img class="currentAvatar" src="'+avat_dir+'/mouths/'+mouth+'.png">');
	}
}