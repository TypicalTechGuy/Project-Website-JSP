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
        <h1>MARTABAK KEJU</h1>
      </div>
      <div class="content-wrapper">
        <div class="image-section">
          <img src="../img/MartabakKeju.jpg" alt="MartabakKeju" class="recipe-image-ind">
        </div>
        <div class="content-description">
          <p>Martabak Keju is a popular Indonesian street food, known for its sweet, buttery pancake filled with cheese. 
             This delicious treat is typically enjoyed as a dessert or snack, and it's beloved for its rich flavor and gooey cheese filling.
             The pancake is often topped with additional ingredients like condensed milk, chocolate sprinkles, or crushed nuts.</p>
          <div class="ingredients">
            <h2>Ingredients</h2>
            <ul>
                <li>200g all-purpose flour</li>
                <li>2 tablespoons sugar</li>
                <li>1/2 teaspoon salt</li>
                <li>1/2 teaspoon baking powder</li>
                <li>1/4 teaspoon baking soda</li>
                <li>250ml water</li>
                <li>1 egg</li>
                <li>50g butter, melted</li>
                <li>100g shredded cheese (cheddar or mozzarella)</li>
                <li>2 tablespoons sweetened condensed milk</li>
                <li>Optional toppings: chocolate sprinkles, crushed nuts, etc.</li>
              </ul>
          </div>
          <div class="steps">
            <h2>Steps</h2>
            <ol>
                <li>In a large bowl, mix the flour, sugar, salt, baking powder, and baking soda. Gradually add the water while stirring to form a smooth batter.</li>
                <li>Add the egg and melted butter to the batter, and mix until well combined. Let the batter rest for about 30 minutes.</li>
                <li>Heat a non-stick pan over medium heat. Pour a ladleful of batter into the pan and spread it evenly to form a thick pancake.</li>
                <li>Cook the pancake until bubbles form on the surface and the bottom is golden brown. Flip the pancake and cook the other side until golden brown.</li>
                <li>Remove the pancake from the pan and immediately spread a layer of sweetened condensed milk over the surface.</li>
                <li>Sprinkle the shredded cheese evenly over the condensed milk. Add any optional toppings like chocolate sprinkles or crushed nuts if desired.</li>
                <li>Fold the pancake in half to enclose the filling. Let it sit for a minute to allow the cheese to melt.</li>
                <li>Cut the Martabak Keju into slices and serve warm.</li>
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