import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class FootballDAO {
    private static final String JDBC_URL = "jdbc:mysql://localhost:3306/turfproject";
    private static final String JDBC_USER = "your_username";
    private static final String JDBC_PASSWORD = "your_password";

    public boolean insertRegistration(FootballPojo cricketform) {
        try (Connection connection = DriverManager.getConnection(JDBC_URL, JDBC_USER, JDBC_PASSWORD)) {
        	
            String checkQuery = "SELECT * FROM bookings WHERE ground_name = ? AND date = ? AND time = ?";
            PreparedStatement checkStatement = connection.prepareStatement(checkQuery);
            checkStatement.setString(1, cricketform.getGroundName());
            checkStatement.setDate(2, new java.sql.Date(cricketform.getDate().getTime()));
            checkStatement.setString(3, cricketform.getTime());
            
            ResultSet resultSet = checkStatement.executeQuery();
            if (resultSet.next()) {
                return false;
            }
            
            String insertQuery = "INSERT INTO bookings(ground_name, price, name, contact, email, date, time) VALUES (?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement preparedStatement = connection.prepareStatement(insertQuery);
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
