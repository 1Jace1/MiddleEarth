$(document).ready(function () {
    var modal = document.getElementById("contact-popup");

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

});