var mapTotal = "";
var current_y = -5000;
var xAff = 0;
var yAff = 0;
var width = 0;
function deplace(x, y) {
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function () {
        if (xhttp.readyState == 4 && xhttp.status == 200) {
            var maps = JSON.parse(xhttp.responseText);
            var imageUrl = urlImgMap + "/" + maps.map.id + ".png";
            var html = '<img src="'+ imageUrl +'" alt="aa" title="test"></img>';
            document.getElementById("imageMap").innerHTML = html;

            document.getElementById("coordonnee").innerHTML = x + ":" + y + " Map " + maps.map.name;

            afficherAction(maps.map.type);

            console.log(maps.map.name);
            uX = x;
            uY = y;
            maps.maps.forEach(afficherMap);
            document.getElementById("map").innerHTML = mapTotal;
        }
    };
    console.log(uX, uY);
    xhttp.open("GET", "http://localhost/oprpg/game/map/deplaceJSON/"+x+"/"+y, true);
    xhttp.send();
}

function afficherAction(type) {
    var msg = "";
    if (type == 2) {//In island
        msg = "<a href=\"" + urlGame + "/fight/\">Combattre</a><br>" +
            "<a href=\"" + urlGame + "/search/\">Fouiller</a>";
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
        mapTotal += "<br> <a href=\"#\">";
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

function test(idselect){
    return (document.getElementById(idselect) != null ? true : false);
}

if(test("flecheTop"))
    document.getElementById("flecheTop").addEventListener('click', function() { deplace(uX,uY-1);});
if(test("bottom"))
    document.getElementById("bottom").addEventListener('click', function() { deplace(uX,uY+1); });
if(test("left"))
    document.getElementById("left").addEventListener('click', function() { deplace(uX-1,uY-1); });
if(test("right"))
    document.getElementById("right").addEventListener('click', function() { deplace(uX+1,uY); });

document.getElementById("test").addEventListener('click', function() { deplace(uX-1,uY); });