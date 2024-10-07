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
      </div>
    </div>
    <div class="content-text">
      <h1>AYAM BAKAR</h1>
    </div>
    <div class="content-wrapper">
      <div class="image-section">
        <img src="../img/AyamBaka.jpg" alt="AyamBakar" class="recipe-image-ind">
      </div>
      <div class="content-description">
        <p>Ayam Bakar is a popular Indonesian dish of grilled chicken marinated in a flavorful blend of spices, herbs, and sweet soy sauce (kecap manis). 
          It's known for its smoky aroma and deliciously caramelized skin.</p>
        <div class="ingredients">
          <h2>Ingredients</h2>
          <ul>
            <li>1 whole chicken, cut into pieces</li>
            <li>5 cloves garlic, minced</li>
            <li>2 shallots, finely chopped</li>
            <li>1 thumb-sized piece of ginger, grated</li>
            <li>2 lemongrass stalks, white parts only, bruised</li>
            <li>1 teaspoon turmeric powder</li>
            <li>1 tablespoon coriander powder</li>
            <li>2 tablespoons sweet soy sauce (kecap manis)</li>
            <li>1 tablespoon soy sauce</li>
            <li>1 tablespoon tamarind paste, dissolved in 2 tablespoons warm water</li>
            <li>Salt and pepper to taste</li>
            <li>Vegetable oil for grilling</li>
          </ul>
        </div>
        <div class="steps">
          <h2>Steps</h2>
          <ol>
            <li>In a bowl, combine garlic, shallots, ginger, turmeric powder, coriander powder, sweet soy sauce, soy sauce, tamarind mixture, salt, and pepper. Mix well to form a marinade.</li>
            <li>Place chicken pieces in a large bowl or shallow dish. Rub the marinade all over the chicken pieces, including under the skin. Cover and refrigerate for at least 2 hours, preferably overnight.</li>
            <li>Preheat grill to medium-high heat. Lightly brush the grill grates with vegetable oil to prevent sticking.</li>
            <li>Grill the chicken pieces over medium-high heat, turning occasionally and basting with marinade, until chicken is cooked through and skin is caramelized and slightly charred, about 20-25 minutes.</li>
            <li>Remove chicken from the grill and let it rest for a few minutes before serving.</li>
            <li>Serve Ayam Bakar hot with steamed rice, cucumber slices, and a side of sambal (Indonesian chili paste) if desired.</li>
          </ol>
        </div>
      </div>
    </div>
<div class="comment-section">
    <h2>Leave a Comment</h2>
    <div class="form-container">
        <form id="commentForm">
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
</body>
</html>
