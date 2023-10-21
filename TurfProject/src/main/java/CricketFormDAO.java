import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class CricketFormDAO {
	private static final String JDBC_URL = "jdbc:mysql://localhost:3306/turfproject";
	private static final String JDBC_USER = "your_username";
	private static final String JDBC_PASSWORD = "your_password";
	 public boolean insertRegistration(CricketFormPojo cricketform) {
	        try (Connection connection = DriverManager.getConnection(JDBC_URL, JDBC_USER, JDBC_PASSWORD)) {
	        	
	        	String cancel="Select * from bookings where ground_name=? and date=? and time=?";
	        	PreparedStatement ps=connection.prepareStatement(cancel);
	        	ps.setString(1,cricketform.getGroundName());
	        	ps.setDate(2, new java.sql.Date(cricketform.getDate().getTime()));
	        	ps.setString(3, cricketform.getTime());
	        	ResultSet rs=ps.executeQuery();
	        	if(rs.next()) {
	        		
	        		return false;
	        	}
	        	
	            String query = "INSERT INTO bookings(ground_name,price, name,contact, email,date, time) VALUES (?, ?, ?, ?, ?,?,?)";
	            PreparedStatement preparedStatement = connection.prepareStatement(query);
	            preparedStatement.setString(1, cricketform.getGroundName());
	            preparedStatement.setDouble(2, cricketform.getPrice());
	            preparedStatement.setString(3, cricketform.getName());
	            preparedStatement.setString(4, cricketform.getContact());
	            preparedStatement.setString(5, cricketform.getEmail());
	            preparedStatement.setDate(6, new java.sql.Date(cricketform.getDate().getTime()));
	            preparedStatement.setString(7, cricketform.getTime());
	            
	            int rowsAffected = preparedStatement.executeUpdate();
	            return rowsAffected > 0;
	        } catch (SQLException e) {
	            e.printStackTrace();
	            return false;
	        }
	}
}
