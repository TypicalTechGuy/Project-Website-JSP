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
    <link rel="stylesheet" href="../css/TentangKami.css" />
    <script src="../js/jquery-3.7.1.min.js"></script>
    <script src="../js/main.js"></script>
  </head>
  <body>
    <div class="container">
      <div class="topnav">
        <div class="nav-icon">
          <a href="../HomePage.jsp">
          <img src="../img/Coolinary_logo_clear.png" alt="gaming" />
          </a>
        </div>
        <div class="nav-links">
          <a href="Breakfast.jsp">Breakfast</a>
          <a href="Lunch.jsp" class="active-nav">Lunch</a>
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
        <h1>LUNCH RECIPES</h1>
        <h2>Discover a delightful array of lunchtime favorites crafted to fulfill your midday appetite. 
          Indulge in our selection of wholesome dishes, thoughtfully prepared to offer both satisfaction and ease. 
          Explore and savor our vibrant lunch recipes that promise to elevate your dining experience.</h2>
      </div>
      <div class="content-image">
        <div class="image-wrapper">
          <a href="AyamBakar.jsp">
            <img src="../img/AyamBaka.jpg" alt="AyamBakar" class="recipe-image">
          </a>
          <p>Ayam Bakar</p>
        </div>
        <div class="image-wrapper">
          <a href="Rendang.jsp">
            <img src="../img/Rendang.jpg" alt="Rendang" class="recipe-image">
          </a>
          <p>Rendang</p>
        </div>
        <div class="image-wrapper">
          <a href="SotoAyam.jsp">
            <img src="../img/SotoAyam.jpg" alt="SotoAyam" class="recipe-image">
          </a>
          <p>Soto Ayam</p>
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
