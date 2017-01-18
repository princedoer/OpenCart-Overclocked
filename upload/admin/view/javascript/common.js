/*
 Common v1.0.2 | @villagedefrance | Overclocked Edition | GNU GPL3 Licensed
 ---------------------------------------------------------------------------
 Common.js file for development. Use minified version for production.
 ---------------------------------------------------------------------------
*/
function getURLVar(key) {
	var value = [];
	var query = String(document.location).split('?');
	if (query[1]) {
		var part = query[1].split('&');
		for (i = 0; i < part.length; i++) {
			var data = part[i].split('=');
			if (data[0] && data[1]) {
				value[data[0]] = data[1];
			}
		}
		if (value[key]) {
			return value[key];
		} else {
			return '';
		}
	}
}

// Menu Route
$(document).ready(function() {
	route = getURLVar('route');
	if (!route) {
		$('#dashboard').addClass('selected');
	} else {
		part = route.split('/');
		url = part[0];
		if (part[1]) {
			url += '/' + part[1];
		}
		$('a[href*=\'' + url + '\']').parents('li[id]').addClass('selected');
	}
	$('#menu ul li').on('click', function() {
		$(this).addClass('hover');
	});
	$('#menu ul li').on('mouseout', function() {
		$(this).removeClass('hover');
	});
});

// Save and Continue
function apply() {
	$('#form').append('<input type="hidden" id="apply" name="apply" value="1" />');
	$('#form').submit();
}

// Success Remove Onclick
$(document).ready(function() {
	$('.success, .tooltip').live('click', function() {
		$(this).fadeOut('slow');
	});
});
