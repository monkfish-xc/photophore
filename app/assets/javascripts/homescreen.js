$(document).ready(function() {

	$('#cloud').click(function() {		
		if($('.link-wrapper').is(':visible')) {
    	$('.link-wrapper').hide();
		} else {
			$('.link-wrapper').show();
		}

	})

	$('#computer').click(function() {
		if($('.link-wrapper').is(':visible')) {
    	$('.link-wrapper').hide();
		}
	});

});