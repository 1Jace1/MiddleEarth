var searchResult = [];

//Loads xml
$(document).ready(function () {
	$.ajax({
		url: '/../Content/XmlFiles/search.xml',
		type: 'GET',
		dataType: 'xml',
		success: function (data) {
			$('place', data).each(function () {
				var temp = this.innerHTML;
				searchResult.push(temp);
			});
		}
	});
});

//Search function
$(".search-box").autocomplete({
	source: searchResult,
	messages: {
		noResults: '',
		results: function () { }
	},
	focus: function (event, ui) {
		$(".ui-helper-hidden-accessible").hide();
		event.preventDefault();
	}
});

$(".search-box").on('keyup', function (e) {
		if (e.keyCode === 13) {
			e.preventDefault();
			openAndClosePopUp($(this).val());
		}
});

$('#search-button').on('click', function(e) {
	e.preventDefault();
	var value = $(".search-box").val();
	openAndClosePopUp(value);
});

function openAndClosePopUp(popup) {
	var name = popup.split(' ').join('-').toLowerCase();
	var modal = document.getElementById("popup-" + name);
	var point = document.getElementsByClassName(name);
	var color = point[0].style.fill;
	var currentDisplay = point[0].style.display;
	point[0].style.display = "block";
	point[0].style.fill = "red";
	modal.style.display = "block";

	$(".close").on('click', function () {
		modal.style.display = "none";
		point[0].style.display = currentDisplay;
		point[0].style.fill = color;
	});

	// When the user clicks anywhere outside of the popup, close it
	window.onclick = function (event) {
		if (event.target === modal) {
			modal.style.display = "none";
			point[0].style.display = currentDisplay;
			point[0].style.fill = color;
		}
	};

	//Closes the PopUp on pressing the ESC key
	$(document).keydown(function (e) {
		// ESCAPE key pressed
		if (e.keyCode === 27) {
			modal.style.display = "none";
			point[0].style.display = currentDisplay;
			point[0].style.fill = color;
		}
	});
}

//Removes unesseseceraly rendered element
$(document).ready(function () {
	$('.ui-helper-hidden-accessible').remove();
});