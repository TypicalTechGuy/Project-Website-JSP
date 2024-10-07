package Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;

@WebServlet("/UpdateCommentServlet")
public class UpdateCommentServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int commentId = Integer.parseInt(request.getParameter("commentId"));
        String commentText = request.getParameter("comment");

        String url = "jdbc:mysql://localhost:3306/coolinary_db"; // Update with your database URL
        String user = "root"; // Update with your database username
        String password = ""; // Update with your database password

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection(url, user, password);
            String sql = "UPDATE comments SET comment = ? WHERE id = ?";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, commentText);
            stmt.setInt(2, commentId);
            stmt.executeUpdate();

            stmt.close();
            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("EditComment.jsp?error=true&commentId=" + commentId + "&commentText=" + commentText);
            return;
        }

        response.sendRedirect("../pages/MieGoreng.jsp");
    }
}
