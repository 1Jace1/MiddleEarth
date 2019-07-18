$(document).ready(function () {
    var map = $('#map-wrapper');
    var point = $('<a href="#" class="map-point open" id="open-popup"></a>');
    var x = 400;
    var y = 500;

    point.css({
        left: x + "px",
        top: y + "px"
    });
    point.appendTo(map);
});

/*JavaScript Section for the PopUp*/

$(document).ready(function () {
	var modal = document.getElementById("popup");

	//Opens the PopUp
	$("#open-popup").on('click', function (e) {
		e.preventDefault();
		modal.style.display = "block";
	});

	// When the user clicks on <span> (x), close the popup
	$(".close").on('click', function () {
		modal.style.display = "none";
	});

	// When the user clicks anywhere outside of the popup, close it
	window.onclick = function (event) {
		if (event.target === modal) {
			modal.style.display = "none";
		}
	};
});

//Closes the PopUp on pressing the ESC key
$(document).keydown(function (e) {
	var popup = document.getElementById("popup");
	// ESCAPE key pressed
	if (e.keyCode === 27) {
		popup.style.display = "none";
	}
});

//End of PopUp Section
$(document).ready(function() {
	$('.forest').change(function () {
		if (this.checked) {
			$('#forestLayer ellipse').hide();
		} else {
			$('#forestLayer ellipse').show();
		}
	});
});