(function($) {
    $.fn.expandAll = function(options) {
        var defaults = {
            expTxt : '[Expand All]',
            cllpsTxt : '[Collapse All]',
            cllpsEl : '.collapse', // the collapsible element
            trigger : '.expand', // the elements that contain the trigger of the toggle effect on the individual collapsible sections
            ref : '.expand', // the switch 'Expand All/Collapse All' is inserted before the 'ref'
            showMethod : 'show',
            hideMethod : 'hide',
            state : 'hidden', // the collapsible elements are hidden by default
            speed : 0,
            oneSwitch : true
        };
        var o = $.extend({}, defaults, options);

        var toggleTxt = o.expTxt;
        if (o.state == 'hidden') {
            $(this).find(o.cllpsEl + ':not(.shown)').hide()
                    .prev().find(o.trigger + ' > a.open').removeClass('open');
        } else {
            toggleTxt = o.cllpsTxt;
        }

        return this.each(function(index) {
            var referent, $cllps, $tr;
            if (o.ref) {
                var container;
                if (this.id.length) {
                    container = '#' + this.id;
                } else if (this.className.length) {
                    container = this.tagName.toLowerCase() + '.' + this.className.split(' ').join('.');
                } else {container = this.tagName.toLowerCase();}
                referent = $(this).find("'" + o.ref + ":first'");
                $cllps = $(this).closest(container).find(o.cllpsEl);
                $tr = $(this).closest(container).find(o.trigger + ' > a');
            } else {
                referent = $(this);
                $cllps = $(this).find(o.cllpsEl);
                $tr = $(this).find(o.trigger + ' > a');
            }
            if (o.oneSwitch) {
                referent.before('<p class="switch"><a href="#">' + toggleTxt + '</a></p>');
            } else {
                referent.before('<p class="switch"><a href="#">' + o.expTxt + '</a>&nbsp;|&nbsp;<a href="#">' + o.cllpsTxt + '</a></p>');
            }

            referent.prev('p').find('a').click(function() {
                if ($(this).text() == o.expTxt) {
                    if (o.oneSwitch) {$(this).text(o.cllpsTxt);}
                    $tr.addClass('open');
                    $cllps[o.showMethod](o.speed);
                } else {
                    if (o.oneSwitch) {$(this).text(o.expTxt);}
                    $tr.removeClass('open');
                    $cllps[o.hideMethod](o.speed);
                }
                return false;
            });
        });};
    /* ---------------------------------------------
     Toggler
     http://www.adipalaz.com/experiments/jquery/expand.html
     When using this script, please keep the above url intact.
     ------------------------------------------------ */
    $.fn.toggler = function(options) {
        var defaults = {
            cllpsEl : 'div.collapse',
            method : 'slideToggle',
            speed : 'slow',
            container : '', //the common container of all groups with collapsible content (optional)
            initShow : '.shown' //the initially expanded sections (optional)
        };
        var o = $.extend({}, defaults, options);

        $(this).wrapInner('<a style="display:block" href="#" title="Expand/Collapse" />');
        if (o.initShow) {$(o.initShow).addClass('shown');}
        $(this).next(o.cllpsEl + ':not(.shown)').hide();
        return this.each(function() {
            var container;
            (o.container) ? container = o.container : container = 'div';
            if ($(this).next('div.shown').length) {
                $(this).closest(container).find('.shown').show()
                        .prev().find('a').addClass('open');
            }
            $(this).click(function() {
                $(this).find('a').toggleClass('open').end()
                        .next(o.cllpsEl)[o.method](o.speed);
                return false;
            });
        });};
    $.fn.toggleHeight = function(speed, easing, callback) {
        return this.animate({height: 'toggle'}, speed, easing, callback);
    };
    //http://www.learningjquery.com/2008/02/simple-effects-plugins:
    $.fn.fadeToggle = function(speed, easing, callback) {
        return this.animate({opacity: 'toggle'}, speed, easing, callback);
    };
    $.fn.slideFadeToggle = function(speed, easing, callback) {
        return this.animate({opacity: 'toggle', height: 'toggle'}, speed, easing, callback);
    };
})(jQuery);

function handleCharging() {
    var cfsDiv = document.getElementById("cfsDiv");
    var cpsDiv = document.getElementById("cpsDiv");
    var cfs = document.getElementById("cfs");
    var cfc_rb = document.getElementById("cfc_rb");
    var cps = document.getElementById("cps");

    var elementRadio2 = document.getElementById("subRegRadioGroup_2");
    var elementLabel2 = document.getElementById("subRegLabel_2");
    if (elementLabel2 != null) {
        elementRadio2.style.display = "none";
        elementLabel2.style.display = "none";
    }

    if (cfsDiv != null) {
        cfsDiv.style.display = "block";
    }

    if (cpsDiv != null) {
        cpsDiv.style.display = "block";
    }

    if (cfs != null && cfs.checked) {
            cfsDiv.style.display = "block";
    }

    if (cfc_rb != null && cfc_rb.checked) {
        cfsDiv.style.display = "none";
    }

    if (cps != null && cps.checked) {
        cpsDiv.style.display = "block";

    } else if (cpsDiv != null)
        cpsDiv.style.display = "none";
}

function disableChargingForSubscription() {
    var cps = document.getElementById("cps");
    var subCategoryRequired = document.getElementById("subCategoryRequired");
    var chargingPerMsg = document.getElementById("cpm");
    var cpsDiv = document.getElementById("cpsDiv");

    if(subCategoryRequired != null && subCategoryRequired.checked) {
        cps.disabled = "true";
        cps.checked = false;
        chargingPerMsg.checked = true;
        chargingPerMsg.disabled = true;
        cpsDiv.style.display = "none";
    } else if (cps != null) {
        cps.disabled = false;
        chargingPerMsg.disabled = false;
        if (!cps.checked) {
            cpsDiv.style.display = "none";
        }
    }
}

function loadChargingSettings() {
    handleCharging();
    disableChargingForSubscription();
}