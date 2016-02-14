(function($) {

    $('#addStat').on('click', "#add", function (e) {
        e.preventDefault();

        var $a = $(this);
        var url = $a.attr('href');

        console.log(url);
        var actuel = $("#"+url).html();
        actuel++;
        $("#"+url).html(actuel);
        var stats = $("#stats").html();
        stats--;
        $("#stats").html(stats);
    });

    $('#sauv').on('click', function(e) {
        e.preventDefault();
        var test = {
            vitality: $("#vitality").html(),
            strength: $("#strength").html(),
            speed: $("#speed").html(),
            endurance: $("#endurance").html(),
            agility: $("#agility").html(),
            energy: $("#energy").html(),
            intelligence: $("#intelligence").html(),
            resistance: $("#resistance").html(),
        }

        var json = JSON.stringify(test);
        var $a = $(this);
        var url = $a.attr('href');
        $.post(url, {
            test: json
        },
        function(data, status){
             $("#msg").html(data);
        });
    });

})(jQuery);