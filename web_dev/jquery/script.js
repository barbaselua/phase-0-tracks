jQuery(document).ready (function() {
	jQuery("#list").hide();
	jQuery("#reveal").click (function() {
		jQuery("#list").slideToggle();
	});
	jQuery("#like").click(function() {
		jQuery("#lizard-photo").hide();
		alert("Don't like lizards?")
	});
	jQuery("#dislike").click(function () {
		jQuery("#lizard-photo").show();
		alert("I knew you would come around!")
	});
});