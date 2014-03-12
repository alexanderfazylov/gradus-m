$('html').click(function () {
    closeInfoPanel();
});
function removeHash() {
    var scrollV, scrollH, loc = window.location;
    if ("pushState" in history)
        history.pushState("", document.title, loc.pathname + loc.search);
    else {
        // Prevent scrolling by storing the page's current scroll offset
        scrollV = document.body.scrollTop;
        scrollH = document.body.scrollLeft;

        loc.hash = "";

        // Restore the scroll offset, should be flicker free
        document.body.scrollTop = scrollV;
        document.body.scrollLeft = scrollH;
    }
}
function openCallback() {

    if (location.hash == '#callback') {
        $('.modal').modal('show');
    }

}
var button = {
    disable: function ($el) {
        $el.addClass('loading');
        $el.attr('disabled', 'disabled');
    },
    undisable: function ($el) {
        $el.removeClass('loading');
        $el.removeAttr('disabled');
    }
};
$.fn.ajaxFormSubmit = function (success, complete, validator) {


    var data, url, $form, $element;

    //=============================//

    $element = $(this);
    $form = $element.parents('form');

    if ($form.length == 0) {
        $form = $('#form-' + $element.attr('id'));
        if ($form.length == 0) {
            alert('Ошибка в html. Не найдено формы.');
            return false;
        }
    }


    data = $form.serialize();
    url = $form.attr('action')


    button.disable($element);

    $.ajax({
        url: url,
        type: 'POST',
        dataType: 'json',
        data: data,
        success: function (data) {

            if (data != null)
                if (data.status === 'success') {

                    if (typeof success !== "undefined") {
                        success(data);
                    }

                } else {

                    if (typeof validator !== "undefined") {
                        validator(data);
                    } else {
                        for (key in data.message) {
                            alert(data.message[key]);
                        }
                    }
                }

        },
        complete: function () {
            button.undisable($element);
            if (typeof complete !== "undefined") {
                complete();
            }
        },
        error: function () {
            button.undisable($element);
            alert("Непредвиденная ошибка");
        }

    });

    return $element;

};

$(function () {
    $(".vendor").find("span").hide().end().hover(function () {
        $(this).find("span").stop().fadeIn();
    }, function () {
        $(this).find("span").stop().fadeOut();
    });
    // Запускаем слайдшоу
    theRotator();
    $("#all-site-button").click(function () {
        takeActionSiteMenu();
    });
    $("#full-menu a").click(function () {
        takeActionSiteMenu();
    });
    $('#full-menu a').click(function () {
        closeInfoPanel();
    });
    $('.callback-link').click(function () {

    });
    $('#callback').click(function () {
        var success = function () {
            $('.modal').hide();
            $form = $('.modal form');
            $form.find('[type="text"]').val('');
            $form.find('textarea').val('');
        };

        var complete = function () {
        };

        var validator = function (data) {
            $('.has-error').removeClass('has-error');
            $('.error_msg').remove();
            //clean
            $.each(data.messages, function (attribute, messages) {
                $.each(messages, function (i, msg) {
                    $row = $('#Callback_' + attribute)
                        .parents('.row')
                        .addClass('has-error');
                    $row.find('.right-cell').append("<div class='error_msg'>" + msg + "</div>");
                });
            });
        };

        $(this).ajaxFormSubmit(success, complete, validator);
    });


    openCallback();
    History.Adapter.bind(window, 'popstate', function () {
        openCallback();
    });

    $('.modal').on('hidden', function () {
        removeHash();
    });


});

function theRotator() {
    // Устанавливаем прозрачность всех картинок в 0
    $('div#rotator ul li').css({
        opacity: 0.0
    });

    // Берем первую картинку и показываем ее (по пути включаем полную видимость)
    $('div#rotator ul li:first').css({
        opacity: 1.0
    });

    // Вызываем функцию rotate для запуска слайдшоу, 5000 = смена картинок происходит раз в 5 секунд
    setInterval('rotate()', 5000);
}

function rotate() {
    // Берем первую картинку
    var current = ($('div#rotator ul li.show') ? $('div#rotator ul li.show') : $('div#rotator ul li:first'));

    // Берем следующую картинку, когда дойдем до последней начинаем с начала
    var next = ((current.next().length) ? ((current.next().hasClass('show')) ? $('div#rotator ul li:first') : current.next()) : $('div#rotator ul li:first'));

    // Расскомментируйте, чтобы показвать картинки в случайном порядке
    // var sibs = current.siblings();
    // var rndNum = Math.floor(Math.random() * sibs.length );
    // var next = $( sibs[ rndNum ] );

    // Подключаем эффект растворения/затухания для показа картинок, css-класс show имеет больший z-index
    next.css({
        opacity: 0.0
    })
        .addClass('show')
        .animate({
            opacity: 1.0
        }, 1000);

    // Прячем текущую картинку
    current.animate({
        opacity: 0.0
    }, 1000)
        .removeClass('show');
}
function stopPrepagenation(e) {
    e.stopPropagation();
}

function closeInfoPanel() {
    if ($("#all-site-menu").is(':visible')) {
        $("#all-site-menu").fadeOut();
        $("#all-site-button").toggleClass('active');
    }
}
function openInfoPanel() {
    $("#all-site-menu").fadeIn();
    $("#all-site-button").toggleClass('active');
}
function takeActionSiteMenu() {
    if ($("#all-site-menu").is(':visible'))
        closeInfoPanel();
    else
        openInfoPanel();
}
function loginValedate() {
    alert('asd');
}

