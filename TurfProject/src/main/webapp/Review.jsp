<%@ page import="java.sql.*"%>
<!doctype html>
<html lang="en">

<head>
<title>JP Sports Arena</title>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS v5.2.1 -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT"
	crossorigin="anonymous">
<style>
/* Your custom CSS styles */
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
</style>
</head>

<body>
	<header>
		<!-- place navbar here -->
		<nav class="navbar navbar-expand-lg navbar-dark  fixed-top">
			<a class="navbar-brand" href="Welcome.jsp"> <img
				src="JP SPorts.jpg" alt="Logo" height="60">
			</a> <a href="Home.jsp">Home</a> <a href="UserLogin.jsp">Booking Details</a> <a
				href="BookTurf.jsp">Book Turf</a> <a href="AdminLogin.jsp">Admin</a>
			</div>
		</nav>

	</header>
	<main>
		<section class="cards" style="background-color: black;">
			<h2 class="text-center"
				style="color: rgb(124, 13, 227); margin-top: 60px;">Cricket
				Turf</h2>
			<div class="container" style="margin-top: 100px;">
				<div class="row">
					<div class="col-md-6">
						<div id="carouselId" class="carousel slide"
							data-bs-ride="carousel">
							<ol class="carousel-indicators">
								<li data-bs-target="#carouselId" data-bs-slide-to="0"
									class="active" aria-current="true" aria-label="First slide"></li>
								<li data-bs-target="#carouselId" data-bs-slide-to="1"
									aria-label="Second slide"></li>
								<li data-bs-target="#carouselId" data-bs-slide-to="2"
									aria-label="Third slide"></li>
								<li data-bs-target="#carouselId" data-bs-slide-to="3"
									aria-label="Fourth slide"></li>
							</ol>
							<div class="carousel-inner" role="listbox">
								<div class="carousel-item active">
									<img
										src="https://www.dugoutchennai.com/wp-content/uploads/2022/12/bg-cricket.jpg"
										class="w-100 d-block" alt="First slide">
								</div>
								<div class="carousel-item">
									<img src="cricketturf.png" class="w-100 d-block"
										alt="Second slide">
								</div>
								<div class="carousel-item">
									<img
										src="https://content.jdmagicbox.com/comp/mumbai/x4/022pxx22.xx22.201211163523.i4x4/catalogue/turfexcel-hiranandani-powai-mumbai-cricket-turf-grounds-7s95nrbv0v.jpg?clr="
										class="w-100 d-block" alt="Second slide">
								</div>
								<div class="carousel-item">
									<img
										src="https://lh3.googleusercontent.com/p/AF1QipNk5P65xoyf6UsWFxzg8lL2KdPtvJAgRB87chmp=w1080-h608-p-k-no-v0"
										class="w-100 d-block" alt="Third slide">
								</div>
							</div>

						</div>
					</div>
					<div class="col-md-6" id="card2">
						<div class="card">
							<div class="card-body">
								<h2 class="card-title" style="color: rgb(124, 13, 227);">Amenities:</h2>
								<h5 class="card-text">-Goalposts -Bats -Balls -Footballs
									-Changing Rooms</h5>
							</div>
							<hr>
							<div class="card-body">
								<h2 class="card-title" style="color: rgb(124, 13, 227);">Rules:</h2>
								<h5 class="card-text">
									<pre>
- NO SMOKING
- NO ALCOHOL CONSUMPTION
- NO SPITTING
- Book A + B or B + C for 7v7 (Football)
- Book A + B + C for 9v9 (Football)
- ALL 4 GROUNDS ARE OF SIMILAR DIMENSIONS
- MANAGEMENT HOLDS THE RIGHT TO SHIFT CUSTOMERS TO 
ANOTHER GROUND (within UMRB) UNDER CERTAIN 
CIRCUMSTANCES.
        
      </pre>
								</h5>
							</div>
						</div>
					</div>
				</div>
			</div>
			<br> <br>
		</section>

		<section class="mt-5" style="background-color: black;">
			<br> <br>
			<div class="container">
				<div class="row">
					<div class="col-md-4">
						<div class="card text-center">
							<img
								src="https://www.dugoutchennai.com/wp-content/uploads/2022/12/bg-cricket.jpg"
								class="card-img-top" alt="Turf 1">
							<div class="card-body">
								<h5 class="card-title">Ground 1</h5>
								<p class="card-text">
									-Turf<br>-Outdoor<br>-6 x 6
								</p>
								<a href="CricketForm1.jsp" class="btn btn-primary">Book Now</a>
							</div>
						</div>
					</div>
					<div class="col-md-4">
						<div class="card text-center">
							<img
								src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTcqckwxrXugoD1IW3VaQtQfCdAn5xan-lCLzeN-oxjzSetAdsToapZtQVFZbNagXjHeck&usqp=CAU"
								class="card-img-top" alt="6x6 Turf">
							<div class="card-body">
								<h5 class="card-title">Ground 2</h5>
								<p class="card-text">
									-Turf<br>-Outdoor<br>-6 x 6
								</p>
								<a href="CricketForm2.jsp" class="btn btn-primary">Book Now</a>
							</div>
						</div>
					</div>
					<div class="col-md-4">
						<div class="card text-center">
							<img
								src="https://lh3.googleusercontent.com/p/AF1QipNk5P65xoyf6UsWFxzg8lL2KdPtvJAgRB87chmp=w1080-h608-p-k-no-v0"
								class="card-img-top" alt="Another Turf">
							<div class="card-body">
								<h5 class="card-title">Ground 3</h5>
								<p class="card-text">
									-Turf<br>-Outdoor<br>-6 x 6
								</p>
								<a href="CricketForm3.jsp" class="btn btn-primary">Book Now</a>
							</div>
						</div>
					</div>
				</div>
			</div>
			<br> <br>
		</section>
		<br>
		<section class="mt-5"
			style="background-color: black; color: aliceblue;">
			<br> <br>
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<h2 class="text-center" style="color: rgb(124, 13, 227);">Leave
							a Review</h2>
						<form action="SubmitReviewServlet" method="post">
							<label for="name">Name:</label> <input type="text" id="name"
								name="name" required> <label for="rating">Ratings</label>
							<select id="rating">
								<option>5 stars</option>
								<option>4 stars</option>
								<option>3 stars</option>
								<option>2 stars</option>
								<option>1 star</option>
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
                            <label for="rating">Ratings: <%= ratings %></label><br>
                            <label for="comment">Comment:</label><br>
                            <textarea name='id' rows="3" class="form-control" readonly><%= comment %></textarea><br>
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

</html>

