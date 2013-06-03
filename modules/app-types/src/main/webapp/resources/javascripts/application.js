/**
 * The default javascript.
 *
 * Copyright 2009 hSenid Software International (Pvt) Ltd
 *
 * Author   : Hansaka Weerasingha
 */

/**
 * Swap the image.
 */
function swap_image(elmnt, src) {
    var img = $(elmnt).find('img');

    $(img).attr('src', src);
}

function restore_image(elmnt, src) {
    var img = $(elmnt).find('img');
    var inpt = $(elmnt).find('input[type=radio]');

    if (! $(inpt).attr('checked')) {
        $(img).attr('src', src);
    }
}

$(document).ready(function() {
    $("input[type=radio]").bind('click', function() {
        var p = $(this).parent().parent().parent().parent();

        $('img', p).each(function() {
            var this_src = $(this).attr('src');

            if (this_src.indexOf("_inactive") == -1) {
                var new_src = this_src.replace(".jpg", "", "gi") + "_inactive.jpg";
                $(this).attr('src', new_src);
            }
        });

        var img = $(this).parent().find('img');
        if (img != null && $(img).attr('src') != null) {
            $(img).attr('src', $(img).attr('src').replace("_inactive", "", "gi"));
        }
    });

    // For advanced configuration options
    $(".advanced_config").find('a').bind('click', function(){
        if ($("#"+$(this).attr('rel')).html() == '') {
            $("#"+$(this).attr('rel')).load($(this).attr('href')+" #dashboard_quick_press > *", function(){
                $(this).slideDown();
            });
        } else {
            $("#"+$(this).attr('rel')).slideDown();
        }

        $(this).parent().find('a').toggle();

        return false;
    });

    $("a#close").click(function () {
        $(this).hide();
        $(this).parent().find('a#open').show();
        
        $("#"+$(this).attr('rel')).slideUp();
        return false;
    });
});
