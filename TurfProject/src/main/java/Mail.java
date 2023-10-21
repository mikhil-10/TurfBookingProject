

import jakarta.servlet.ServletException;
import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import org.apache.catalina.connector.InputBuffer;
import jakarta.servlet.RequestDispatcher;
import java.io.PrintWriter;
import java.util.Properties;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Servlet implementation class Mail
 */
public class Mail extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Mail() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method 
		String email = (String) request.getSession().getAttribute("email");
		String name = (String) request.getSession().getAttribute("name");
		String date = (String) request.getSession().getAttribute("date");
		String time = (String) request.getSession().getAttribute("time");
		
		        final String senderEmail = "adi2309m@gmail.com";
		        final String senderPassword = "ngywupblvnhbvxsj";
		        final String recipientEmail = email; 
		        Properties properties = new Properties();
		        properties.put("mail.smtp.auth", "true");
		        properties.put("mail.smtp.starttls.enable", "true");
		        properties.put("mail.smtp.host", "smtp.gmail.com"); 
		        properties.put("mail.smtp.port", "587"); 
		        Session session = Session.getInstance(properties, new Authenticator() {
		            @Override
		            protected PasswordAuthentication getPasswordAuthentication() {
		                return new PasswordAuthentication(senderEmail, senderPassword);
		            }
		        });

		        try {
		            Message message = new MimeMessage(session);
		            message.setFrom(new InternetAddress(senderEmail));
		            message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(recipientEmail));
		            message.setSubject("Jp Sports Arena");
		            message.setText("Hello "+name
		            		+ "\r\n Your Booking Details:"
		            		+ "\r\n Booking Date: "+date
		            		+ "\r\nBooking Time Slot:"+time	
		            		+"\r\n"+"\r\n"
		            		+ "\r\nThank You for booking our turf\r\n"
		            		+ "Please make sure to arrive at least 15 minutes before your scheduled time to ensure a smooth check-in process. Here are a few things to keep in mind for your visit:\r\n"
		            		+ "\r\n"
		            		+ "- Wear appropriate sports attire and shoes.\r\n"
		            		+ "- Carry any required equipment for your game.\r\n"
		            		+ "- Follow our turf facility rules and guidelines for a safe and enjoyable experience.\r\n"
		            		+ "- If you need to make any changes to your booking or have any questions, feel free to contact our customer support.\r\n"
		            		+ "- Once again, thank you for choosing us. We can't wait to see you at our turf facility!");
		            Transport.send(message);
		            RequestDispatcher rd=request.getRequestDispatcher("BookTurf.jsp");
		            rd.forward(request, response);
		            System.out.println("Email sent successfully.");
		        } catch (MessagingException e) {
		            e.printStackTrace();
		        }
	}

}
