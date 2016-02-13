(function($) {

    $('#fouille').on('click', function (e) {
        e.preventDefault();

        var $a = $(this);
        var url = $a.attr('href');

        $.ajax(url)
            .done(function(data, text, response){
                $mess = "Vous venez de trouver " + response.responseText;
                $("#msg").html($mess);
            })
            .fail(function(data, text, response){
                $("#msg").html(data.responseText);
            })
    });

})(jQuery);