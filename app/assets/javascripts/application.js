// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require_tree .




$(function(){

	$("#contentdiv").animate({
		"opacity": 1
	}); //end animate
	var delayValue = 200; 

	$(".field").addClass("cf");

	$("ul.playlist_container li").each(function(){

		$(this).delay(delayValue).animate({
			"opacity": 1
		}, 100);//end animate
		delayValue += 100;
	})//end playlist for loop

	$(".party_header h1").click(function(){
		$(".party_description").slideToggle();

	});//end party header click function


});//enx fucntion ready









