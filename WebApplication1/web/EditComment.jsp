<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
    String commentId = request.getParameter("commentId");
    String commentText = request.getParameter("commentText");

    if (commentId == null || commentText == null) {
        response.sendRedirect("../pages/MieGoreng.jsp");
        return;
    }
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Comment</title>
</head>
<body>
    <div class="container">
        <h2>Edit Comment</h2>
        <form action="UpdateCommentServlet" method="post">
            <input type="hidden" name="commentId" value="<%= commentId %>">
            <label for="comment">Comment:</label><br>
            <textarea id="comment" name="comment" required><%= commentText %></textarea><br><br>
            <input type="submit" value="Update Comment">
        </form>
    </div>
</body>
</html>

