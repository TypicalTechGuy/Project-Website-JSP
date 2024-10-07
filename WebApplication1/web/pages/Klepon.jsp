<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Coolinary - Cooking Recipe Website</title>
  <link rel="stylesheet" href="../css/styles.css" />
  <link rel="stylesheet" href="../css/TentangKami.css" />
  <script src="../js/jquery-3.7.1.min.js"></script>
  <script src="../js/comment.js"></script>
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
            <img src="../img/UserIcon.png" alt="UserIcon" class="login-button-image">
        </a>
      </div>
    </div>
    <div class="content-text">
      <h1>KLEPON</h1>
    </div>
    <div class="content-wrapper">
      <div class="image-section">
        <img src="../img/Klepon.jpg" alt="Klepon" class="recipe-image-ind">
      </div>
      <div class="content-description">
        <p>Klepon is a traditional Indonesian sweet treat made from glutinous rice flour filled with palm sugar and coated in freshly grated coconut. 
           These chewy rice cake balls burst with sweet syrup when bitten into, offering a delightful dessert experience.</p>
        <div class="ingredients">
          <h2>Ingredients</h2>
          <ul>
            <li>200g glutinous rice flour</li>
            <li>150ml warm water</li>
            <li>A few drops of pandan paste (or green food coloring)</li>
            <li>100g palm sugar (gula Jawa), finely chopped</li>
            <li>100g freshly grated coconut</li>
            <li>1/4 teaspoon salt</li>
          </ul>
        </div>
        <div class="steps">
          <h2>Steps</h2>
          <ol>
            <li>In a large bowl, combine the glutinous rice flour with warm water and a few drops of pandan paste. Mix until the dough is smooth and can be shaped.</li>
            <li>Take a small piece of dough and flatten it in your palm. Place a small amount of chopped palm sugar in the center, then fold and pinch the dough to seal the filling. Roll it into a smooth ball. Repeat with the remaining dough and sugar.</li>
            <li>Bring a pot of water to a boil. Carefully drop the dough balls into the boiling water. Cook until the balls float to the surface, then let them cook for another 2-3 minutes to ensure the filling melts.</li>
            <li>While the dough balls are cooking, mix the grated coconut with salt in a bowl.</li>
            <li>Using a slotted spoon, remove the cooked klepon from the boiling water and roll them in the grated coconut mixture until well coated.</li>
            <li>Serve the klepon at room temperature and enjoy this traditional Indonesian sweet treat!</li>
          </ol>
        </div>
      </div>
    </div>
<div class="comment-section">
    <h2>Leave a Comment</h2>
    <form id="commentForm" class="form-container">
        <div class="form-group">
            <label for="name">Name:</label>
            <input type="text" id="name" name="name" class="form-input" required>
        </div>
        <div class="form-group">
            <label for="comment">Comment:</label>
            <textarea id="comment" name="comment" class="form-input" required></textarea>
        </div>
        <button type="submit" class="form-button">Submit</button>
    </form>
    <div id="commentMessage"></div>
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
  </div>
</body>
</html>
