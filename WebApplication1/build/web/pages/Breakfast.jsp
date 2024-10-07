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
    <link rel="stylesheet" href="../css/styles.css" />
    <link rel="stylesheet" href="../css/TentangKami.css"/>
    <script src="../js/jquery-3.7.1.min.js"></script>
    <script src="../js/main.js"></script>
  </head>
  <body>
    <div class="container">
      <div class="topnav">
        <div class="nav-icon">
          <a href="../HomePage.jsp">
            <img src="..\img\Coolinary_logo_clear.png" alt="gaming" />
          </a>
        </div>
        <div class="nav-links">
          <a href="Breakfast.jsp" class="active-nav">Breakfast</a>
          <a href="Lunch.jsp">Lunch</a>
          <a href="Dinner.jsp">Dinner</a>
          <a href="Dessert.jsp">Dessert</a>
          <% if (username == null) { %>
              <a href="../Login.jsp">
                  <img src="../img/UserIcon.png" alt="UserIcon" class="login-button-image">
              </a>
          <% } else { %>
              <a href="#" class="username-link">Welcome, <%= username %></a>
              <a href="LogoutServlet">Logout</a>
          <% } %>
        </div>
      </div>
      <div class="content-text">
        <h1>BREAKFAST RECIPES</h1>
        <h2>Enjoy a delightful selection of breakfast recipes that are perfect to start your day. 
          From hearty classics to innovative twists, our breakfast recipes promise to satisfy your morning cravings with delicious flavors and wholesome ingredients. </h2>
      </div>
      <div class="content-image">
        <div class="image-wrapper">
          <a href="NasiGoreng.jsp">
            <img src="../img/NasiGoreng.jpg" alt="NasiGoreng" class="recipe-image">
          </a>
          <p>Nasi Goreng</p>
        </div>
        <div class="image-wrapper">
          <a href="NasiUduk.jsp">
            <img src="../img/NasiUduk.jpg" alt="NasiUduk" class="recipe-image">
          </a>
          <p>Nasi Uduk</p>
        </div>
        <div class="image-wrapper">
          <a href="BuburAyam.jsp">
            <img src="../img/BuburAyam.jpg" alt="BuburAyam" class="recipe-image">
          </a>
          <p>Bubur Ayam</p>
        </div>
    </div>
    <footer>
      <div class="footer-content">
        <p>&copy; 2024 Coolinary. All rights reserved.</p>
        <div class="footer-links">
          <a href="../pages/AboutUs.html">About Us</a>
          <a href="../pages/ContactUs.html">Contact Us</a>
          <a href="../pages/PrivacyPolicy.html">Privacy Policy</a>
        </div>
      </div>
    </footer>
  </body>
</html>
