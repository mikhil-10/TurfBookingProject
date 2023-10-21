import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class RatingDAO {
    private String jdbcUrl = "jdbc:mysql://localhost:3306/turfproject";
    private String jdbcUsername = "root";
    private String jdbcPassword = "";

    public void addReview(RatingPojo review) {
        try (Connection connection = DriverManager.getConnection(jdbcUrl, jdbcUsername, jdbcPassword)) {
            String query = "INSERT INTO reviews (name, ratings, comment) VALUES (?, ?, ?)";
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            preparedStatement.setString(1, review.getName());
            preparedStatement.setString(2, review.getRatings());
            preparedStatement.setString(3, review.getComment());
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
