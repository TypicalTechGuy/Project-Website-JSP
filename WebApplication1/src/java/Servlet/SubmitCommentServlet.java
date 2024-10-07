package Servlet;

import db.db;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "SubmitCommentServlet", urlPatterns = {"/submitComment"})
public class SubmitCommentServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    private db connection;

    public void init() {
        connection = new db();
    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            HttpSession session = request.getSession();
            String loggedInUser = (String) session.getAttribute("username");

            if (loggedInUser == null) {
                out.println("<html>");
                out.println("<head><title>Error</title></head>");
                out.println("<body>");
                out.println("<h1>You must be logged in to submit a comment.</h1>");
                out.println("<a href=\"Login.jsp\">Login here</a>");
                out.println("</body>");
                out.println("</html>");
                return;
            }

            String comment = request.getParameter("comment");

            String statement = "INSERT INTO comments(name, comment) VALUES (?, ?);";

            try (Connection conn = connection.getConnection();
                 PreparedStatement ps = conn.prepareStatement(statement)) {
                ps.setString(1, loggedInUser);
                ps.setString(2, comment);
                ps.executeUpdate();

                out.println("<html>");
                out.println("<head><title>Comment Submitted</title></head>");
                out.println("<body>");
                out.println("<h1>Comment submitted successfully!</h1>");
                out.println("<a href=\"MieGoreng.jsp\">Back to Recipe</a>");
                out.println("</body>");
                out.println("</html>");
            } catch (SQLException ex) {
                System.err.println(ex);
                out.println("<html>");
                out.println("<head><title>Error</title></head>");
                out.println("<body>");
                out.println("<h1>Error submitting comment. Please try again later.</h1>");
                out.println("<a href=\"MieGoreng.jsp\">Back to Recipe</a>");
                out.println("</body>");
                out.println("</html>");
            }
        } finally {
            out.close();
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("MieGoreng.jsp");
        dispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Submit Comment Servlet";
    }
}
