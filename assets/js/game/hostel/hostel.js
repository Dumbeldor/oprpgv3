(function($) {

    $('#sleep').on('click', function (e) {
        e.preventDefault();

        var $a = $(this);
        var url = $a.attr('href');

        $.ajax(url)
            .done(function(data, text, response){
                $("#msg").html(response.responseText);
            })
            .fail(function(data, text, response){
                $("#msg").html(data.responseText);
            })
    });

})(jQuery);