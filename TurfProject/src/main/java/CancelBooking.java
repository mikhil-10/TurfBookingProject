import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/CancelBooking")
public class CancelBooking extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String gn = request.getParameter("groundName"); 
        String price = request.getParameter("price");
        String name = request.getParameter("name");
        String contact = request.getParameter("contact");
        String email = request.getParameter("email");
        String date = request.getParameter("date");
        String time = request.getParameter("time");
        
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/turfproject", "root", "");
            
            String deleteQuery = "DELETE FROM bookings WHERE name ='"+name+"'";
            String insertq= "INSERT INTO cancelbookings(ground_name,price, name, contact,email, date, time) VALUES (?, ?, ?, ?, ?,?,?)";
            Statement statement=connection.createStatement();
            statement.executeUpdate(deleteQuery);
            PreparedStatement preparedStatement = connection.prepareStatement(insertq);
            preparedStatement.setString(1, gn);
            preparedStatement.setString(2, price);
            preparedStatement.setString(3, name);
            preparedStatement.setString(4, contact);
            preparedStatement.setString(5, email);
            preparedStatement.setString(6, date);
            preparedStatement.setString(7, time);
            preparedStatement.executeUpdate();
            

            preparedStatement.close();
            connection.close();

            response.sendRedirect("CancelSuccess.jsp");
        } catch (Exception e) {
            e.printStackTrace();
            
        }
    }
}
