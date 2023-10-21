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
	max-width: 500px;
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

#email{
padding: 7px;
	width: 65%;
	border-radius: 5px;
	margin-left: 17%;
	text-align: center;
	font-size: 15px;
	border: 1px solid #ccc;
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

			<a href="Home.jsp">Home</a> <a href="UserLogin.jsp">Booking Details</a> <a
				href="BookTurf.jsp">Book Turf</a> <a href="AdminLogin.jsp">Admin</a>
		</div>
	</nav>
	<section style="background-color: #262525; margin-top: 60px;">
	
		<br>
		<div class="container">

			<h2 style="text-align: center;">Enter your details</h2>
			<hr>
			<form id="" method="post" action="FootballFormController3">

				<h1>
					<label for="groundName">Ground Name: 
				</h1>
				</label> <input type="text" id="groundName" name="groundName"
					value="Football Ground 3" readonly> <br> <br>
				<h1>
					<label for="price">Price : 
				</h1>
				</label> <input type="text" id="price" name="price" value="1500.00" readonly>
				<br> <br>

				<h1>
					<label for="name">Name:</label>
				</h1>
				<input type="text" id="name" name="name" required> <br>
				<br>

				<h1>
					<label for="contact">Contact:</label>
				</h1>
				<input type="tel" id="contact" name="contact" pattern="[0-9]{10}"
					title="Enter a 10-digit contact number" required> <br>
				<br>
				
				<h1>
					<label for="email">Email:</label>
				</h1>
				<input type="text" id="email" name="email" required> <br>
				<br>


				<h1>
					<label for="date">Date:</label>
				</h1>
				<span id="currentDate"></span>
				</p>
				<input type="date" id="date" name="date" min="" max="" required>
				<br> <br>
				<h1>
					<label for="time">Time :</label>
				</h1>
				<select id="time" name="time" required>
					<option value="06:00 AM to 8:00 AM">6:00 AM - 8:00 AM</option>
					<option value="08:00 AM to 10:00 AM">8:00 AM - 10:00 AM</option>
					<option value="10:00 AM to 12:00 PM">10:00 AM - 12:00 PM</option>
					<option value="12:00 PM to 2:00PM">12:00 PM - 2:00PM</option>
					<option value="02:00 PM to 4:00PM">2:00 PM - 4:00 PM</option>
					<option value="04:00 PM to 6:00PM">4:00 PM - 6:00 PM</option>
					<option value="06:00 PM to 8:00 PM">6:00 PM - 8:00 PM</option>
					<option value="08:00 PM to 10:00PM">8:00 PM - 10:00 PM</option>
					<option value="10:00 PM t0 12:00PM">10:00 PM - 12:00 PM</option>
				</select> <br> <br>

				<button type="submit" id="btn">Register</button>
			</form>
		</div>

		<br>
		<br>
	</section>

	<script>
		// Get current date
		const currentDate = new Date();
		const year = currentDate.getFullYear();
		const month = currentDate.getMonth() + 1;
		const lastDay = new Date(year, month, 0).getDate();
		const maxDate = `${year}-${month.toString().padStart(2, '0')}-${lastDay.toString().padStart(2, '0')}`;
		document.getElementById("date").min = currentDate.toISOString().split(
				'T')[0];
		document.getElementById("date").max = maxDate;
		function selectDate() {
			const selectedDate = document.getElementById("date").value;
		}

		//DATE
		function selectTime() {
			const selectedTime = document.getElementById("time").value;
		}
		/* const timeDropdown = document.getElementById('time');
		const dateInput = document.getElementById('date');

		const currentDate = new Date();
		const lastDayOfMonth = new Date(currentDate.getFullYear(), currentDate.getMonth() + 1, 0).getDate();
		const formattedDate = currentDate.toISOString().split('T')[0];
		dateInput.min = formattedDate;
		dateInput.max = `${year}-${month.toString().padStart(2, '0')}-${lastDay.toString().padStart(2, '0')}`;
		for (let hour = 6; hour <= 23; hour += 2) {
		    const timeOption = document.createElement('option');
		    const ampm = hour < 12 ? 'AM' : 'PM';
		    const displayHour = hour <= 12 ? hour : hour - 12;
		    timeOption.value = `${hour}:00`;
		    timeOption.textContent = `${displayHour}:00 ${ampm}`;
		    timeDropdown.appendChild(timeOption);
		} */
	</script>
</body>

</html>
