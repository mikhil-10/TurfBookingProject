<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Credit/Debit Card Details</title>
<style>
  body {
    font-family: Arial, sans-serif;
    background-color: #f2f2f2;
    margin: 0;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
  }

  .card-container {
    background-color: white;
    border-radius: 10px;
    box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
    width: 400px;
    padding: 20px;
    text-align: center;
  }

  .card-images {
    display: flex;
    justify-content: space-between;
    margin-bottom: 20px;
  }

  .card-image {
    width: 70px;
    height: 50px;
  }

  .card-form {
    text-align: left;
  }

  .card-form label {
    display: block;
    margin-bottom: 5px;
    font-weight: bold;
  }

  .card-form input[type="text"],
  .card-form input[type="number"]
  .card-form input[type="password"] {
    width: 90%;
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 5px;
    margin-bottom: 15px;
    font-size: 14px;
  }
  #cvv{
    width: 30%;
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 5px;
    margin-bottom: 15px;
    font-size: 14px;
  }
  #btn {
    background-color: #007bff;
    color: white;
    border: none;
    border-radius: 5px;
    padding: 10px 20px;
    cursor: pointer;
    font-size: 14px;
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
	margin-top: auto ;
	max-height: 400px;
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

			 <a href="Home.jsp">Home</a>
    <a href="UserLogin.jsp">Booking Details</a>
    
    <a href="BookTurf.jsp">Book Turf</a>
     <a href="AdminLogin.jsp">Admin</a>
		</div>
	</nav>
	<section class="details" style="background-color:black; padding:20px">
	<br>
<div class="card-container">
  <div class="card-images">
    <img class="card-image" src="https://pngimg.com/d/visa_PNG24.png" alt="Visa Card">
    <img class="card-image" src="https://lwcdn.freebitco.in/wp-content/uploads/2023/07/Mastercard-img.png" alt="MasterCard">
    <img class="card-image" src="https://freepngimg.com/save/127514-logo-american-express-download-free-image/1000x500" alt="American Express">
  </div>
  <form class="card-form">
    <label for="cardNumber">Card Number</label>
    <input type="text" id="cardNumber" name="cardNumber" placeholder="1234 5678 9012 3456" required>
    
    <label for="cardName">Cardholder Name</label>
    <input type="text" id="cardName" name="cardName" placeholder="Abc Xyz" required>
    
    <label for="expiry">Expiry Date</label>
    <input type="text" id="expiry" name="expiry" placeholder="MM/YY" required>
    
    <label for="cvv">CVV</label>
    <input type="password" id="cvv" name="cvv" placeholder="123" required>
    
   <a class="button" href="usersuccess.jsp" id="btn">Book Now</a>
  </form>
</div>
<br>
</section>
</body>
</html>
