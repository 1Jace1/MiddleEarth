$(document).ready(function () {
	var modal = document.getElementById("contact-popup");

	if (modal !== null) {
		//öffnet das kontaktpopup form
		$(".contact-form").on("click", function (e) {
			e.preventDefault();
			modal.style.display = "block";
		});

		window.onclick = function (event) {
			if (event.target === modal) {
				modal.style.display = "none";
			}
		};

		$("#contact-popup .close-button").on("click", function () {
			modal.style.display = "none";
		});

		//Closes the PopUp on pressing the ESC key
		$(document).keydown(function (e) {
			// ESCAPE key pressed
			if (e.keyCode === 27) {
				modal.style.display = "none";
			}
		});
	}
});