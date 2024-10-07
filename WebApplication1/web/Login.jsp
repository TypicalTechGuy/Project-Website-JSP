<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login - Coolinary</title>
    <link rel="stylesheet" href="css/styles.css"/>
</head>
<body>
    <div class="container">
        <div class="topnav">
            <div class="nav-icon">
                <a href="HomePage.jsp">
                    <img src="img/Coolinary_logo_clear.png" alt="Coolinary Logo">
                </a>
            </div>
            <div class="nav-links">
                <a href="pages/Breakfast.html">Breakfast</a>
                <a href="pages/Lunch.html">Lunch</a>
                <a href="pages/Dinner.html">Dinner</a>
                <a href="pages/Dessert.html">Dessert</a>
            </div>
        </div>
        <div class="content-text">
            <h1>Login</h1>
            <% if (request.getParameter("error") != null) { %>
                <p style="color:red;">Invalid username or password. Please try again.</p>
            <% } %>
            <form action="login" method="post">
                <label for="username">Username:</label><br>
                <input type="text" id="username" name="username" required><br><br>
                <label for="password">Password:</label><br>
                <input type="password" id="password" name="password" required><br><br>
                <input type="submit" value="Login">
            </form>
        </div>
    </div>
</body>
</html>

