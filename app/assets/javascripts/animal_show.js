$(document).ready(function() {
    $("#donateForm").submit(function() {
       var amount = $.trim($("#amount").val());
       if ($.isNumeric(amount) == false) {
          $("#donateFormError").show();
          $("#donateFormError").html("Please enter a figure in numbers");
          $("#donateFormError").fadeOut(4000);
          return false;
       }

       return true;
    });
});
