jQuery(document).ready (function() {
	jQuery("#list").hide();
	jQuery("#reveal").click (function() {
		jQuery("#list").slideToggle();
	});
});