(function($) {

    $('#useTech').on('click', function (e) {
        e.preventDefault();

        var $a = $(this);
        var url = $a.attr('href');

        $.ajax(url)
            .done(function(data, text, response){
                var msg = JSON.parse(response.responseText);
                $mess = "Vous utilisez la technique "+msg.name+" pour vous redonner "+msg.addLife+" vie vous avez maintenant "
                        +msg.life+"/"+msg.maxLife+" vie et "+msg.energies+"/"+msg.maxEnergies+" energies";
                $("#msg").html($mess);
                $("#life").html(msg.life);
                $("#energies").html(msg.energies);
            })
            .fail(function(data, text, response){
                $("#msg").html(data.responseText);
            })
    });

})(jQuery);