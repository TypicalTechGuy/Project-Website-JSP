<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Coolinary - Cooking Recipe Website</title>
    <link rel="stylesheet" href="../css/styles.css" />
    <script src="../js/jquery-3.7.1.min.js"></script>
    <script src="../js/script/contactus.js"></script>
  </head>
  <body>
    <div class="container">
      <div class="topnav">
        <div class="nav-icon">
          <a href="../HomePage.jsp">
            <img src="../img/Coolinary_logo_clear.png" alt="Coolinary Logo" />
          </a>
        </div>
        <div class="nav-links">
          <a href="Breakfast.jsp">Breakfast</a>
          <a href="Lunch.jsp">Lunch</a>
          <a href="Dinner.jsp">Dinner</a>
          <a href="Dessert.jsp">Dessert</a>
          <a href="../Login.jsp">
            <img src="img/UserIcon.png" alt="UserIcon" class="login-button-image">
          </a>
        </div>
      </div>
      <div class="content-text">
        <h1>Contact Us</h1>
      </div>
      <div class="contact-form">
        <form id="contactForm">
          <div class="form-group">
            <label for="firstName">First Name:</label>
            <input type="text" id="firstName" name="firstName" required>
          </div>
          <div class="form-group">
            <label for="lastName">Last Name:</label>
            <input type="text" id="lastName" name="lastName" required>
          </div>
          <div class="form-group">
            <label for="email">Email:</label>
            <input type="email" id="email" name="email" required>
          </div>
          <div class="form-group">
            <label for="phoneNumber">Phone Number:</label>
            <input type="tel" id="phoneNumber" name="phoneNumber" required>
          </div>
          <div class="form-group">
            <label for="message">Message:</label>
            <textarea id="message" name="message" required></textarea>
          </div>
          <button type="submit">Submit</button>
        </form>
        <div id="formMessage"></div>
      </div>
      <footer>
        <div class="footer-content">
          <p>&copy; 2024 Coolinary. All rights reserved.</p>
          <div class="footer-links">
            <a href="../pages/AboutUs.jsp">About Us</a>
            <a href="../pages/ContactUs.jsp">Contact Us</a>
            <a href="../pages/PrivacyPolicy.jsp">Privacy Policy</a>
          </div>
        </div>
      </footer>
    </div>
    <script src="../js/main.js"></script>
  </body>
</html>