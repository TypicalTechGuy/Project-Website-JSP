$(document).ready(function () {
  $("#toggleButton").click(function () {
    $("p.hidden, img.hidden").toggleClass("hidden");
  });
});
