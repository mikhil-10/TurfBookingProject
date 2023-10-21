import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
@WebServlet("/AdminController")
public class AdminLoginController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        AdminLoginPojo admin = new AdminLoginPojo(username, password);
        AdminLoginDAO adminDao = new AdminLoginDAO();

        if (adminDao.validateAdmin(admin)) {
            RequestDispatcher rd=request.getRequestDispatcher("AdminComments.jsp");
            rd.forward(request, response);
        } else {
        	RequestDispatcher rd=request.getRequestDispatcher("AdminError.jsp");
            rd.forward(request, response);
        }
    }
}



