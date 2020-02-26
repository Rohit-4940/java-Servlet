<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="g" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Register System</title>
<style>
body{
		color: #29EA8F;
		background-image: url("slide2.jpg");
		font-family: 'Roboto', sans-serif;
	}
	.home{
	background-color:yellow;
	}
    .form-control{
		height: 41px;
		background: #f2f2f2;
		box-shadow: none !important;
		border: none;
	}
	.form-control:focus{
		background: #e2e2e2;
	}
    .form-control, .btn{        
        border-radius: 3px;
    }
	.signup-form{
		width: 390px;
		margin: 30px auto;
	}
	.signup-form form{
		color: #999;
		border-radius: 3px;
    	margin-bottom: 15px;
        background: #fff;
        box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
        padding: 30px;
    }
	.signup-form h2 {
		color: #333;
		font-weight: bold;
        margin-top: 0;
    }
    .signup-form hr {
        margin: 0 -30px 20px;
    }    
	.signup-form .form-group{
		margin-bottom: 20px;
	}
	.signup-form input[type="checkbox"]{
		margin-top: 3px;
	}
	.signup-form .row div:first-child{
		padding-right: 10px;
	}
	.signup-form .row div:last-child{
		padding-left: 10px;
	}
    .signup-form .btn{        
        font-size: 16px;
        font-weight: bold;
		background: #3598dc;
		border: none;
		min-width: 140px;
    }
	.signup-form .btn:hover, .signup-form .btn:focus{
		background: #2389cd !important;
        outline: none;
	}
    .signup-form a{
		color: #fff;
		text-decoration: underline;
	}
	.signup-form a:hover{
		text-decoration: none;
	}
	.signup-form form a{
		color: #3598dc;
		text-decoration: none;
	}	
	.signup-form form a:hover{
		text-decoration: underline;
	}
    .signup-form .hint-text {
		padding-bottom: 15px;
		text-align: center;
    }
    .hint-text{
    color:black;
    }
    .signup{
    background-color:blue;
    }
    .office-logos{
    height:70px;
    }
    .log-text{
    color:#0EDCDF;
    font-weight: bold;
    }
    .account{
     color:#0EDCDF;
    }
    .foot{
    background-color:black;
    height:300px;
    width:100%;
    }
.logof{
color:yellow;
margin-left:60px;
}

.menu{
background-color:black;
box-shadow: 0 6px 8px -2px yellow;
}
.navs{
margin-top:10px;
}
</style>
<body>
 <nav id="navbar-section" class="navbar navbar-default navbar-static-top navbar-sticky menu" role="navigation">
        <div class="container">
        
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-responsive-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
              <a class="navbar-brand wow fadeInDownBig first" href="start.jsp"><img class="office-logos" src="assets/img/slider/logof.png" alt="Office"></a>
                <h3 class="logof">Sumeru Fitness</h3> 
                    
            </div>
        
            <div id="navbar-spy" class="collapse navbar-collapse navbar-responsive-collapse">
                <ul class="nav navbar-nav pull-right navs">
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
<div class="signup-form">
    <form action="RegisterServlet" method="post">
		<h2>Sign Up</h2>
		<p class="account">Please fill in this form to create an account!</p>
		<hr>
        <div class="form-group">
			<div class="row">
				<div class="col-xs-4"><input type="text" class="form-control" name="fname" placeholder="First Name" required="required"></div>
				<div class="col-xs-4"><input type="text" class="form-control" name="mname" placeholder="Middle Name"></div>
				<div class="col-xs-4"><input type="text" class="form-control" name="lname" placeholder="Last Name" required="required"></div>
			</div>        	
        </div>
        <div class="form-group">
        	<input type="text" class="form-control" name="uname" placeholder="Enter The Username" required="required">
        </div>
		<div class="form-group">
            <input type="email" class="form-control" name="email" placeholder="Enter The E-mail" required="required">
        </div>
		<div class="form-group">
            <input type="password" class="form-control" name="pword" placeholder=" Enter The Password" required="required">
        </div>    
        <div class="form-group">
            <input type="radio" name="User" value="User" required="required">  Are you agreed with login system
        </div>     
		<div class="form-group">
            <button type="submit" class="btn btn-success btn-lg">Sign Up</button>
        </div>
    </form>
	<div class="hint-text">Already have an account? <a href="Login.jsp"><span class="log-text">Login here</span></a></div>
</div>

<div class="foot">
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

</body>
</html>
