$().ready(function(){	
	$('.flash_box, .message').css({
		'left': (document.body.clientWidth-$('.flash_box').width())/2,
		'background-color':'#991717'
	});
	$('.flash_box, .message').delay(3000).slideUp();
});
