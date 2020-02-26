<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="g" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<title>Login System</title>
<head>
   <!-- Favicon and touch icons -->
   <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">
        <link rel="shortcut icon" href="assets/ico/favicon.ico">
        <link rel="apple-touch-icon-precomposed" sizes="144x144" href="assets/ico/apple-touch-icon-144-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="114x114" href="assets/ico/apple-touch-icon-114-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="72x72" href="assets/ico/apple-touch-icon-72-precomposed.png">
        <link rel="apple-touch-icon-precomposed" href="assets/ico/apple-touch-icon-57-precomposed.png">

        <!-- CSS -->
        <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Open+Sans:400,300">
        <link href='http://fonts.googleapis.com/css?family=PT+Sans' rel='stylesheet' type='text/css'>
        <link href="http://fonts.googleapis.com/css?family=Raleway" rel="stylesheet" type="text/css">
        <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.css">
        <link rel="stylesheet" href="assets/css/font-awesome.min.css">
        <link rel="stylesheet" href="assets/css/animate.min.css">
        <link rel="stylesheet" href="assets/css/style.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>
<%
	if(session.getAttribute("name")!=null)
	{
		response.sendRedirect("dashboard.jsp");
	}
	
   %>
    <style>
    .menu{
background-color:black;
box-shadow: 0 6px 8px -2px yellow;
}
        body {
            background-color: #FBFCFC;
        }

        .log {
            background-color: white;
            height: 500px;
            width: 450px;
            margin-top: 50px;
        }

        .texts {
            background-color: #6cbe03;
            height: 40px;
            width: 420px;
        }

        .foot {
            background-color: #6cbe03;
            height: 40px;
            width: 420px;
            margin-top: 30px;
        }
        .logof{
color:yellow;
margin-left:60px;
}
.first{
margin-left:-55px;
}
.office-logos{

}
.home{
background-color:yellow;
}
.office-logos{
    height:75px;
    margin-bottom:50px;
    }
    </style>
 <nav id="navbar-section" class="navbar navbar-default navbar-static-top navbar-sticky menu" role="navigation">
        <div class="container">
        
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-responsive-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
              <a class="navbar-brand wow fadeInDownBig first" href="start.jsp"><img class="office-logo office-logos" src="assets/img/slider/logof.png" alt="Office"></a>
                <h3 class="logof">Sumeru Fitness</h3> 
                    
            </div>
        
            <div id="navbar-spy" class="collapse navbar-collapse navbar-responsive-collapse">
                <ul class="nav navbar-nav pull-right">
                    <li class=" home">
                        <a href="start.jsp">Home</a>
                    </li>
                    <li>
                        <a href="#">About</a>
                    </li>
                    <li>
                        <a href="#">Contact</a>
                    </li>
                </ul>         
            </div>
        </div>
    </nav>
    <form action="LoginServlet" method="post">
        <div class="container log">
            <div class="texts"></div>
            <h2 class="text-center" style="margin-top:40px">User Login</h2>
            <div class="form-group">
                <div class="input-group" style="margin-top:50px">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                    <input id="email" type="text" class="form-control" name="uname" placeholder="Enter The Username" Required="required">
                </div>
                <div class="input-group" style="margin-top:35px">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                    <input id="password" type="password" class="form-control" name="pword" placeholder="Enter The Password" Required="required">
                </div>
                <div class="input-group" style="margin-top:35px">
                   <button type="submit" class="btn btn-primary btn-lg">Login</button>
                </div>
                <div style="margin-top:20px">
                    <h5 class="text-center text-danger" style="cursor:pointer">Forget Password!</h5><br />
                </div>
                <p class="text-center" style="margin-top:-25px">Create a  new account!<span class="text-primary font-weight-bold" style="cursor:pointer"><a href="Register.jsp">Register</a></span></p>
            </div>
            <div class="foot"></div>

        </div>
    </form>
     <!-- Footer -->
    <footer> 
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <h3><i class="fa fa-map-marker"></i> Contact:</h3>
                    <p class="footer-contact">
                        Tinkune Gairigau Kathmandu Nepal<br>
                        Phone: +977 01-4035-367 Fax: 1-287-83983<br>
                        Email: fitsupplier123@gmail.com<br>
                    </p>
                </div>
                <div class="col-md-4">
                    <h3><i class="fa fa-external-link"></i> Links</h3>
                    <p> <a href="#"> About</a></p>
                    <p> <a href="#"> Services</a></p>
                    <p> <a href="#"> Contact</a></p>
                    <p> <a href="#"> Blog</a></p>
                    <p> <a href="#"> Team </a></p> 
                </div>
              <div class="col-md-4">
                <h3><i class="fa fa-heart"></i> Follow Us</h3>
                <div id="social-icons">
                    <a href="#" class="btn-group google-plus">
                        <i class="fa fa-google-plus"></i>
                    </a>
                      <a href="#" class="btn-group linkedin">
                        <i class="fa fa-linkedin-square"></i>
                    </a>
                      <a href="#" class="btn-group twitter">
                        <i class="fa fa-twitter"></i>
                    </a>
                      <a href="#" class="btn-group facebook">
                        <i class="fa fa-facebook"></i>
                    </a>
                </div>
              </div>    
        </div>
      </div>
    </footer>

    
    <div class="copyright text center">
        <p>&copy; Copyright 2020, Fitness suppliers Pvt</a></p>
    </div>
    </body>
</html>