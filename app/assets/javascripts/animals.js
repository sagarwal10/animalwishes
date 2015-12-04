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
});
