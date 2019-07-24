var searchResult = [];
$(document).on('keyup', '.search-box', function () {
	var keyvalue = $(".search-box").val();

	var xhttp;
	xhttp = new XMLHttpRequest();
	xhttp.onreadystatechange = function () {
		if (this.readyState === 4 && this.status === 200) {
			searchResult = [];
			myFunction(this, keyvalue);
		}
	};
	xhttp.open("GET", "../../Content/XmlFiles/search.xml", true);
	xhttp.send();
});

function myFunction(xml, key) {
	var x, i, xmlDoc;
	xmlDoc = xml.responseXML;
	x = xmlDoc.getElementsByTagName("place");
	var counter = 0;
	for (i = 0; i < x.length; i++) {
		var value = x[i].childNodes[0].nodeValue.trim();
		var pattern = value.substring(0, key.length);
		if (key.toUpperCase() === pattern.toUpperCase() && counter < 10) {
			searchResult.push(value);
			counter++;
		}
	}
	$(".search-box").autocomplete({
		source: searchResult
	});
}

//$(function () {
//	$(".search-box").autocomplete({
//		source: searchResult
//	});
//});