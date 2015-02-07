// NS
// Checkout verification that the user has accepted terms and conditions

$(document).ready(function() {
  $("#accept_terms").prop("checked", false); // Uncheck the checkbox on page ready
  $("#accept_terms").click(function() {
    $("#checkout_confirm_button").attr("disabled", !this.checked);
  });
});
