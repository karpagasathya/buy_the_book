$(document).ready(function() {
  $("#cartButton").on("click", function(event) {
    event.preventDefault();
    var newCart = {
      title: $("#booktitle").val().trim(),
      quantity: $("#author").val().trim(),
      price: $("#price").val().trim(),
    };

    // Send an AJAX POST-request with jQuery
    $.post("/api/new", newCart)
    // On success, run the following code
      .then(function(data) {
      // Log the data we found
        console.log(data);
      });
  });
});
