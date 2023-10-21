<%@ page import="java.sql.*"%>
<!doctype html>
<html lang="en">

<head>
<title>JP Sports Arena</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT"
	crossorigin="anonymous">
<style>
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
	margin-top: 720px;
	max-height: 400px;
}

.card {
	border-radius: 6px;
	border-color: rgb(0, 0, 0);
	box-shadow: 0;
}

#img {
	max-height: 700px;
	border-radius: 5px;
}

#btn {
	margin-top: 1px;
	padding: 5px;
	background-color: #3498db;
	color: white;
	border-radius: 5px;
	font-size: 16px;
	cursor: pointer;
}

#name {
	border-radius: 6px;
	padding: 5px;
}

#rating {
	border-radius: 6px;
	padding: 5px;
}

#comment {
	border-radius: 6px;
	padding: 15px;
	padding-right: 800px;
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
	<header>
		 <nav class="navbar navbar-expand-lg navbar-dark  fixed-top">
    <a class="navbar-brand" href="Welcome.jsp">
      <img src="JP SPorts.jpg" alt="Logo" height="60">
    </a>
   
    <a href="Home.jsp">Home</a>
    <a href="AdminComments.jsp">User Comments</a>
        <a href="AdminMain.jsp">Booking Details</a>
        <a href="AdminCancelBookings.jsp">Canceled Bookings </a>
         <div class="dropdown">
            <button class="dropdown-button">Add Admins</button>
            <div class="dropdown-menu">
              <a class="dropdown-item" href="AdminUsers.jsp">Admins</a>
              <a class="dropdown-item" href="AdminAdd.jsp">Add Admin</a>
            </div>
          </div>

  </nav>

	</header>
	<main>

		<section class="mt-5" style="background-color: black;">
			<h2 class="text-center" style="color: rgb(124, 13, 227);">Reviews</h2>
			<br>
			<div class="container">
				<div class="row justify-content-center">
					<div class="col-md-6">

						<%
						try {
							Class.forName("com.mysql.cj.jdbc.Driver");
							Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/turfproject", "root", "");
							Statement statement = connection.createStatement();
							ResultSet resultSet = statement.executeQuery("SELECT * FROM reviews");

							while (resultSet.next()) {
								String id = resultSet.getString("id");
								String username = resultSet.getString("name");
								String ratings = resultSet.getString("ratings");
								String comment = resultSet.getString("comment");
						%>

						<div class="card mb-3">
							<div class="card-body">
								<form action="AdminCommentDeleteController" method="post">
									<label for="name">Comment Number: <%=id%></label><br>
									<label for="name">Name:</label>
									<input type='text' name='username' value='<%=username%>' readonly><br> <label
										for="name">Ratings: <%=ratings%></label><br> <label
										for="comment">Comment:</label><br>
									<textarea name='' rows="3" class="form-control" readonly><%=comment%></textarea>
									<td><button type="submit" name="btn" value="delete"
											id="btn">Delete</button></td> <br>
								</form>
							</div>
						</div>

						<%
						}
						resultSet.close();
						statement.close();
						connection.close();
						} catch (Exception e) {
						e.printStackTrace();
						}
						%>

					</div>
				</div>
			</div>
			<br> <br>
		</section>


	</main>
	<footer>
	</footer>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
		integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3"
		crossorigin="anonymous">
		
	</script>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.min.js"
		integrity="sha384-7VPbUDkoPSGFnVtYi0QogXtr74QeVeeIs99Qfg5YCF+TidwNdjvaKZX19NZ/e6oz"
		crossorigin="anonymous">
		
	</script>
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

