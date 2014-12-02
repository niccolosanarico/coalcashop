// NS

// Verify that the user has accepted the privacy agreement before registering

$(document).ready(function() {
  var the_terms = $("#privacy-agreement");

  the_terms.click(function() {
    if ($(this).is(":checked")) {
      $("#submitBtn").removeAttr("disabled");
    } else {
      $("#submitBtn").attr("disabled", "disabled");
    }
  });
});
