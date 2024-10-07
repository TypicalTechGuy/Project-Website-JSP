<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Successful - Coolinary</title>
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
                <a href="../pages/Breakfast.html">Breakfast</a>
                <a href="../pages/Lunch.html">Lunch</a>
                <a href="../pages/Dinner.html">Dinner</a>
                <a href="../pages/Dessert.html">Dessert</a>
            </div>
        </div>
        <div class="content-text">
            <h1>Login Successful!</h1>
            <p>Welcome back, <%= session.getAttribute("username") %>!</p>
        </div>
    </div>
</body>
</html>


