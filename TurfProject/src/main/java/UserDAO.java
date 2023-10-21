import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserDAO {
    private Connection connection;

    public UserDAO(Connection connection) {
        this.connection = connection;
    }

    public boolean authenticateUser(String name, String email) {
        String query = "SELECT * FROM bookings WHERE name = ? AND email = ?";
        try (PreparedStatement preparedStatement = connection.prepareStatement(query)) {
            preparedStatement.setString(1, name);
            preparedStatement.setString(2, email);
            
            ResultSet resultSet = preparedStatement.executeQuery();
            if (resultSet.next()) {
                int count = resultSet.getInt(1);
                return count > 0; // If count is greater than 0, user exists and is authenticated.
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false; // Authentication failed or an error occurred.
    }
}
