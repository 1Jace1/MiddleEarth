$(document).ready(function () {
    var map = $('#map-wrapper');
    var point = $('<a href="#" class="map-point open"></a>');
    var x = 400;
    var y = 500;

    point.css({
        left: x + "px",
        top: y + "px"
    });
    point.appendTo(map);
});

/*JavaScript Section for the PopUp*/

//Opens the PopUp
$(document).ready(function () {
    $("a.map-point.open").on("click", function (e) {
        e.preventDefault();
        $(".popup, .popup-content").addClass("active");
    });
});


//Closes the PopUp
$(".close, .popup").on("click", function (e) {
    $(".popup, .popup-content").removeClass("active");
});

//Closes the PopUp on pressing the ESC key

$(document).keydown(function (e) {
    var popup = $(".popup, .popup-content");
    // ESCAPE key pressed
    if (e.keyCode === 27) {
        popup.removeClass("active");
    }
});

/*End of JavaScript Section for the PopUp*/