(function($) {

    $('#action').on('click', '#fightMonster', function (e) {

        boucleWaiting();
        boucleWaitingMonster()

        e.preventDefault();

        var $a = $(this);
        var url = $a.attr('href');

        $("#page").html('<h1>En combat</h1><br><br><ul id="combat" class="large-block-grid-2 medium-block-grid-2 small-block-grid-1">' +
            '<li><div id="me" class="panel">' +
                '<div id="avatar"></div><br>'+
                'Nom : <strong id="nom"></strong>' +
                '<br>Vie : <strong id="life"></strong>/<strong id="lifeMax"></strong><br>' +
                'Energies : <strong id="energies"></strong>/<strong id="energiesMax"></strong><br>' +
                'Lvl :<strong id="lvl"></strong><br>' +
                'Attaque : <strong id="attack"></strong> Attaque Magique : <strong id="attackMag"></strong>' +
                ' Défense : <strong id="defense"></strong><br>' +
                '<strong id="waiting">0</strong> secondes avant votre prochaine action<br>'+
                '<strong id="msg"></strong><br>'+

                '</div></li><li><div id="monster" class="panel">Monstre<br>'+
                    'Nom : <strong id="nomMonster"></strong><br>' +
                    'Description :<ul id="descr"></ul><br>' +
                    'Vie : <strong id="lifeMonster"></strong>/<strong id="lifeMaxMonster"></strong><br>' +
                    'Energies : <strong id="energiesMonster">0</strong>/<strong id="energiesMaxMonster">0</strong><br>' +
                    'Lvl : <strong id="lvlMonster"></strong><br>' +
                    'Attaque : <strong id="attackMonster"></strong> Défense : <strong id="defenseMonster"></strong> ' +
                    'Fuite : <strong id="escapeMonster"></strong><br>' +
                    '<strong id="waitingMonster"></strong> secondes avant la prochaine action.<br>' +
                    '<strong id="msgMonster"></strong><br></div>'+
                    '</div></li>' +
            '<br><br>' +
            '<div id="link"><a id="attack" href="'+urlGame+'/fight/attack">Attaque</a> <a href="'+urlGame+'/fight/defense">Défense</a>' +
            ' <a href="'+urlGame+'/fight/escape">Fuite</a></div>');

        //Init info monster
        $.ajax(url)
            .done(function(data, text, response){
                var result = JSON.parse(response.responseText);
                console.log(result);
                $("#nomMonster").html(result.name);
                $("#descr").html(result.description);
                $("#lifeMonster").html(result.life);
                $("#lifeMaxMonster").html(result.life);
                $("#lvlMonster").html(result.lvl);
                $("#attackMonster").html(result.attack);
                $("#defenseMonster").html(result.defense);
                $("#escapeMonster").html(result.escape);
                $("#waitingMonster").html(result.waiting);
            })
            .fail(function(data, text, response){
            })

        $.ajax(urlGame+"/fight/infoCharacter")
            .done(function(data, text, response){
                var result = JSON.parse(response.responseText);
                $("#avatar").html('<img src="'+avatar+'.png"/>');
                $("#nom").html(result.pseudo);
                $("#life").html(result.life);
                $("#lifeMax").html(result.lifeMax);
                $("#energies").html(result.energies);
                $("#energiesMax").html(result.energiesMax);
                $("#lvl").html(result.lvl);
                $("#attack").html(result.attack);
                $("#attackMag").html(result.attackMag);
                $("#defense").html(result.defense);
                $("#waiting").html(result.waiting);
            })
            .fail(function(data, text, response){
            })
    });

    $("#page").on('click', '#attack', function(e){
        e.preventDefault();

        var $a = $(this);
        var url = $a.attr('href');
        console.log(url);
        $.ajax(url)
            .done(function(data, text, response){
                clearTimeout(wait);
                var result = JSON.parse(response.responseText);
                $("#msg").html("Vous avez enlevé " + result.damage + " point de vie au monstre !");
                $("#waiting").html(result.waiting);
                $("#lifeMonster").html(result.lifeMonster);
                $("#life").html(result.life);
                afficheActionMonster(result.damageByMonster);
                boucleWaiting();
                console.log(response.responseText);
            })
            .fail(function(data, text, response){
                clearTimeout(wait);
                var result = JSON.parse(data.responseText);
                if(result.type == 1) {
                    $("#msg").html(result.msg);
                    $("#waiting").html(result.waiting);
                    boucleWaiting();
                    $("#life").html(result.life);
                    console.log("reste a attendre " + result.waiting);
                    afficheActionMonster(result.damageByMonster);
                }
                else if(result.type == 2) {
                    if(result.object.name == undefined)
                        object = result.object;
                    else
                        object = "Vous avez drop "+result.object.name+" sur le monstre !<br>";
                    $("#page").html('<h1>'+result.msg+'</h1><br>' +
                                    'Vous avez gagné '+ result.xp + ' xp !<br>'+
                                    object +
                                    '<a id="backMap" href="'+urlGame+'/map">Retour</a>');
                    $("#lifeMonster").html(0);
                    $("#link").html('<a id="backMap" href="'+urlGame+'/map">Retour</a>');
                    boucleWaiting();
                }
                else if(result.type == 3) {
                    $("#page").html('<h1>Vous êtes morts !</h1><br><a id="backMap" href="'+urlGame+'/map">Retour</a>');

                }
            })
    });

    var wait;
    function boucleWaiting(){
        console.log($("#waiting").html());
        if($("#waiting").html() == 0){
            $("#msg").html("Vous êtes prêt !");
        }
        else {
            var seconde = $("#waiting").html();
            seconde--;
            $("#waiting").html(seconde);
            wait = setTimeout(boucleWaiting, 1000);
        }
    }
    var waitMonster;
    function boucleWaitingMonster(){
        console.log("wait monster : "+$("#waitingMonster").html());
        if($("#waitingMonster").html() == 0){
            $("#msgMonster").html("Le monstre est prêt à attaquer !");
        }
        else {
            var seconde = $("#waitingMonster").html();
            seconde--;
            $("#waitingMonster").html(seconde);
            waitMonster = setTimeout(boucleWaitingMonster, 1000);
        }
    }

    function afficheActionMonster(damage){
        $("#msgMonster").html("");
        $.each(damage, function(index, value){
           console.log('Monstre Damage '+value);
            $("#msgMonster").append('Le monstre vous a enlevé ' + value + ' point de vie !<br>');
        });
    }

})(jQuery);