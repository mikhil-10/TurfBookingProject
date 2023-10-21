<!DOCTYPE html>
<html>
<head>
    <title>JP Sports Arena</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #262525;
        }

        .login-container {
            max-width: 400px;
            margin: 0 auto;
            padding: 30px;
            background-color: #ffffff;
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            margin-top: 220px;
        }

        .login-heading {
            text-align: center;
            margin-bottom: 30px;
        }

        .login-input {
            border-radius: 5px;
        }

        .login-button {
            background-color: #007bff;
            border: none;
            border-radius: 5px;
            padding: 10px 20px;
            color: white;
            cursor: pointer;
            width: 100%;
        }

        .login-button:hover {
            background-color: #0056b3;
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
<div class="container-fluid" style="">
    <div class="row justify-content-center">
        <div class="col-lg-6">
            <div class="login-container">
                <h2 class="login-heading">Admin Login</h2>
                <form action="AdminLoginController" method="post">
                    <div class="mb-3">
                        <label for="username" class="form-label">Username</label>
                        <input type="text" class="form-control login-input" id="username" name="username" required>
                    </div>
                    <div class="mb-3">
                        <label for="password" class="form-label">Password</label>
                        <input type="password" class="form-control login-input" id="password" name="password" required>
                    </div>
                    <button type="submit" class="btn login-button">Login</button>
                </form>
            </div>
        </div>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
