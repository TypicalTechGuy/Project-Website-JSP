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
    <link rel="stylesheet" href="../css/Produk.css" />
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
          <a href="Breakfast.jsp">Breakfast</a>
          <a href="Lunch.jsp">Lunch</a>
          <a href="Dinner.jsp" class="active-nav">Dinner</a>
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
        <h1>DINNER RECIPES</h1>
        <h2>Indulge in our diverse range of dinner recipes that promise to elevate your evening meals.
            Whether you're hosting a gathering or enjoying a quiet evening at home, our recipes ensure every dinner is a memorable occasion.
        </h2>
      </div>
      <div class="content-image">
        <div class="image-wrapper">
          <a href="SateAyam.jsp">
            <img src="../img/SateAyam.jpg" alt="SateAyam" class="recipe-image">
          </a>
          <p>Sate Ayam</p>
        </div>
        <div class="image-wrapper">
          <a href="MieGoreng.jsp">
            <img src="../img/MieGoreng.jpg" alt="MieGoreng" class="recipe-image">
          </a>
          <p>Mie Goreng</p>
        </div>
        <div class="image-wrapper">
          <a href="PecelAyam.jsp">
            <img src="../img/PecelAyam.jpg" alt="PecelAyam" class="recipe-image">
          </a>
          <p>Pecel Ayam</p>
        </div>
    </div>
    <footer>
      <div class="footer-content">
        <p>&copy; 2024 Coolinary. All rights reserved.</p>
        <div class="footer-links">
          <a href="AboutUs.jsp">About Us</a>
          <a href="ContactUs.jsp">Contact Us</a>
          <a href="PrivacyPolicy.jsp">Privacy Policy</a>
        </div>
      </div>
    </footer>
  </body>
</html>
