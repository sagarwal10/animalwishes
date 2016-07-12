$(document).ready(function() {
    $('#clearall').change(function() {
        if($(this).is(":checked")) {
            $('.animalselector').prop("checked", false);
	    $("[class^='animal-']").hide();
	    $(this).prop("checked", false);
        }
    });

    $('#clearall-dropdown').change(function() {
        if($(this).is(":checked")) {
            $('.animalselector').prop("checked", false);
	    $("[class^='animal-']").hide();
	    $(this).prop("checked", false);
            $('#animalselectdropdown').dropdown('toggle');
        }
    });
    $('.animalselector').change(function() {
	if ($(this).is(":checked")) {
            $(('.animal-').concat($(this).val())).show();
            $(('#animalselector-dropdown-').concat($(this).val())).prop("checked", true);
            $(('#animalselector-sidebar-').concat($(this).val())).prop("checked", true);
            $('#animalselectdropdown').dropdown('toggle');
	    // $(this).prop("checked", true);
        } else {
            $(('.animal-').concat($(this).val())).hide();
            $(('#animalselector-dropdown-').concat($(this).val())).prop("checked", false);
            $(('#animalselector-sidebar-').concat($(this).val())).prop("checked", false);
            $('#animalselectdropdown').dropdown('toggle');
	    // $(this).prop("checked", false);
	}    
    });

    // Donate menu item takes you to instructions in the index page
    $('#donateButton').click(function() {
        $('html, body').animate({
            scrollTop: $("#donation_section").offset().top
        }, 2000, function () {
         $("#donateInstructions").animate({zoom: 1.3, opacity: 0.25}, 1000);
         $("#donateInstructions").animate({zoom: 1, opacity: 1}, 1000);
	});
    });
});
