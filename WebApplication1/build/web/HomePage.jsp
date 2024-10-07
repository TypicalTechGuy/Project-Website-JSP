<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% 
    String username = null;
    if (session != null) {
        username = (String) session.getAttribute("username");
    }
%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Coolinary - Cooking Recipe Website</title>
    <link rel="stylesheet" href="css\styles.css"/>
    <script src="js\jquery-3.7.1.min.js"></script>
    <script src="js\main.js"></script>
  </head>
  <body>
    <div class="container">
      <div class="topnav">
        <div class="nav-icon">
          <a href="HomePage.jsp">
            <img src="img\Coolinary_logo_clear.png" alt="Coolinary Logo">
          </a>
        </div>
        <div class="nav-links">
          <a href="pages/Breakfast.jsp">Breakfast</a>
          <a href="pages/Lunch.jsp">Lunch</a>
          <a href="pages/Dinner.jsp">Dinner</a>
          <a href="pages/Dessert.jsp">Dessert</a>
          <% if (username == null) { %>
            <a href="Login.jsp">
              <img src="img/UserIcon.png" alt="UserIcon" class="login-button-image">
            </a>
          <% } else { %>
            <div class="user-menu">
              <span class="username-link">Welcome, <%= username %></span>
              <div class="user-menu-content">
                  <a href="PasswordReset.jsp">Reset Password</a> <br>
                <a href="LogoutServlet">Logout</a>
              </div>
            </div>
          <% } %>
        </div>
      </div>
      <div class="content-text">
        <div class="intro-section">
          <img src="img/HomepageBackground.jpg" alt="IntroductionImage" class="intro-image" id="intro-image">
          <div class="intro-description" id="intro-description">
            <h2>Welcome to Coolinary</h2>
            <p>Coolinary provides valuable resources to enhance your cooking skills and knowledge. 
               At Coolinary, we believe that cooking should be joyous and creative experience, 
               and our curated selection of recipes reflects this philosophy.
               Whether you're looking to prepare a hearty Breakfast, a nutritious lunch, a
               satisfying dinner, or delectable dessert, Coolinary offers step-by-step instructions,
               and helpful tips to guide you every step of the way.  
            </p>
          </div>
        </div>
        <h1 id="top-picks-heading">TOP PICKS FOR YOU</h1>
      </div>
      <div class="content-image" id="top-picks">
        <div class="image-wrapper">
          <a href="pages/Rendang.jsp">
            <img src="img/Rendang.jpg" alt="Rendang" class="recipe-image">
          </a>
          <p>Rendang</p>
        </div>
        <div class="image-wrapper">
          <a href="pages/NasiGoreng.jsp">
            <img src="img/NasiGoreng.jpg" alt="NasiGoreng" class="recipe-image">
          </a>
          <p>Nasi Goreng</p>
        </div>
        <div class="image-wrapper">
          <a href="pages/SateAyam.jsp">
           <img src="img/SateAyam.jpg" alt="SateAyam" class="recipe-image">
          </a>
          <p>Sate Ayam</p>
        </div>
      </div>
      <div class="content-image" id="top-picks">
        <div class="image-wrapper">
          <a href="pages/PecelAyam.jsp">
            <img src="img/PecelAyam.jpg" alt="PecelAyam" class="recipe-image">
          </a>
          <p>Pecel Ayam</p>
        </div>
        <div class="image-wrapper">
          <a href="pages/MieGoreng.jsp">
            <img src="img/MieGoreng.jpg" alt="MieGoreng" class="recipe-image">
          </a>
          <p>Mie Goreng</p>
        </div>
        <div class="image-wrapper">
          <a href="pages/MartabakKeju.jsp">
            <img src="img/MartabakKeju.jpg" alt="MartabakKeju" class="recipe-image">
          </a>
          <p>Martabak Keju</p>
        </div>
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
