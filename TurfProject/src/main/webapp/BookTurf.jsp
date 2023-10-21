<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>JP Sports Arena</title>
  <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
  <style>
    html {
      scroll-behavior: smooth;
    }
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
      	  #image{
		max-height: 250px;
		max-width: 400px;
		margin-left: 5%;
		border-radius: 30px;
    margin-top: 10px;
	  }
	  .container{
		margin-top: 50px;
    max-width: 950px;
	  }
	  
    #btn{
      padding-left: 48%;
      padding-right: 42%;
      border-radius: 8px;
    }
  </style>
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-dark  fixed-top">
		<a class="navbar-brand" href="Welcome.jsp">
		  <img src="JP SPorts.jpg" alt="Logo" height="60">
		</a>
		<a href="Home.jsp">Home</a>
		<a href="UserLogin.jsp">Booking Details</a>
		<a href="BookTurf.jsp">Book Turf</a>
		 <a href="AdminLogin.jsp">Admin</a>
	  </div>
	</nav>
	
  <section style="background-color: black;">
    <div class="container" >
      <h2 style="margin-top: 90px; text-align: center; background-color: #262525; color: aliceblue; padding: 40px;" >Book Turf</h2>
        <div class="row">
      <div class="col-md-6">
        <div class="card" style="border-radius: 20px; margin-top: 20px;">
          <img src="https://st3.depositphotos.com/1006994/36643/v/450/depositphotos_366435302-stock-illustration-cricket-banner-batsman-championship-background.jpg" class="card-img-top" alt="Card Image" id="image"> 
          <div class="card-body" >
            <h5 class="card-title">Cricket Turf</h5>
            <p class="card-text">Here you will get to see Cricket Turf's.</p>
            <hr>
            <a href="CricketTurf.jsp" class="btn btn-primary" id="btn">View</a>
          </div>
        </div>
      </div>
      <div class="col-md-6">
        <div class="card" style="border-radius: 20px; margin-top: 20px;">
          <img src="https://static.vecteezy.com/system/resources/previews/012/903/913/original/football-illustration-file-sports-design-logo-free-png.png" class="card-img-top" alt="Card Image" id="image">
          <div class="card-body">
            <h5 class="card-title">Football Turf</h5>
            <p class="card-text">Here you will get to see Football Turf's.</p>
            <hr>
            <a href="footballturf.jsp" class="btn btn-primary " id="btn">View</a>
          </div>
        </div>
      </div>
    </div>
  </div>
  <br>
</section>

  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.1/dist/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
