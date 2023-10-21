<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>JP Sports Arena</title>
<style>
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
	height: 600px;
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

#email {
	padding: 7px;
	width: 65%;
	border-radius: 5px;
	margin-left: 17%;
	text-align: center;
	font-size: 15px;
	border: 1px solid #ccc;
}

#password{
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
    <a class="navbar-brand" href="Welcome.jsp">
      <img src="JP SPorts.jpg" alt="Logo" height="60">
    </a>
   
    <a href="Home.jsp">Home</a>
    <<a href="AdminComments.jsp">User Comments</a>
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
<section style="background-color: #262525; margin-top: 60px;">
    <br>
	<div class="container">
		<h2 style="text-align: center;">Enter your details</h2>
		<hr>
		<form id="registrationForm" method="post" action="AdminAddController">
			<h1>
				<label for="name">Name:</label>
			</h1>
			<input type="text" id="name" name="name" placeholder="Enter Your name" required> <br>
			<br>
			
			<h1>
				<label for="contact">New Password:</label>
			</h1>
			<input type="password" id="password" name="password"  placeholder="Enter Your New Password" required> <br>
			<br>
			
			<h1>
				<label for="contact">Contact:</label>
			</h1>
			<input type="tel" id="contact" name="contact" pattern="[0-9]{10}"
				placeholder="Enter a 10-digit contact number" required> <br>
			<br>
			
			<h1>
				<label for="email">Email:</label>
			</h1>
			<input type="email" id="email" name="email" placeholder="Enter your Email" required> <br>
			<br>


			<button type="submit" id="btn">Register</button>
		</form>
	</div>
    <br><br>
</section>
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
