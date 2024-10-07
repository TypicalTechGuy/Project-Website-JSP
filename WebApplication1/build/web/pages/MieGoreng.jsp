<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List, java.util.ArrayList, db.Comment" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>

<%
    String username = (String) session.getAttribute("username");

    Connection conn = null;
    PreparedStatement pstmt = null;
    ResultSet rs = null;
    List<Map<String, Object>> comments = new ArrayList<>();

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/coolinary_db", "root", "");
        String sql = "SELECT id, name, comment FROM comments"; // Include the comment ID
        pstmt = conn.prepareStatement(sql);
        rs = pstmt.executeQuery();

        while (rs.next()) {
            int commentId = rs.getInt("id");
            String commentUsername = rs.getString("name");
            String commentText = rs.getString("comment");

            Map<String, Object> comment = new HashMap<>();
            comment.put("id", commentId);
            comment.put("username", commentUsername);
            comment.put("text", commentText);
            comments.add(comment);
        }
    } catch (Exception e) {
        e.printStackTrace();
    } finally {
        if (rs != null) try { rs.close(); } catch (SQLException e) { e.printStackTrace(); }
        if (pstmt != null) try { pstmt.close(); } catch (SQLException e) { e.printStackTrace(); }
        if (conn != null) try { conn.close(); } catch (SQLException e) { e.printStackTrace(); }
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
                <% if (username == null) { %>
                    <a href="Login.jsp">
                        <img src="img/UserIcon.png" alt="UserIcon" class="login-button-image">
                    </a>
                <% } else { %>
                    <span>Welcome, <%= username %></span>
                    <a href="LogoutServlet">Logout</a>
                <% } %>
        </div>
      </div>
      <div class="content-text">
        <h1>MIE GORENG</h1>
      </div>
      <div class="content-wrapper">
        <div class="image-section">
          <img src="../img/MieGoreng.jpg" alt="MieGoreng" class="recipe-image-ind">
        </div>
        <div class="content-description">
          <p>Mie Goreng (fried noodles) is a popular and flavorful dish commonly found in Indonesia, Malaysia, and Singapore. 
            This stir-fried noodle dish is known for its savory, slightly sweet, and smoky flavor, and it's often served with a variety of vegetables, meats, and sometimes a fried egg on top. 
            It's a versatile dish that can be enjoyed as a quick meal or a more elaborate dish depending on the ingredients used.</p>
          <div class="ingredients">
            <h2>Ingredients</h2>
            <ul>
                <li>200g of egg noodles or instant noodles</li>
                <li>2 tablespoons of vegetable oil</li>
                <li>3 cloves of garlic, minced</li>
                <li>1 onion, thinly sliced</li>
                <li>100g of chicken breast or shrimp, cut into bite-sized pieces</li>
                <li>1 carrot, julienned</li>
                <li>1 cup of cabbage, shredded</li>
                <li>2 eggs, beaten</li>
                <li>3 tablespoons of sweet soy sauce (kecap manis)</li>
                <li>1 tablespoon of soy sauce</li>
                <li>1 tablespoon of oyster sauce</li>
                <li>1 teaspoon of chili sauce or sambal (optional for heat)</li>
                <li>Salt and pepper to taste</li>
            </ul>
          </div>
          <div class="steps">
            <h2>Steps</h2>
            <ol>
                <li>Cook the egg noodles or instant noodles according to the package instructions until they are al dente. Drain and set aside.</li>
                <li>In a large wok or skillet, heat the vegetable oil over medium-high heat.</li>
                <li>Add the minced garlic and sliced onion to the hot oil. Stir-fry for about 1-2 minutes until they become fragrant and slightly translucent.</li>
                <li>Add the chicken breast or shrimp to the wok. Stir-fry until the meat is cooked through, about 3-4 minutes.</li>
                <li>Add the julienned carrot and shredded cabbage to the wok. Stir-fry for another 2-3 minutes until the vegetables start to soften.</li>
                <li>Push the ingredients to one side of the wok, and pour the beaten eggs into the empty side. Scramble the eggs until they are fully cooked, then mix them with the rest of the ingredients.</li>
                <li>Add the cooked noodles to the wok. Toss everything together until the noodles are well coated with the ingredients.</li>
                <li>Pour in the sweet soy sauce (kecap manis), soy sauce, oyster sauce, and chili sauce (if using). Toss everything together until the noodles are evenly coated and heated through. Season with salt and pepper to taste.</li>
                <li>Transfer the Mie Goreng to serving plates. Garnish with fried shallots, sliced cucumber, tomato wedges, and lime wedges if desired.</li>
                <li>Serve your Mie Goreng hot and enjoy this delicious and savory dish!</li>
            </ol>
          </div>
        </div>
      </div>
      <div class="comment-section">
            <h2>Submit a Comment</h2>
            <% 
                String loggedInUser = (String) session.getAttribute("username");
                if (loggedInUser == null) { 
            %>
                <p style="color:red;">You must be logged in to submit a comment. <a href="../Login.jsp">Login here</a>.</p>
            <% } else { %>
                <% if (request.getParameter("error") != null) { %>
                    <p style="color:red;">An error occurred. Please try again.</p>
                <% } %>
                <form action="${pageContext.request.contextPath}/submitComment" method="post">
                    <label for="username">Username:</label><br>
                    <input type="text" id="username" name="username" value="<%= loggedInUser %>" readonly><br><br>
                    <label for="comment">Comment:</label><br>
                    <textarea id="comment" name="comment" required></textarea><br><br>
                    <input type="submit" value="Submit Comment"><br><br>
                </form>
            <% } %>
        </div>
        <div id="commentMessage"></div>
<div class="existing-comments">
    <h2>Comments</h2>
    <ul>
        <% for (Map<String, Object> comment : comments) { %>
            <li>
                <strong><%= comment.get("username") %></strong>: <%= comment.get("text") %>
                <% if (username != null && username.equals(comment.get("username"))) { %>
                    <form action="../EditComment.jsp" method="get" style="display:inline;">
                        <input type="hidden" name="commentId" value="<%= comment.get("id") %>">
                        <input type="hidden" name="commentText" value="<%= comment.get("text") %>">
                        <input type="submit" value="Edit">
                    </form>
                    <form action="../deleteComment" method="post" style="display:inline;">
                        <input type="hidden" name="commentId" value="<%= comment.get("id") %>">
                        <input type="submit" value="Delete" onclick="return confirm('Are you sure you want to delete this comment?');">
                    </form>
                <% } %>
            </li>
        <% } %>
    </ul>
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

