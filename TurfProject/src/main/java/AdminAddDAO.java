import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class AdminAddDAO {
    private Connection connection; // You should initialize this connection

    public AdminAddDAO(Connection connection) {
        this.connection = connection;
    }

    public boolean addUser(AdminAddPojo user) {
        String query = "INSERT INTO admin (name, password, contact, email) VALUES (?, ?, ?, ?)";

        try (PreparedStatement preparedStatement = connection.prepareStatement(query)) {
            preparedStatement.setString(1, user.getName());
            preparedStatement.setString(2, user.getPassword());
            preparedStatement.setString(3, user.getContact());
            preparedStatement.setString(4, user.getEmail());

            int rowsInserted = preparedStatement.executeUpdate();
            return rowsInserted > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
}
