<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <style>
    .background-image {
      position: absolute;
      position: absolute;
	margin-top: 50px;
	width: 1500px;
	height: 680px;
	object-fit: fill;
	z-index: 0;
	opacity: 0.9;
	background-color: #000000;
    }
    .overlay-text {
      position: absolute;
      top: 50%;
      left: 50%;
      transform: translate(-50%, -50%);
      text-align: center;
      color: white;
      font-size: 24px;
    }
/*navbar*/
    .navbar {
      position:fixed;
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
	
	#Sectioncard{
		background-color: white;
		margin-top:720px;
		max-height: 400px;
	}
	/*Table */
	table {
		width: 100%;
		border-collapse: collapse;
	  }
	  th, td {
		padding: 10px;
		text-align: center;
		color: #f0f0f0;
	  }
	  th {
		background-color: #f0f0f0;
		color: wheat;
	  }
	  /*Card*/
	  .card-container {
		display: flex;
		justify-content: space-between;
	  }
	  
	  .card {
		flex: 1;
		background-color: #ffffff;
		border: 1px solid #ffffff;
		padding: 20px;
		margin: 10px;
		
	  }

	  #img{
		margin-left: 40%;
	  }
	  h2{
		margin-left: 39%;
	  }
	  #search{
		height: 300px;
		margin-left: 20%;
        border-radius: 5px;
	  }

	  /*Social Media*/
	  .sectioninfo{
		background-color: #000000;
	  }
	  .sectioninformation {
		height: auto;
		background-color: #000000;
		display: flex;
		justify-content: space-between;
		padding:1px;
		color: #ccc;
	  }
	  .card1 {
		flex: 1;
		background-color: rgb(0, 0, 0);
		border: 1px solid #000000;
		padding: 20px;
		box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
	  }
	  .social-logos {
		display: flex;
		justify-content: space-between;
	  }
	  .social-icon {
		width: 30px;
		height: 30px;
		background-color: #333;
		border-radius: 50%;
		display: flex;
		justify-content: center;
		align-items: center;
	  }
	  .social-icon img {
		width: 20px;
		height: 20px;
		filter: invert(1);
	  }
	  #cimg{
		margin-left: 20%;
	  }
	  a:link, a:visited {
		color: white;
		text-align: center;
		text-decoration: none;
		display: inline-block;
	  }
	  /*icons*/
	  .fa-instagram {
		background: #df0e92;
		color: white;
		padding: 7px;
		font-size: 20px;

	  }.fa-facebook {
		background: #0f43b3;
		color: white;
		padding: 7px;
		font-size: 20px;
	  }
	  
	  .fa-twitter {
		background: #55ACEE;
		color: white;
		padding: 7px;
		font-size: 20px;
	  }
	  
.logo-container video {

	position: absolute;
	margin-top: 50px;
	width: 1500px;
	height: 680px;
	object-fit: fill;
	z-index: 0;
	opacity: 0.9;
	background-color: #000000;
}
  </style>
  <title>JP Sports Arena</title>
</head>
<body>
<nav>
  <div class="navbar">
	<div class="logo">
		<a class="navbar-brand" href="Welcome.jsp"> <img src="JP SPorts.jpg"
			alt="Logo">
		</a>
	</div>

    <a href="Home.jsp">Home</a>
    <a href="AboutUs.jsp">About Us</a>
    <a href="https://goo.gl/maps/c4yDQcBTBUxHG2Qm9">Location</a>
    <a href="BookTurf.jsp">Book Turf</a>
     <a href="AdminLogin.jsp">Admin</a>
  </div>
</nav>

<div class="">
	<div class="image">
	 <div class="logo-container">
					  <!-- <video autoplay loop muted>
						<source src="AboutUsV.mp4" type="video/mp4">
					</video>
				</div>  --> 
<img class="background-image" src="AboutUsNew.png" alt="Background Image">
    <div class="overlay-text">
    
	</div> 
 </div>
 
<br>
	<section id="Sectioncard">
        <hr>
		<div class="card-container">
			<div class="card" style="font-size: large;">
              
				JP Sports Arena is a vibrant sporting haven
				that encapsulates the spirit of competition and camaraderie. As a
				meticulously designed turf, it offers a dynamic space where athletes
				and enthusiasts can come together to engage in their favorite sports
				and activities. The arena's well-maintained synthetic surface
				provides the perfect backdrop for soccer, cricket, and other team
				sports, ensuring optimal performance and excitement. With its modern
				facilities and inviting ambiance, JP Sports Arena beckons both
				seasoned players and newcomers to embrace their love for sports,
				fostering a sense of community and achievement. Whether it's a
				high-energy match or a casual game, this versatile turf stands as a
				testament to the joy and vitality that sports bring to our lives.</div>
			<div class="card">
			<img src="https://img.freepik.com/free-photo/sports-tools_53876-138077.jpg?w=2000"  id="search">
			  
			</div>
		  </div>
</section>
<hr>
<section class="sectioninfo">
		<div class="sectioninformation">
			<div class="card1">
				<img src="JP SPorts.jpg" id="cimg">
			</div>
			
			<div class="card1">
			  <h3 ><ul>
				<li> <a href="Home.jsp">Home</a></li><br>
				<li> <a href="https://earth.google.com/web/@19.2004638,72.8163693,15.86413847a,991.11700013d,35y,0h,45t,0r/data=CkQaQhI8CiUweDNiZTdiN2UxMjcwZDA4YzU6MHhkMWQ2M2QyZDFlODk0N2U1KhNTaXIgSlAgU3BvcnRzIEFyZW5hGAIgASgC ">
    Location</a></li><br>
				<li><a href="AboutUs.jsp">About Us</a></li><br>
				<li><a href="#">Book Turf</a></li><br>
				<li><a href="#">Admin</a></li><br>
			  </ul>
			</h3>
			</div>
			
			<div class="card1">
			<h4>Location :-</h4>
				<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d11938.07374390386!2d72.8169157936579!3d19.20471319548025!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3be7b7e1270d08c5%3A0xd1d63d2d1e8947e5!2sSir%20JP%20Sports%20Arena!5e0!3m2!1sen!2sin!4v1692271662435!5m2!1sen!2sin" width="250" height="250" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
			  </div>
			  <div clas="card1">
		<h4>Our Social Media Account's</h4>
				&nbsp;&nbsp;&nbsp;&nbsp;<a href="#"><i class="social-icon fa fa-instagram"></i></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<a href="#"><i class="social-icon fa fa-facebook"></i></a>&nbsp;&nbsp;&nbsp;&nbsp;
				<a href="#"><i class="social-icon fa fa-twitter"></i></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			  </div>
			  </div>
			</div>
		  </div>
	</section>
  </div>
</body>
</html>
