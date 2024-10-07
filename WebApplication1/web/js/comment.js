$(document).ready(function() {
    console.log("jQuery is loaded and the document is ready.");

    // Form validation and submission handling
    $("#commentForm").submit(function(event) {
        event.preventDefault();
        
        console.log("Form submission intercepted.");

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
            console.log("Form is valid. Submitting...");

            $.ajax({
                type: "POST",
                url: "SubmitCommentServlet", // Adjust URL if needed
                data: $("#commentForm").serialize(), // Serialize form data
                success: function(response) {
                    console.log("Comment submitted successfully:", response);
                    $("#commentMessage").text("Thank you for your comment!");
                    $("#commentForm")[0].reset();
                },
                error: function(xhr, status, error) {
                    console.error("Error submitting comment:", error);
                    $("#commentMessage").text("Error submitting comment. Please try again later.");
                }
            });
        }
    });
});
