
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

@WebServlet("/UserLoginController")
public class UserLoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		
		
		String uname = request.getParameter("name");
		String uemail = request.getParameter("email");
		
		HttpSession session=request.getSession();
		session.setAttribute("name", uname);
		session.setAttribute("email",uemail);
		
		try (Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/turfproject", "root","")) {
			UserDAO userDAO = new UserDAO(connection);
			boolean isAuthenticated = userDAO.authenticateUser(uname, uemail);
			if (isAuthenticated) {

				response.sendRedirect("BookingDetails.jsp");
			} else {

				RequestDispatcher dispatcher = request.getRequestDispatcher("UserLogin.jsp");
				dispatcher.forward(request, response);
			}
		} catch (SQLException e) {
			e.printStackTrace();

		}
	}
}
