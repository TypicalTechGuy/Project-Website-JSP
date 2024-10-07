<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Password Reset - Coolinary</title>
    <link rel="stylesheet" href="css/styles.css"/>
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
            <h1>Password Reset</h1>
            <% if (request.getParameter("error") != null) { %>
                <p style="color:red;">An error occurred. Please try again.</p>
            <% } %>
            <form action="password-reset" method="post">
                <label for="email">Email:</label><br>
                <input type="email" id="email" name="email" required><br><br>
                <label for="newPassword">New Password:</label><br>
                <input type="password" id="newPassword" name="newPassword" required><br><br>
                <input type="submit" value="Reset Password"><br><br>
            </form>
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

