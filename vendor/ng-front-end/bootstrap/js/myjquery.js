$(document).ready(function() {

	$('#cloud').click(function() {
		console.log("It worked!");
		// $('.link-wrapper').hide();
		
		if($('.link-wrapper').is(':visible')) {
    	$('.link-wrapper').hide();
		} else {
			$('.link-wrapper').show();
		}

	});

});