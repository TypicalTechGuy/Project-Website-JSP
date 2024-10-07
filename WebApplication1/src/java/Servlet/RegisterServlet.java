package Servlet;

import db.db;
import java.sql.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "RegisterServlet", urlPatterns = {"/register"})
public class RegisterServlet extends HttpServlet {  
    private static final long serialVersionUID = 1L;
    private static Map<String, String> users = new HashMap<>();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            String username = request.getParameter("username");
            String password = request.getParameter("password");

            if (users.containsKey(username)) {
                out.println("<html>");
                out.println("<head><title>Register</title></head>");
                out.println("<body>");
                out.println("<h1>Username already exists!</h1>");
                out.println("<a href=\"register.jsp\">Try Again</a>");
                out.println("</body>");
                out.println("</html>");
            } else {
                users.put(username, password);
                out.println("<html>");
                out.println("<head><title>Register</title></head>");
                out.println("<body>");
                out.println("<h1>Registration successful!</h1>");
                out.println("<a href=\"login.jsp\">Login</a>");
                out.println("</body>");
                out.println("</html>");
            }
        } finally {
            out.close();
        }
    }

    private db connection;

    public void init() {
        connection = new db();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("Register.jsp");
        dispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String name = request.getParameter("username");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String statement = "INSERT INTO users(username, email, password) VALUES (?,?,?);";

        try (Connection conn = connection.getConnection();
             PreparedStatement ps = conn.prepareStatement(statement)) {
            ps.setString(1, name);
            ps.setString(2, email);
            ps.setString(3, password);
            ps.executeUpdate();

            RequestDispatcher dispatcher = request.getRequestDispatcher("RegisterSuccess.jsp");
            dispatcher.forward(request, response);
        } catch (SQLException ex) {
            System.err.println(ex);
            response.sendRedirect("Register.jsp?error=1");
        }
    }

    @Override
    public String getServletInfo() {
        return "Register Servlet";
    }
}
