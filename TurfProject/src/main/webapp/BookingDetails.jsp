<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>Display Data</title>
    <style type="text/css">
body {
	font-family: Arial, sans-serif;
}

.container {
	max-width: 400px;
	margin-top: 70px;
	margin-left: 35%;
	padding: 20px;
	background-color: rgb(255, 255, 255);
	border: 1px solid #ccc;
	border-radius: 5px;
	box-shadow: 0 0 20px rgba(0, 0, 0, 0.3);
	height: 700px;
}

label {
	font-weight: bold;
	text-align: center;
}

#btn {
	width: 100%;
	padding: 10px;
	background-color: #3498db;
	color: #fff;
	border: none;
	border-radius: 3px;
	cursor: pointer;
}

select, button {
	padding: 8px;
	margin: 5px 0;
	border: 1px solid #ccc;
	border-radius: 3px;
}
/*navbar*/
.navbar {
	position: fixed;
	top: 0;
	left: 0;
	width: 100%;
	background-color: rgba(0, 0, 0, 0.7);
	display: flex;
	justify-content: space-around;
	align-items: center;
	height: 50px;
	z-index: 1;
}

.navbar a {
	color: white;
	text-decoration: none;
}

.navbar-brand img {
	max-height: 60px;
	margin-left: 10px;
}

nav .logo {
	margin-top: 13px;
	cursor: pointer;
}

#Sectioncard {
	background-color: white;
	margin-top: auto;
	max-height: 400px;
}

h1 {
	font-size: large;
	margin: 2px;
	text-align: center;
}

#btn {
	margin-top: 10px;
	padding: 10px 20px;
	background-color: #3498db;
	color: white;
	border-radius: 5px;
	font-size: 16px;
	cursor: pointer;
}

#time {
	padding: 8px;
	border-radius: 5px;
	margin-left: 30%;
	text-align: center;
	font-size: 14px;
}
#email{
padding: 7px;
	width: 65%;
	border-radius: 5px;
	margin-left: 17%;
	text-align: center;
	font-size: 15px;
	border: 1px solid #ccc;
}
#date {
	border: 1px solid #ccc;
	padding: 8px;
	border-radius: 5px;
	margin-left: 35%;
	text-align: center;
	font-size: 15px;
}

#contact {
	padding: 7px;
	width: 65%;
	border-radius: 5px;
	margin-left: 17%;
	text-align: center;
	font-size: 15px;
	border: 1px solid #ccc;
}

#name {
	padding: 7px;
	width: 65%;
	border-radius: 5px;
	margin-left: 17%;
	text-align: center;
	font-size: 15px;
	border: 1px solid #ccc;
}

#price {
	padding: 7px;
	width: 65%;
	border-radius: 5px;
	margin-left: 17%;
	text-align: center;
	font-size: 15px;
	border: 1px solid #ccc;
}

#groundName {
	padding: 7px;
	width: 65%;
	border-radius: 5px;
	margin-left: 17%;
	text-align: center;
	border: 1px solid #ccc;
	font-size: 15px;
}
#time{
padding: 7px;
	width: 65%;
	border-radius: 5px;
	margin-left: 17%;
	text-align: center;
	border: 1px solid #ccc;
	font-size: 15px;
}
.section {
	background-color: black;
} 
    </style>
</head>
<body>
<nav>
		<div class="navbar">
			<div class="logo">
				<a class="navbar-brand" href="Home.jsp"> <img
					src="JP SPorts.jpg" alt="Logo">
				</a>
			</div>

			<a href="Home.jsp">Home</a> <a href="UserLogin.jsp">Booking Details</a>
             <a
				href="BookTurf.jsp">Book Turf</a> <a href="AdminLogin.jsp">Admin</a>
		</div>
	</nav>

    <%
        String jdbcUrl = "jdbc:mysql://localhost:3306/turfproject";
        String dbUsername = "root";
        String dbPassword = "";

        Connection connection = null;
        Statement statement = null;
        ResultSet resultSet = null;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(jdbcUrl, dbUsername, dbPassword);
            String uemail = (String) request.getSession().getAttribute("email");
    		String uname = (String) request.getSession().getAttribute("name");
            String query = "SELECT * FROM bookings where name='"+uname+"' and email='"+uemail+"'";
            statement = connection.createStatement();
            resultSet = statement.executeQuery(query);
    %>
        <%
            while (resultSet.next()) {
        %>
        <section style="background-color: #262525; margin-top: 60px;">
    <br>
	<div class="container">
		<h2 style="text-align: center;">Your details</h2>
		<hr>
		<form method="post" action="CancelBooking">

			<h1>
				<label for="groundName">Ground Name: 
			</h1>
			</label> <input type="text" id="groundName" name="groundName" value="<%=resultSet.getString("ground_name")%>" readonly> <br> <br>
			<h1>
				<label for="price">Price : 
			</h1>
			</label> <input type="text" id="price" name="price" value="<%= resultSet.getString("price") %>" readonly>
			<br> <br>

			<h1>
				<label for="name">Name:</label>
			</h1>
			<input type="text" id="name" name="name" value="<%=resultSet.getString("name")%>" readonly> <br>
			<br>

			<h1>
				<label for="contact">Contact:</label>
			</h1>
			<input type="text" id="contact" name="contact" value="<%= resultSet.getString("contact")%>" readonly> <br>
			<br>
			<h1>
				<label for="email">Email:</label>
			</h1>
			<input type="text" id="email" name="email" value="<%= resultSet.getString("email")%>" readonly> <br>
			<br>

			<h1>
				<label for="date">Date:</label>
			</h1>
			</p>
			<input type="text" id="date" name="date" value="<%=resultSet.getString("date") %>" readonly>
			<br> <br>
			<h1>
				<label for="time">Time :</label>
				<input type="text" id="time" name="time" value="<%= resultSet.getString("time") %>" readonly>
			</h1>
			 <br> <br>

			<button type="submit" id="btn">Cancel Booking</button>
		</form>
	</div>
    <br><br>
</section>
        <%
            }
        %>
    </table>
    <%
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (resultSet != null) resultSet.close();
            if (statement != null) statement.close();
            if (connection != null) connection.close();
        }
    %>

</body>
</html>
