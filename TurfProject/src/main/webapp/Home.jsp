<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <!-- Add Bootstrap CSS link here -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <style>
    /* Your custom styles here */
    body{
     
      
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
      
    
      /*IMAGE*/
      #search{
		height: 70px;
		margin-left: 39%;
        width: auto;
	  }

      .sectioninfo{
        background-color: black;
      }

      .card{
        border-color: rgb(255, 255, 255);
        box-shadow: none;
      }
  </style>
  <title>JP Sports Arena</title>
</head>
<body>
  <!-- Navbar -->
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

  <!-- Hero Video -->
  <div class="container-fluid p-0">
    <div class="embed-responsive embed-responsive-16by9">
      <video autoplay loop muted class="embed-responsive-item">
        <source src="AboutUsV.mp4" type="video/mp4">
      </video>
    </div>
  </div>

  <!-- Card Section -->
  <section class="container mt-5">
    <div class="row">
      <div class="col-md-4">
        <div class="card">
          <img src="search.png" class="card-img-top mx-auto mt-4" alt="Search" id="search">
          <div class="card-body text-center">
            <h2 class="card-title">Search</h2>
            <p class="card-text">Are you looking to play after work or organize a match? Explore sports facilities all over India.</p>
          </div>
        </div>
      </div>
      <div class="col-md-4">
        <div class="card">
          <img src="play.png" class="card-img-top mx-auto mt-4" alt="Play" id="search">
          <div class="card-body text-center">
            <h2 class="card-title">Play</h2>
            <p class="card-text">Book a stunning turf or court and get ready for an epic match.</p>
          </div>
        </div>
      </div>
      <div class="col-md-4">
        <div class="card">
          <img src="Book.png" class="card-img-top mx-auto mt-4" alt="Book" id="search">
          <div class="card-body text-center">
            <h2 class="card-title">Book</h2>
            <p class="card-text">Connect with venues, make online bookings, and secure easy payments.</p>
          </div>
        </div>
      </div>
    </div>
  </section><br><br><hr>

<section class="container mt-5" id="AboutUs">
  <h2 style="text-align: center; background-color: black; color: aliceblue;">About Us</h2>
    <div class="row">
      <div class="col-md-6" >
        <div class="card">
          <div class="card-body text-center" style="background-color: cornsilk; border-radius: 100px; margin-top: 30px;">
            <h2 class="card-title"> </h2>
            <p class="card-text">              
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
              testament to the joy and vitality that sports bring to our lives</p>
          </div>
        </div>
      </div>
      <div class="col-md-6">
        <div class="card">
          <img src="https://img.freepik.com/free-photo/sports-tools_53876-138077.jpg?w=2000" class="card-img-top mx-auto mt-4" alt="Play" style="border-radius: 100px;" >
          <div class="card-body text-center"></div>
        </div>
      </div>
    </div>
  </section><br><br><hr><br><br><br>

  <!-- Social Media Section -->
  <section class="sectioninfo text-light py-4">
    <div class="container">
      <div class="row">
        <div class="col-md-3">
          <img src="JP SPorts.jpg" class="img-fluid" alt="Logo">
        </div>
        <div class="col-md-3">
          <h3>Quick Links</h3>
          <ul class="list-unstyled">
            <li><a href="Home.jsp">Home</a></li>
            <li><a href="https://goo.gl/maps/c4yDQcBTBUxHG2Qm9">Location</a></li>
            <li><a href="AboutUs.jsp">About Us</a></li>
            <li><a href="BookTurf.jsp">Book Turf</a></li>
            <li><a href="AdminLogin.jsp">Admin</a></li>
          </ul>
        </div>
        
        <div class="col-md-3">
          <h4>Location</h4>
          <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d11938.07374390386!2d72.8169157936579!3d19.20471319548025!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3be7b7e1270d08c5%3A0xd1d63d2d1e8947e5!2sSir%20JP%20Sports%20Arena!5e0!3m2!1sen!2sin!4v1692271662435!5m2!1sen!2sin" width="250" height="250" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
        </div>
        <div class="col-md-3 text-light py-4">
            <h4>Contact Us</h4>
            <pre><p style="color: aliceblue;">Number: 1234567890
Email: <a href="">jpsports@gmail.com</a>
            </p></pre>
        </div>
      </div>
    </div>
      <div class="row mt-4">
        <div class="col-md-12 text-center">
          <h4>Follow Us</h4>
          <div class="social-logos col-xxl">
            <a href="#" class="social-icon"><i class="fa fa-instagram"></i></a>
            <a href="#" class="social-icon"><i class="fa fa-facebook"></i></a>
            <a href="#" class="social-icon"><i class="fa fa-twitter"></i></a>
          </div>
        </div>
      </div>
    </div>
  </section>

  <!-- Bootstrap JS scripts here -->
  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.1/dist/umd/popper.min.js"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
