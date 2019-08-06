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
	var sizerx = point[0].getAttribute("rx");
	var sizery = point[0].getAttribute("ry");
	point[0].style.display = "block";
	point[0].style.fill = "red";
	point[0].setAttribute("rx", "20px");
	point[0].setAttribute("ry", "20px");
	modal.style.display = "block";

	$(".close-button").on('click', function () {
		modal.style.display = "none";
		setDefaultPointValues(point[0], color, currentDisplay, sizerx, sizery);
	});

	// When the user clicks anywhere outside of the popup, close it
	window.onclick = function (event) {
		if (event.target === modal) {
			modal.style.display = "none";
			setDefaultPointValues(point[0], color, currentDisplay, sizerx, sizery);
		}
	};

	//Closes the PopUp on pressing the ESC key
	$(document).keydown(function (e) {
		// ESCAPE key pressed
		if (e.keyCode === 27) {
			modal.style.display = "none";
			setDefaultPointValues(point[0], color, currentDisplay, sizerx, sizery);
		}
	});
}

function setDefaultPointValues(point, color, currentDisplay, sizerx, sizery) {
	point.style.display = currentDisplay;
	point.style.fill = color;
	point.setAttribute("rx", sizerx);
	point.setAttribute("ry", sizery);
}

//Removes unesseseceraly rendered element
$(document).ready(function () {
	$('.ui-helper-hidden-accessible').remove();
});