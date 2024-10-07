package Servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/deleteComment")
public class DeleteCommentServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String commentIdStr = request.getParameter("commentId");
        int commentId = Integer.parseInt(commentIdStr);

        String url = "jdbc:mysql://localhost:3306/coolinary_db"; // Update with your database URL
        String user = "root"; // Update with your database username
        String password = ""; // Update with your database password

        Connection conn = null;
        PreparedStatement pstmt = null;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection(url, user, password);
            String sql = "DELETE FROM comments WHERE id = ?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setInt(1, commentId);
            pstmt.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (pstmt != null) try { pstmt.close(); } catch (Exception e) { e.printStackTrace(); }
            if (conn != null) try { conn.close(); } catch (Exception e) { e.printStackTrace(); }
        }

        // Redirect back to the page where comments are displayed
        response.sendRedirect("MieGoreng.jsp");
    }
}
