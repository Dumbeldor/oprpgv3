(function($) {

    $('#action').on('click', '#fightMonster', function (e) {

        boucleWaiting();

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
                'Attaque : <strong id="attack"></strong> Attaque Magique : <strong id="attackMag"></strong> Défense : <strong id="defense"></strong>'+

                '</div></li><li><div id="monster" class="panel">Monstre<br>'+
                    'Nom : <strong id="nomMonster"></strong><br>' +
                    'Description :<ul id="descr"></ul><br>' +
                    'Vie : <strong id="lifeMonster"></strong>/<strong id="lifeMaxMonster"></strong><br>' +
                    'Energies : <strong id="energiesMonster">0</strong>/<strong id="energiesMaxMonster">0</strong><br>' +
                    'Lvl : <strong id="lvlMonster"></strong><br>' +
                    'Attaque : <strong id="attackMonster"></strong> Défense : <strong id="defenseMonster"></strong> Fuite : <strong id="escapeMonster"></strong>'+
                    '</div></li>' +
            '<br><br>' +
            '<strong id="msg"></strong><br>'+
            '<strong id="waiting">0</strong> secondes avant votre prochaine action<br><br>' +
            '<div id="link"><a id="attack" href="'+urlGame+'/fight/attack">Attaque</a> <a href="'+urlGame+'/fight/defense">Défense</a>' +
            ' <a href="'+urlGame+'/fight/escape">Fuite</a></div>');

        //Init info monster
        $.ajax(url)
            .done(function(data, text, response){
                var result = JSON.parse(response.responseText);
                $("#nomMonster").html(result.name);
                $("#descr").html(result.description);
                $("#lifeMonster").html(result.life);
                $("#lifeMaxMonster").html(result.life);
                $("#lvlMonster").html(result.lvl);
                $("#attackMonster").html(result.attack);
                $("#defenseMonster").html(result.defense);
                $("#escapeMonster").html(result.escape);
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
                $("#msg").html("Vous venez de tapez le mob !");
                $("#waiting").html(result.waiting);
                $("#lifeMonster").html(result.lifeMonster);
                boucleWaiting();
                console.log(response.responseText);
            })
            .fail(function(data, text, response){
                clearTimeout(wait);
                var result = JSON.parse(data.responseText);
                $("#msg").html(result.msg);
                if(result.type == 1) {
                    $("#waiting").html(result.waiting);
                    console.log("reste a attendre " + result.waiting);
                    boucleWaiting();
                }
                else if(result.type == 2) {
                    $("#msg").html(result.msg);
                    $("#lifeMonster").html(0);
                    $("#link").html('<a id="backMap" href="'+urlGame+'/map">Retour</a>');
                    boucleWaiting();
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

})(jQuery);