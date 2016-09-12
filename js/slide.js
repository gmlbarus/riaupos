$(document).ready(function() {
	
	// Expand Panel
	$(".login #toogle").click(function(){
		$("div#panel").slideDown("slow");
	
	});	
	
	// Collapse Panel
	$(".login #close").click(function(){
		$("div#panel").slideUp("slow");	
	});		
	
	// Switch buttons from "Log In | Register" to "Close Panel" on click
	$(".login a").click(function () {
		$(".login a").toggle();
	});		
		
});