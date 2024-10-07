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
        <a href="Login.jsp">
            <img src="../img/UserIcon.png" alt="UserIcon" class="login-button-image">
        </a>
      </div>
    </div>
    <div class="content-text">
      <h1>BUBUR AYAM</h1>
    </div>
    <div class="content-wrapper">
      <div class="image-section">
        <img src="../img/BuburAyam.jpg" alt="BuburAyam" class="recipe-image-ind">
      </div>
      <div class="content-description">
        <p>Bubur Ayam is a comforting Indonesian rice porridge topped with shredded chicken, crispy fried shallots, chopped scallions, and served with savory condiments such as soy sauce, fried soybeans, and spicy sambal.
           It's a popular breakfast dish known for its warm, soothing flavors and ability to be customized with various toppings.</p>
        <div class="ingredients">
          <h2>Ingredients</h2>
          <ul>
            <li>1 cup jasmine rice</li>
            <li>5 cups water or chicken broth</li>
            <li>200g chicken breast, thinly sliced or shredded</li>
            <li>2 cloves garlic, minced</li>
            <li>1 inch ginger, grated</li>
            <li>1 tsp salt</li>
            <li>1/2 tsp white pepper powder</li>
            <li>2 tbsp fried shallots (for garnish)</li>
            <li>2 tbsp chopped scallions (for garnish)</li>
            <li>Soy sauce, to taste</li>
            <li>Fried soybeans or peanuts (optional, for garnish)</li>
            <li>Sambal or chili sauce (optional, for serving)</li>
          </ul>
      
        </div>
        <div class="steps">
          <h2>Steps</h2>
          <ol>
            <li>Rinse jasmine rice under cold water until water runs clear. Drain well.</li>
            <li>In a large pot, heat a bit of oil over medium heat. Add minced garlic and grated ginger. Sauté until fragrant.</li>
            <li>Add chicken breast to the pot. Stir-fry until chicken is cooked through.</li>
            <li>Add rinsed rice to the pot with cooked chicken. Stir to combine.</li>
            <li>Pour in water or chicken broth. Add salt and white pepper powder. Stir gently.</li>
            <li>Bring mixture to a boil over medium-high heat. Once boiling, reduce heat to low and cover pot. Let simmer for 30-40 minutes, stirring occasionally, until rice breaks down and thickens into porridge consistency.</li>
            <li>Adjust seasoning with more salt or pepper if needed.</li>
            <li>Serve hot, garnished with fried shallots, chopped scallions, and additional toppings such as soy sauce, fried soybeans or peanuts, and sambal or chili sauce.</li>
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
