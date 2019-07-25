/*JavaScript Section for the PopUp*/

$(document).ready(function () {

	$(document).on("click", "#map", function (event) {
		var text = $(event.target).attr("class");

		var modal = document.getElementById("popup-" + text);
		modal.style.display = "block";

		// When the user clicks on <span> (x), close the popup
		$(".close-button").on("click", function () {
			modal.style.display = "none";
		});

		// When the user clicks anywhere outside of the popup, close it
		window.onclick = function (event) {
			if (event.target === modal) {
				modal.style.display = "none";
			}
		};

		//Closes the PopUp on pressing the ESC key
		$(document).keydown(function (e) {
			// ESCAPE key pressed
			if (e.keyCode === 27) {
				modal.style.display = "none";
			}
		});
	});
});


//End of PopUp Section

//Section for the legends
$(document).ready(function () {
	$('.show-all').change(function () {
		if (this.checked) {
			$('ellipse').show();
		} else {
			$('ellipse').hide();
		}
	});

	$('.legends input').change(function () {
		var current = $(this).attr('class');
		if (current !== 'show-all') {
			var currentId = "#" + current + "Layer ellipse";
			if (this.checked) {
				$(currentId).show();
			} else {
				$(currentId).hide();
			}
		}
	});
});

//End of the legends section