

//   // Get the modal
//   var modal = document.getElementById("<%= restaurant.id %>");

//   // Get the button that opens the modal
//   var btn = document.getElementById("modal");

//   // Get the <span> element that closes the modal
//   var span = document.getElementsByClassName("close")[0];

//   // When the user clicks button, open the modal     //////////

//   btn.addEventListener("click", showModal)

//   var leaveReview;

//   function leaveReview() {
//     leaveReview = window.style.display(showModal);
//   }

//   function showModal() {
//     modal.style.display = "block";
//   }

//   //When the user clicks on <span> (x), close the modal
//   span.onclick = function() {
//     modal.style.display = "none";
//   }

//   // When the user clicks anywhere outside of the modal, close it
//   window.onclick = function(event) {
//     if (event.target == modal) {
//       modal.style.display = "none";
//     }
//   }

// });

$(function() {
  // set `$.fx.interval` at `0`
  $.fx.interval = 0;
  (function cycleBgImage(elem, bgimg) {
    // `elem`:`#slideshow`
    // set, reset, delay to `1000` after background image reset
    elem.css("backgroundImage", bgimg)
    // fade in background image
    .fadeTo(3000, 1, "linear", function() {
      // set `delay` before fadeing out image
      // fade in background image
      $(this).delay(3000, "fx").fadeTo(3000, 0, "linear", function() {
        // split background image string at comma , creating array
        var img = $(this).css("backgroundImage").split(","),
        // concat first background image to `img` array,
        // remove first background image from `img` array
        bgimg = img.concat(img[0]).splice(1).join(",");
        // recursively call `cycleBgImage`
        cycleBgImage(elem, bgimg);
      });
    });
  }($("#slideshow")));
});
