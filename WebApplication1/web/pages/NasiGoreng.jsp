<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Coolinary - Cooking Recipe Website</title>
    <link rel="stylesheet" href="../css/styles.css" />
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
        <h1>NASI GORENG</h1>
      </div>
      <div class="content-wrapper">
        <div class="image-section">
          <img src="../img/NasiGoreng.jpg" alt="NasiGoreng" class="recipe-image-ind">
        </div>
        <div class="content-description">
          <p>Nasi Goreng (Fried Rice) is a popular and flavorful dish widely enjoyed across Indonesia and Southeast Asia. 
            It's typically made with leftover rice, stir-fried with a variety of ingredients such as vegetables, meat, and seasonings. 
            This dish is known for its rich, savory, and slightly smoky flavor, often enhanced by the addition of sweet soy sauce (kecap manis) and served with accompaniments like a fried egg, prawn crackers, and sliced cucumber.</p>
            <div class="ingredients">
                <h2>Ingredients</h2>
                <ul>
                  <li>3 cups of cooked rice (preferably cold or day-old rice)</li>
                  <li>2 tablespoons of vegetable oil</li>
                  <li>3 cloves of garlic, minced</li>
                  <li>1 onion, finely chopped</li>
                  <li>100g of chicken breast, shrimp, or beef, cut into small pieces</li>
                  <li>1 carrot, diced</li>
                  <li>1 cup of mixed vegetables (peas, corn, green beans)</li>
                  <li>2 eggs, beaten</li>
                  <li>3 tablespoons of sweet soy sauce (kecap manis)</li>
                  <li>1 tablespoon of soy sauce</li>
                  <li>1 tablespoon of fish sauce</li>
                  <li>1 teaspoon of chili sauce or sambal (optional for heat)</li>
                  <li>Salt and pepper to taste</li>
                  <li>Sliced cucumber, tomato wedges, and prawn crackers for garnish (optional)</li>
                </ul>
              </div>
              <div class="steps">
                <h2>Steps</h2>
                <ol>
                  <li>Heat the vegetable oil in a large wok or skillet over medium-high heat.</li>
                  <li>Add the minced garlic and chopped onion to the hot oil. Stir-fry for about 1-2 minutes until they become fragrant and slightly translucent.</li>
                  <li>Add the chicken, shrimp, or beef to the wok. Stir-fry until the meat is cooked through, about 3-4 minutes.</li>
                  <li>Add the diced carrot and mixed vegetables to the wok. Stir-fry for another 2-3 minutes until the vegetables start to soften.</li>
                  <li>Push the ingredients to one side of the wok, and pour the beaten eggs into the empty side. Scramble the eggs until they are fully cooked, then mix them with the rest of the ingredients.</li>
                  <li>Add the cooked rice to the wok. Break up any clumps and toss everything together until the rice is well combined with the ingredients.</li>
                  <li>Pour in the sweet soy sauce (kecap manis), soy sauce, fish sauce, and chili sauce (if using). Toss everything together until the rice is evenly coated and heated through. Season with salt and pepper to taste.</li>
                  <li>Transfer the Nasi Goreng to serving plates. Garnish with sliced cucumber, tomato wedges, and prawn crackers if desired.</li>
                  <li>Serve your Nasi Goreng hot and enjoy this delicious and savory dish!</li>
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
