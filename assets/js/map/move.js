(function($){

    $('#page').on('click', '#urlMove', function(e){

        e.preventDefault();

        var $a = $(this);
        var url = $a.attr('href');

        $.ajax(url)
            .done(function(data, text, response){
                var maps = JSON.parse(response.responseText);
                var x = maps.uX;
                var y = maps.uY;

                constructMap(maps, x, y);
            })
            .fail(function(data, text, reponse){
                alert("error");
            })
    });

    function constructMap(maps, x, y) {
        var imageUrl = urlImgMap + "/" + maps.map.id + ".png";
        $html = '<img src="'+ imageUrl +'" alt="aa" title="test"></img>';
        $("#imageMap").html($html);
        //$html.hide().fadeIn();

        document.getElementById("coordonnee").innerHTML = x + ":" + y + " Map " + maps.map.name;

        afficherAction(maps.map.type);

        console.log(maps.map.name + "X " + x + "y " + y);
        uX = x;
        uY = y;
        mapTotal = "";
        current_y = -5000;
        xAff = 0;
        yAff = 0;
        width = 0;
        maps.maps.forEach(afficherMap);
        $mapTotal = $(mapTotal);
        $("#mapJs").html($mapTotal);
        $mapTotal.hide().fadeIn();
        $mapTotal = "";
        mapTotal = "";
        current_y = -5000;
        xAff = 0;
        yAff = 0;
        width = 0;
    }


    function afficherAction(type) {
        var msg = "";
        if (type == 2) {//In island
            msg = "<a href=\"" + urlGame + "/map/fight/\">Combattre</a><br>" +
                "<a href=\"" + urlGame + "/map/search/\">Fouiller</a>";
        }
        if (type == 1) {
            msg = "<a href=\"" + urlGame + "/map/fight/\">Combattre</a><br>" +
            "<a href=\"" + urlGame + "/map/search/\">Pêcher</a>";
        }
        if (type == 3) {
            msg = "<a href=\"" + urlGame + "/map/enterCity/\">Rentrer sur l'ile</a><br>";
        }
        if (type == 4) {
            msg = "<a href=\"" + urlGame + "/map/leaveIsland/\">Sortir de l'ile</a><br>";
        }
        if (type == 5) {
            msg = "<a href=\"" + urlGame + "/training/\">Entrer dans la salle d'entrainement</a><br>";
        }
        if (type == 6 || type == 7 || type == 8 || type == 9) {
            msg = "<a href=\"" + urlGame + "/shop/\">Entrer dans le magasin</a><br>";
        }
        if (type == 10) {
            msg = "<a href=\"" + urlGame + "/hopital/\">Rentrer dans l'hopital</a><br>";
        }
        if (type ==  11) {
            msg = "<a href=\"" + urlGame + "/trainingCenter/\">Rentrer dans le centre</a><br>";
        }
        document.getElementById("action").innerHTML = msg;
    }

    function afficherMap(element) {
        if(element.y != current_y){
            xAff = 0;
            yAff++;
            current_y = element.y;
        }
        xAff++;

        iX = (xAff * 80) + (width / 2) - 40;
        iY = (yAff * 80) + (width / 2) - 40;

        mapTotal += "<div class=\"case\" style=\"top:" + iY + "px;left:" + iX + "px;";
        mapTotal += "background-image: url('"+ urlImgMap + "/mini/" + element.id + ".png');\">";


        diffX = Math.abs(element.x - uX);
        diffY = Math.abs(element.y - uY);
        yDiff = element.y - uY;
        xDiff = element.x - uX;

        if(element.x == uX && element.y == uY)
            mapTotal += "<br /><img src=\""+ urlImgMap + "/character/character.png\">";
        else if(diffX+diffY <= moveCase) {
            mapTotal += "<br> <a id=\"urlMove\" href=\""+ urlGame + "/map/deplaceJSON/" + element.x + "/" + element.y +"\">";
            if (yDiff == -1)
                mapTotal += "<img id=\"flecheTop\" src=\"" + urlImgMap + "/character/top.png\">";
            else if (yDiff == 1)
                mapTotal += "<img id=\"bottom\" src=\"" + urlImgMap + "/character/bottom.png\">";
            else if (xDiff == -1)
                mapTotal += "<img id=\"left\" src=\"" + urlImgMap + "/character/left.png\">";
            else if (xDiff == 1)
                mapTotal += "<img id=\"right\" src=\"" + urlImgMap + "/character/right.png\">";
            mapTotal += "</a>";
        }

        mapTotal += "</div>";
    }



})(jQuery);




var mapTotal = "";
var current_y = -5000;
var xAff = 0;
var yAff = 0;
var width = 0;
