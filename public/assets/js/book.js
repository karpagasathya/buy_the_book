/* eslint-env jquery */
$(document).ready(function () {
  $(".modal").modal();
  $(".cart-button").on("click", function (event) {
    event.preventDefault();
    var cart = {
      bookId: Number($(this).attr("value"))
    };

    // Send an AJAX POST-request with jQuery
    $.post("/api/cart", cart)
      // On success, run the following code
      .then(function (data) {
        // Log the data we found
        console.log(data);
        location.reload();
      });
  });

  $(".checkout-button").on("click", () => {
    $.ajax({
      url: "/api/cart/delete",
      type: "DELETE"
    });
  });

});
