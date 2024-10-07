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
          <a href="Dinner.jsp">Dinner</a>
          <a href="Dessert.jsp" class="active-nav">Dessert</a>
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
        <h1>DESSERT RECIPES</h1>
        <h2>Delight in the rich tapestry of desserts that celebrate local flavors and traditions.
            Indulge in flavors that transport you to the vibrant streets and cozy kitchens of Indonesia.
            Each dessert is crafter to bring out the unique essence of Indonesian ingredients.
        </h2>
      </div>
      <div class="content-image">
        <div class="image-wrapper">
          <a href="Klepon.jsp">
            <img src="../img/Klepon.jpg" alt="Klepon" class="recipe-image">
          </a>
          <p>Klepon</p>
        </div>
        <div class="image-wrapper">
          <a href="SerabiBandung.jsp">
            <img src="../img/SerabiBandung.jpeg" alt="SerabiBandung" class="recipe-image">
          </a>
          <p>Serabi Bandung</p>
        </div>
        <div class="image-wrapper">
          <a href="MartabakKeju.jsp">
            <img src="../img/MartabakKeju.jpg" alt="MartabakKeju" class="recipe-image">
          </a>
          <p>Martabak Keju</p>
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