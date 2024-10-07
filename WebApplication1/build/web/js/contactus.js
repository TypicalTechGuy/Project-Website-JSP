$(document).ready(function() {
    console.log("jQuery is loaded and the document is ready.");
  
    // Form validation and submission handling
    $("#contactForm").submit(function(event) {
      event.preventDefault();
      
      var firstName = $("#firstName").val().trim();
      var lastName = $("#lastName").val().trim();
      var email = $("#email").val().trim();
      var phoneNumber = $("#phoneNumber").val().trim();
      var message = $("#message").val().trim();
      var isValid = true;
  
      // Clear previous error messages
      $(".error-message").remove();
  
      // Validate first name
      if (firstName === "") {
        isValid = false;
        $("#firstName").after('<span class="error-message" style="color:red;">First Name is required</span>');
      }
  
      // Validate last name
      if (lastName === "") {
        isValid = false;
        $("#lastName").after('<span class="error-message" style="color:red;">Last Name is required</span>');
      }
  
      // Validate email
      if (email === "") {
        isValid = false;
        $("#email").after('<span class="error-message" style="color:red;">Email is required</span>');
      } else if (!validateEmail(email)) {
        isValid = false;
        $("#email").after('<span class="error-message" style="color:red;">Invalid email format</span>');
      }
  
      // Validate phone number
      if (phoneNumber === "") {
        isValid = false;
        $("#phoneNumber").after('<span class="error-message" style="color:red;">Phone Number is required</span>');
      } else if (!validatePhoneNumber(phoneNumber)) {
        isValid = false;
        $("#phoneNumber").after('<span class="error-message" style="color:red;">Invalid phone number format</span>');
      }
  
      // Validate message
      if (message === "") {
        isValid = false;
        $("#message").after('<span class="error-message" style="color:red;">Message is required</span>');
      }
  
      // If valid, show a success message (you can replace this with an actual form submission if needed)
      if (isValid) {
        $("#formMessage").text("Thank you for contacting us!");
        $("#contactForm")[0].reset();
      }
    });
  
    // Email validation function
    function validateEmail(email) {
      var re = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
      return re.test(email);
    }
  
    // Phone number validation function (simple format check)
    function validatePhoneNumber(phoneNumber) {
      var re = /^[0-9\-\+\s\(\)]{7,15}$/;
      return re.test(phoneNumber);
    }
  });
  