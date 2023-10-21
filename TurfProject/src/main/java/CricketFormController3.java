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


@WebServlet("/CricketFormController3")
public class CricketFormController3 extends HttpServlet {
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
        
        CricketFormPojo registration = new CricketFormPojo();
        registration.setGroundName("Cricket Ground 3");
        registration.setPrice(1000.00);
        registration.setName(name);
        registration.setEmail(email);
        registration.setContact(contact);
        registration.setDate(date);
        registration.setTime(time);
        CricketFormDAO registrationDAO = new CricketFormDAO();
        boolean success = registrationDAO.insertRegistration(registration);
        if (success) {
            RequestDispatcher rd=request.getRequestDispatcher("Booking.jsp");
            rd.forward(request, response);
        } else {
        	RequestDispatcher rd=request.getRequestDispatcher("SlotBookedC.jsp");
            rd.forward(request, response);
        }
    }
}
