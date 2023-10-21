import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


@WebServlet("/RatingController")
public class RatingController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String name = request.getParameter("name");
        String ratings = request.getParameter("ratings");
        String comment = request.getParameter("comment");
        RatingPojo review = new RatingPojo();
        review.setName(name);
        review.setRatings(ratings);
        review.setComment(comment);
        RatingDAO reviewDAO = new RatingDAO();
        reviewDAO.addReview(review);
        response.sendRedirect("CricketTurf.jsp");
    }
}
