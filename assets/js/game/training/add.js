(function($) {

    $('#addStat').on('click', "#add", function (e) {
        e.preventDefault();

        var $a = $(this);
        var url = $a.attr('href');

       console.log(url);
    });

})(jQuery);