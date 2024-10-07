package Servlet;

import db.db;
import java.sql.*;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "PasswordResetServlet", urlPatterns = {"/password-reset"})
public class PasswordResetServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private db connection;

    public void init() {
        connection = new db();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("PasswordReset.jsp");
        dispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String email = request.getParameter("email");
        String newPassword = request.getParameter("newPassword");
        String statement = "UPDATE users SET password = ? WHERE email = ?";

        try (Connection conn = connection.getConnection();
             PreparedStatement ps = conn.prepareStatement(statement)) {
            ps.setString(1, newPassword);
            ps.setString(2, email);
            int updatedRows = ps.executeUpdate();

            if (updatedRows > 0) {
                RequestDispatcher dispatcher = request.getRequestDispatcher("PasswordResetSuccess.jsp");
                dispatcher.forward(request, response);
            } else {
                response.sendRedirect("PasswordReset.jsp?error=1");
            }
        } catch (SQLException ex) {
            System.err.println(ex);
            response.sendRedirect("PasswordReset.jsp?error=2");
        }
    }

    @Override
    public String getServletInfo() {
        return "Password Reset Servlet";
    }
}


