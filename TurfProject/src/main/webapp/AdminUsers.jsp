<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<title>JP Sports Arena</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet">
<style>
body {
	background-color: #262525;
}

.table-container {
	max-width: 1400px;
	margin: 0 auto;
	padding: 30px;
	background-color: #ffffff;
	border-radius: 10px;
	box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
	margin-top: 100px;
}

.table-responsive {
	overflow-x: auto;
}

table {
	width: 100%;
	border-collapse: collapse;
}

th, td {
	padding: 10px;
	text-align: left;
}

th {
	background-color: #000;
	color: #fff;
}

tr:nth-child(even) {
	background-color: #000000;
}

tr:hover {
	background-color: #d9d9d9;
}

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

      .dropdown {
        position: relative;
        display: inline-block;
      }

      .dropdown-button {
        background-color: transparent;
        color: #fff;
        border: none;
        padding: 10px 20px;
        cursor: pointer;
      }

      .dropdown-menu {
        position: absolute;
        top: 100%;
        left: 0;
        display: none;
        background-color: #000000;
        border: 1px solid #ccc;
        border-top: none;
      }

      .dropdown-item {
        padding: 10px 20px;
        text-decoration: none;
        color: #333;
        display: block;
      }
</style>
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-dark  fixed-top">
		<a class="navbar-brand" href="Welcome.jsp"> <img
			src="JP SPorts.jpg" alt="Logo" height="60">
		</a> <a href="Home.jsp">Home</a>
    <<a href="AdminComments.jsp">User Comments</a>
        <a href="AdminMain.jsp">Booking Details</a>
        <div class="dropdown">
            <button class="dropdown-button">Add Admins</button>
            <div class="dropdown-menu">
              <a class="dropdown-item" href="AdminUsers.jsp">Admins</a>
              <a class="dropdown-item" href="AdminAdd.jsp">Add Admin</a>
            </div>
          </div>

	</nav>
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-md-10">
				<div class="table-container">
					<h2 class="text-center">Admins</h2>
					<hr>
					<div class="table-responsive">
						<table class="table table-hover table-striped">
							<thead>
								<tr>
									<th>Name</th>
									<th>Contact</th>
									<th>password</th>
									<th>Email</th>
									<th>Action</th>
								</tr>
								<%
								try {
									Class.forName("com.mysql.cj.jdbc.Driver");
									Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/turfproject", "root", "");
									Statement statement = connection.createStatement();
									ResultSet resultSet = statement.executeQuery("SELECT * FROM admin");

									while (resultSet.next()) {
										String username = resultSet.getString("name");
										String contact = resultSet.getString("contact");
										String passwd = resultSet.getString("password");
										String email = resultSet.getString("email");
								%>
								<tr>
									<form action="AdminMainDeleteController" method="post">

										<td><input type='text' name='username'
											value='<%=username%>' readonly></td>
										<td><%=contact%></td>
										<td><%=passwd%></td>
										<td><%=email%></td>
										<td><button type="submit" name="btn" value="delete">Delete</button></td>
									</form>
								</tr>

								<%
								}
								resultSet.close();
								statement.close();
								connection.close();
								} catch (Exception e) {
								e.printStackTrace();
								}
								%>
							
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
<script>
    const dropdownButton = document.querySelector(".dropdown-button");
    const dropdownMenu = document.querySelector(".dropdown-menu");

    dropdownButton.addEventListener("click", function () {
      dropdownMenu.style.display = dropdownMenu.style.display === "block" ? "none" : "block";
    });

    document.addEventListener("click", function (event) {
      if (!event.target.matches(".dropdown-button")) {
        dropdownMenu.style.display = "none";
      }
    });
  </script>
</html>
