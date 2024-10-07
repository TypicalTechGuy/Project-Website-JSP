package Servlet;

import db.db;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "LoginServlet", urlPatterns = {"/login"})
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    private db connection;

    public void init() {
        connection = new db();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("Login.jsp");
        dispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String statement = "SELECT * FROM users WHERE username=? AND password=?";

        try (Connection conn = connection.getConnection();
             PreparedStatement ps = conn.prepareStatement(statement)) {
            ps.setString(1, username);
            ps.setString(2, password);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                // Create a session
                HttpSession session = request.getSession();
                // Set session attributes
                session.setAttribute("username", username);

                // Redirect to success page or any other secured page
                response.sendRedirect(request.getContextPath() + "/LoginSuccess.jsp");
            } else {
                // Redirect back to login page with error message
                response.sendRedirect(request.getContextPath() + "/Login.jsp?error=1");
            }
        } catch (SQLException ex) {
            System.err.println(ex);
            // Redirect to login page with error message
            response.sendRedirect(request.getContextPath() + "/Login.jsp?error=1");
        }
    }

    @Override
    public String getServletInfo() {
        return "Login Servlet";
    }
}


