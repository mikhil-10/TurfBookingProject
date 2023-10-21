<%@ page import="java.sql.*"%>
<!doctype html>
<html lang="en">

<head>
  <title>JP Sports Arena</title>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <!-- Bootstrap CSS v5.2.1 -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
<style>
      /* Your custom CSS styles */
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
      .card{
        border-radius: 6px;
        border-color: rgb(0, 0, 0);
        box-shadow: 0;
      }
      #img{
        max-height: 700px;
        border-radius:5px;
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
	padding-right:70%;
}
</style>
</head>

<body>
  <header>
    <!-- place navbar here -->
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

  </header>
  <main>
    <section class="cards" style="background-color: black;">
        <h2 class="text-center" style="color: rgb(124, 13, 227); margin-top: 60px;" >Football Turf</h2>
        <div class="container" style="margin-top: 100px;">
          <div class="row">
            <div class="col-md-6">
    <div id="carouselId" class="carousel slide" data-bs-ride="carousel">
        <ol class="carousel-indicators">
            <li data-bs-target="#carouselId" data-bs-slide-to="0" class="active" aria-current="true" aria-label="First slide"></li>
            <li data-bs-target="#carouselId" data-bs-slide-to="1" aria-label="Second slide"></li>
            <li data-bs-target="#carouselId" data-bs-slide-to="2" aria-label="Third slide"></li>
            <li data-bs-target="#carouselId" data-bs-slide-to="3" aria-label="Fourth slide"></li>
        </ol>
        <div class="carousel-inner" role="listbox">
            <div class="carousel-item active">
                <img src="https://gumlet.assettype.com/homegrown%2F2022-12%2F47df9604-5b97-41d8-8df7-f569186f928e%2FWhatsApp_Image_2022_12_16_at_5_54_07_PM.jpeg?auto=format%2Ccompress&fit=max&format=webp&w=400&dpr=2.6" class="img-fluid" alt="Turf Image 1" id="img">
          </div>
            <div class="carousel-item">
                <img src="https://media.hudle.in/photos/47421" alt="Turf 1">
            </div>
            <div class="carousel-item">
                <img src="https://media.hudle.in/venues/726e51b8-28e7-4edf-83ad-ad9a98dec965/photo/d56f81f4854092d89dd20087dae1458ad11fb30b" alt="Another Turf">
            </div>
            <div class="carousel-item">
                <img src="https://5.imimg.com/data5/SELLER/Default/2022/8/DG/TO/XK/122137434/futsal-artificial-grass-ground-500x500.jpeg" alt="6x6 Turf">
             </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselId" data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselId" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
        </button>
    </div>
</div>
<div class="col-md-6" id="card2">
    <div class="card">
      <div class="card-body">
        <h2 class="card-title" style="color: rgb(124, 13, 227);">Amenities:</h2>
        <h5 class="card-text">
          -Goalposts
          -Bats
          -Balls
          -Footballs
          -Changing Rooms
        </h5>
      </div>
      <hr>
      <div class="card-body">
        <h2 class="card-title" style="color: rgb(124, 13, 227); ">Rules:</h2>
        <h5 class="card-text"><pre>
-Wear appropriate footwear.
-Ensure safety and turf condition.
-Follow equipment rules.
-Respect boundaries, goal areas, and penalty areas.
-Adhere to substitution and gameplay rules.
-Exhibit good sportsmanship.
-Avoid actions that damage the turf.
-Consider environmental factors. 
        
      </pre></h5>
      </div>
    </div>
  </div>
</div>
</div>
<br><br>
</section>
<section class="mt-5" style="background-color: black;">
    <br>
    <div class="container">
      <div class="row">
        <div class="col-md-4">
          <div class="card text-center">
            <img src="https://media.hudle.in/photos/47421" alt="Turf 1">
            <div class="card-body">
              <h5 class="card-title">Ground 1</h5>
              <p class="card-text">-Turf<br>-Outdoor<br>-6 x 6</p>
              <a href="FootballForm1.jsp" class="btn btn-primary">Book Now</a>
            </div>
          </div>
        </div>
        <div class="col-md-4">
          <div class="card text-center">
            <img src="https://5.imimg.com/data5/SELLER/Default/2022/4/DZ/XW/EK/2156888/football-turf-500x500.jpg" alt="6x6 Turf">
            <div class="card-body">
              <h5 class="card-title">Ground 2</h5>
              <p class="card-text">-Turf<br>-Outdoor<br>-6 x 6</p>
              <a href="FootballForm2.jsp" class="btn btn-primary">Book Now</a>
            </div>
          </div>
        </div>
        <div class="col-md-4">
          <div class="card text-center">
            <img src="https://media.hudle.in/venues/726e51b8-28e7-4edf-83ad-ad9a98dec965/photo/d56f81f4854092d89dd20087dae1458ad11fb30b" alt="Another Turf">
            <div class="card-body">
              <h5 class="card-title">Ground 3</h5>
              <p class="card-text">-Turf<br>-Outdoor<br>-6 x 6</p>
              <a href="FootballForm3.jsp" class="btn btn-primary">Book Now</a>
            </div>
          </div>
        </div>
      </div>
    </div>
    <br>
  </section>
  	<section class="mt-5"
			style="background-color: black; color: aliceblue;">
			<br> <br>
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<h2 class="text-center" style="color: rgb(124, 13, 227);">Leave
							a Review</h2>
						<form action="RatingController" method="post">
							<label for="name">Name:</label> <input type="text" id="name"
								name="name" required> <label for="ratings">Ratings</label>
							<select id="ratings"  name="ratings">
								<option>5 stars</option>
								<option>4 stars</option>
								<option>3 stars</option>
								<option>2 stars</option>
								<option>1 stars</option>
							</select><br> <label for="comment">Comment:</label><br>
							<textarea id="comment" name="comment" rows="4" cols="50" required></textarea>
							<br> <br>

							<button type="submit" id="btn">Submit Review</button>
						</form>
					</div>
				</div>
			</div>
			<br> <br>
		</section>

		<br> <br>
		<section class="mt-5" style="background-color: black; ">
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
                        <form action="">
                            <label for="name">Comment Number: <%= id %></label><br>
                            <label for="name">Name: <%= username %></label><br>
                            <label for="ratings">Ratings: <%= ratings %></label><br>
                            <label for="comment">Comment:</label><br>
                            <textarea name='' rows="3" class="form-control" readonly><%= comment %></textarea><br>
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
    <br><br>
</section>
  
  </main>
  <footer>
    <!-- place footer here -->
  </footer>
  <!-- Bootstrap JavaScript Libraries -->
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
    integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous">
  </script>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.min.js"
    integrity="sha384-7VPbUDkoPSGFnVtYi0QogXtr74QeVeeIs99Qfg5YCF+TidwNdjvaKZX19NZ/e6oz" crossorigin="anonymous">
  </script>
</body>

</html>