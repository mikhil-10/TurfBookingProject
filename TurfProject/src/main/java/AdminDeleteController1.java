import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/AdminDeleteController1")
public class AdminDeleteController1 extends HttpServlet {
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String nameToDelete = request.getParameter("username"); // Get the name to delete
        
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/turfproject", "root", "");
            String deleteQuery = "DELETE FROM cancelbookings WHERE name = ?";
            PreparedStatement preparedStatement = connection.prepareStatement(deleteQuery);
            preparedStatement.setString(1, nameToDelete);
            
            int rowsAffected = preparedStatement.executeUpdate(); 
            
            preparedStatement.close();
            connection.close();
            
            if (rowsAffected > 0) {
                response.sendRedirect("AdminMain.jsp"); 
            } else {
                response.getWriter().write("Deletion failed.");
            }
        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().write("An error occurred.");
        }
    }
}
