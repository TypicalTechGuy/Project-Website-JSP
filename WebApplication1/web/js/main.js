$(document).ready(function() {
  console.log("jQuery is loaded and the document is ready.");

  // Fade in the introduction text
  var introDescription = $('#intro-description');
  introDescription.hide().fadeIn(1500);

  // Fade in the introduction image
  var introImage = $('#intro-image');
  introImage.hide().fadeIn(1500);

  // Fade in the "TOP PICKS FOR YOU" section
  var topPicksHeading = $('#top-picks-heading');
  var topPicksSection = $('#top-picks');
  topPicksHeading.hide().fadeIn(1500);
  topPicksSection.hide().fadeIn(1500);

  // Fade in the content text
  $('.content-text').hide().fadeIn(1500);

  // Fade in the image wrappers
  $('.image-wrapper').hide().fadeIn(1500);

  // Form validation and submission handling
  $("#commentForm").submit(function(event) {
    event.preventDefault();
    
    var name = $("#name").val().trim();
    var comment = $("#comment").val().trim();
    var isValid = true;

    // Clear previous error messages
    $(".error-message").remove();

    // Validate name
    if (name === "") {
      isValid = false;
      $("#name").after('<span class="error-message" style="color:red;">Name is required</span>');
    }

    // Validate comment
    if (comment === "") {
      isValid = false;
      $("#comment").after('<span class="error-message" style="color:red;">Comment is required</span>');
    }

    // If valid, show a success message
    if (isValid) {
      $("#commentMessage").text("Thank you for your comment!");
      $("#commentForm")[0].reset();
    }
  });
});
