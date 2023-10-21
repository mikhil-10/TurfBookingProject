import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;


@WebServlet("/FootballFormController3")
public class FootballFormController3 extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String name = request.getParameter("name");
        String contact = request.getParameter("contact");
        String email = request.getParameter("email");
        String dateString = request.getParameter("date");
        String time = request.getParameter("time");
        
        
  
        HttpSession session = request.getSession();
        session.setAttribute("email",email);
        session.setAttribute("name",name);
        session.setAttribute("time",time);
        session.setAttribute("date",dateString);
        
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        Date date = null;
        try {
            date = dateFormat.parse(dateString);
        } catch (ParseException e) {
            e.printStackTrace();
        }

        FootballPojo registration = new FootballPojo();
        registration.setGroundName("Football Ground 3");
        registration.setPrice(1500.00);
        registration.setName(name);
        registration.setContact(contact);
        registration.setEmail(email);
        registration.setDate(date);
        registration.setTime(time);

        FootballDAO registrationDAO = new FootballDAO();
        boolean success = registrationDAO.insertRegistration(registration);

        if (success) {
            RequestDispatcher rd=request.getRequestDispatcher("Booking.jsp");
            rd.forward(request, response);
        } else {
        	RequestDispatcher rd=request.getRequestDispatcher("SlotBooked.jsp");
            rd.forward(request, response);
        }
    }
}
