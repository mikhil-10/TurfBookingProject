<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <title>JP Sports Arena</title>
  <style>
	*{
		font-family: 'BankGothic MD BT', sans-serif;
	}
body{
       background-color: black;
	   font-family: 'BankGothic MD BT', sans-serif;
    }
    h1{
        color: azure;
        padding-top: 13%;   
      }
    .animated-text {
      animation: fadeInUp 5s ease-in-out;
      opacity: 0;
    }

    @keyframes fadeInUp {
      0% {
        transform: translateY(20px);
        opacity: 0;
        display: block;
      }

      100% {
        transform: translateY(0);
        opacity: 1;
      }
    }
    .navbar {
      background-color: #000;
    }

    .navbar-brand img {
      max-height: 65px;
      margin-left: 10px;
    }
   

	.logo-container {
	position: relative;
	width: 200px;
	height: auto;
  }
  
  .logo-container img {
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: auto;
	z-index: 1;
  }
  
  .logo-container video {
	position:absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: auto;
	z-index: 0;
	opacity: 0.9; /* Adjust the opacity as needed */
  }
  
  .content{
	text-align: center;
  }
  </style>
</head>
<body> 
<nav class="navbar navbar-expand-lg navbar-dark">
    <a class="navbar-brand" href="#">
		<div class="logo-container">
			<video autoplay loop muted>
			  <source src="JP SPorts.mp4" type="video/mp4">
			</video>
		</div>
    </a>
</nav>
  <div class="content">
  <div class="container text-center mt-5">
	<br><br><br><br><br>
    <h1 id="animated-text" class="animated-text"><b>Welcome to JP Sports Arena ...</b></h1>
    <a href="Home.jsp" class="btn btn-primary mt-3" id="enter" hidden="hidden"></a>
  </div>
</div>
  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/js/bootstrap.min.js"></script>
  <script>
    document.addEventListener('DOMContentLoaded', function() {
      setTimeout(function() {
        document.getElementById('enter').click();
      }, 3000);	
    });
  </script>
</body>
</html>
