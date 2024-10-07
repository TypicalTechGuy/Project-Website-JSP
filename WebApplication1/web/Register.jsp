<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register - Coolinary</title>
    <link rel="stylesheet" href="css/styles.css"/>
    <script>
        function togglePasswordVisibility() {
            var passwordField = document.getElementById("password");
            var toggleButton = document.getElementById("togglePassword");
            if (passwordField.type === "password") {
                passwordField.type = "text";
                toggleButton.innerText = "Hide Password";
            } else {
                passwordField.type = "password";
                toggleButton.innerText = "Show Password";
            }
        }
    </script>
</head>
<body>
    <div class="container">
        <div class="topnav">
            <div class="nav-icon">
                <a href="HomePage.jsp">
                    <img src="img/Coolinary_logo_clear.png" alt="Coolinary Logo">
                </a>
            </div>
            <div class="nav-links">
                <a href="pages/Breakfast.html">Breakfast</a>
                <a href="pages/Lunch.html">Lunch</a>
                <a href="pages/Dinner.html">Dinner</a>
                <a href="pages/Dessert.html">Dessert</a>
                <a href="Login.jsp">
                    <img src="img/UserIcon.png" alt="UserIcon" class="login-button-image">
                </a>
            </div>
        </div>
        <div class="content-text">
            <h1>Register</h1>
            <% if (request.getParameter("error") != null) { %>
                <p style="color:red;">An error occurred. Please try again.</p>
            <% } %>
            <form action="register" method="post">
                <label for="username">Username:</label><br>
                <input type="text" id="username" name="username" required><br><br>
                <label for="email">Email:</label><br>
                <input type="email" id="email" name="email" required><br><br>
                <label for="password">Password:</label><br>
                <input type="password" id="password" name="password" required><br><br>
                <button type="button" id="togglePassword" onclick="togglePasswordVisibility()">Show Password</button><br><br>
                <input type="submit" value="Register"><br><br>
            </form>
            <p>Already have an account? <a href="Login.jsp">Login here</a>.</p>
        </div>
            <footer>
        <div class="footer-content">
          <p>&copy; 2024 Coolinary. All rights reserved.</p>
          <div class="footer-links">
            <a href="pages/AboutUs.jsp">About Us</a>
            <a href="pages/ContactUs.jsp">Contact Us</a>
            <a href="pages/PrivacyPolicy.jsp">Privacy Policy</a>
          </div>
        </div>
      </footer>
    </div>
</body>
</html>




