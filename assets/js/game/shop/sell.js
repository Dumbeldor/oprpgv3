(function($) {

    $('#sell').on('click', '#sellObject', function (e) {
        e.preventDefault();

        var $a = $(this);
        var url = $a.attr('href');

        $($a).parents('#object').fadeOut();

        $.ajax(url)
            .done(function(data, text, response){
                var msg = JSON.parse(response.responseText);
                $mess = "Vous venez de vendre un objet pour " + msg.price + " berrys";
                $("#msg").html($mess);
                berry = ""+msg.berry;
                $("#berry").html(berry);
            })
            .fail(function(data, text, response){
                $("#msg").html(data.responseText);
            })
    });

})(jQuery);