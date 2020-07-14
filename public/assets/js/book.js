/* eslint-env jquery */
console.log("javascript file");
$(document).ready(function() {
  $(".cartButton").on("click", function(event) {
    event.preventDefault();
    var cart = {
      bookId: Number($(this).attr("value"))
    };

    // Send an AJAX POST-request with jQuery
    $.post("/api/cart", cart)
    // On success, run the following code
      .then(function(data) {
      // Log the data we found
        console.log(data);
        location.reload();
      });
  });
});
