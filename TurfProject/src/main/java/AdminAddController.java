import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/RegisterController")
public class AdminAddController extends HttpServlet {
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private static final String DB_URL = "jdbc:mysql://localhost:3306/turfproject";
    private static final String DB_USER = "root";
    private static final String DB_PASS = "";

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String password = request.getParameter("password");
        String contact = request.getParameter("contact");
        String email = request.getParameter("email");

        AdminAddPojo newUser = new AdminAddPojo(name, password, contact, email);

        try (Connection connection = DriverManager.getConnection(DB_URL, DB_USER, DB_PASS)) {
            AdminAddDAO userDao = new AdminAddDAO(connection);
            boolean userAdded = userDao.addUser(newUser);
            if (userAdded) {
                RequestDispatcher rd=request.getRequestDispatcher("AdminSuccess.jsp");
                rd.forward(request, response);
            } else {
            	RequestDispatcher rd=request.getRequestDispatcher("AdminError.jsp");
                rd.forward(request, response);
            }
        } catch (SQLException e) {
            e.printStackTrace();
           
        }
    }
}
