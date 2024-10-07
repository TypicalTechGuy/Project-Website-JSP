package RegisterServlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;
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

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Register Servlet";
    }
}


