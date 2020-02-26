<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="g" uri="http://java.sun.com/jsp/jstl/core" %> 
<!doctype html>
<html lang="en">
    <head>

        <!-- meta data & title -->
        <meta charset="utf-8">
        <title>Welcome to Fitness Supplier</title>
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
        
    </head>
  <body>
<style>
.menu{
background-color:black;
box-shadow: 0 6px 8px -2px yellow;
}
#active{
background-color:yellow;
}
.btn:hover{
color:white;
}
btn a{
color:white;
}
.log{
border-buttom:2px solid yellow;
}
.services-header-titles{
color:red;
font-size:65px;
font-weight:bold;
padding-top: -50px;
 text-align: center;
}
.logof{
color:yellow;
margin-left:60px;
}
.first{
margin-left:-55px;

}
.office-logos{
    height:80px;
    }
 .footers{
 color:yellow;
 }
 .centered {
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
}
.centered {
	display: inline-block;
	padding: 10px 14px;
	color: #FFF;
	border: 2px solid #16EAEA;
	text-decoration: none;
	font-size: 14px;
	line-height: 120%;
	background-color: rgba(255,255,255, 0);
	-webkit-border-radius: 4px;
	-moz-border-radius: 4px;
	border-radius: 4px;
	-webkit-transition: background-color 300ms ease;
	-moz-transition: background-color 300ms ease;
	transition: background-color 300ms ease;
	cursor: pointer;
}
.centered:hover {
	background-color: yellow;
	color: #FFF;
}
.centered.blue {
	color: #aeddf5;
	border-color: #aeddf5;
}
.centered.blue:hover {
	background-color: yellow;
}
</style>
<% //In case, if User session is not set, redirect to Login page.
if((request.getSession(false).getAttribute("User")!= null) )
{
%>
<jsp:forward page="dashboard.jsp"></jsp:forward>
<%} %>
    <!-- Header -->
     <form action="LoginServlet" method="post">
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
                    <li id="active">
                        <a href="start.jsp">Home</a>
                    </li>
                    <li class="btn">
                        <a href="#">About</a>
                    </li>
                    <li class="btn">
                        <a href="#">Contact</a>
                    </li>
                    <li class="btn">
                        <a href="#">Services</a>
                    </li>
                    <li class="btn">
                        <a href="Login.jsp" class="menu"><span >Login</span></a>
                    </li>
                </ul>         
            </div>
        </div>
    </nav>
    <hr class="line"/>

    <!-- End Header -->


    <!-- Begin #carousel-section -->
    <section id="carousel-section" class="section-global-wrapper"> 
        <div class="container-fluid-kamn">
            <div class="row">
                <div id="carousel-1" class="carousel slide" data-ride="carousel">

                    <!-- Indicators -->
                    <ol class="carousel-indicators visible-lg">
                        <li data-target="#carousel-1" data-slide-to="0" class="active"></li>
                        <li data-target="#carousel-1" data-slide-to="1"></li>
                        <li data-target="#carousel-1" data-slide-to="2"></li>
                    </ol>
        
                    <!-- Wrapper for slides 2-->
                    <div class="carousel-inner" role="listbox">
                        <!-- Begin Slide 1 -->
                        <div class="item active">
                            <img src="assets/img/slider/slide1.jpg" height="150" alt="Image of first carousel">
                            <div class="carousel-caption">
                                
                            </div>
                        </div>
                        <!-- End Slide 2 -->

                        <!-- Begin Slide 3 -->
                        <div class="item">
                            <img src="assets/img/slider/slide4.jpg" height="150" alt="Image of third carousel">
                            <div class="carousel-caption">
                                
                            </div>
                        </div>
                        <!-- End Slide 3 -->
                           
                        <!-- Begin Slide 3 -->
                        <div class="item">
                            <img src="assets/img/slider/slide5.jpg" height="150" alt="Image of third carousel">
                            <div class="carousel-caption">
                            </div>
                        </div>
                        <!-- End Slide 3 -->
                    </div>
        
                    <!-- Controls -->
                    <a class="left carousel-control" href="#carousel-1" data-slide="prev">
                        <span class="glyphicon glyphicon-chevron-left"></span>
                    </a>
                    <a class="right carousel-control" href="#carousel-1" data-slide="next">
                        <span class="glyphicon glyphicon-chevron-right"></span>
                    </a>
                </div>
            </div>
        </div>
    </section>
    <!-- End #carousel-section -->


    <!-- Begin #services-section -->
    <section id="services" class="services-section section-global-wrapper">
        <div class="container">
            <div class="row">
                <div class="services-header">
                    <h3 class="services-header-titles">Our Product Gallery</h3>
                </div>
            </div>
      
            <!-- Begin Services Row 1 -->
            <div class="row services-row services-row-head services-row-1">
                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                    <div class=" wow animated fadeInLeft" data-wow-offset="40">
                    <img src="assets/img/product.jpg" height="255px" width="362px"/>
                   <div class="centered"> <a href="Login.jsp">Product Login</a></div>
                    <button class="centered"><a href="Login.jsp">Product Login</a> </button>
                    </div>
                    
                </div>
        
                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                    <div class=" wow animated zoomIn" data-wow-offset="40">
                        <img src="assets/img/bcloth.jpg" height="258px" width="362px"/>
                        <div class="centered"> <a href="Login.jsp">Cloth Login</a></div>
                    <button class="centered"><a href="Login.jsp">Cloth Login</a> </button>
                    </div>
                </div>
        
                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                    <div class="wow animated fadeInRight" data-wow-offset="40">
                       <img src="assets/img/feui.jpg" height="258px" width="362px"/>
                       <div class="centered"> <a href="Login.jsp">Cloth Login</a></div>
                    <button class="centered"><a href="Login.jsp">Cloth Login</a> </button>
                    </div>        
                </div>
            </div>
            <!-- End Serivce Row 1 -->
      
            <!-- Begin Services Row 2 -->
            <div class="row services-row services-row-tail services-row-2">
                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                    <div class=" wow animated fadeInLeft" data-wow-offset="40">
                         <img src="assets/img/pshake.jpg" height="258px" width="362px"/>
                         <div class="centered"> <a href="Login.jsp">Protein shake Login</a></div>
                    <button class="centered"><a href="Login.jsp">Protein Shake Login</a> </button>
                    </div>
                </div>
        
                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                    <div class="wow animated zoomIn" data-wow-offset="40">
                        <img src="assets/img/pbar.jpg" height="258px" width="362px"/>
                        <div class="centered"> <a href="Login.jsp">Protein Bar Login</a></div>
                    <button class="centered"><a href="Login.jsp">Protein Bar Login</a> </button>
                    </div>
                </div>
        
                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                    <div class=" wow animated fadeInRight" data-wow-offset="40">
                       <img src="assets/img/barbel.jpg" height="253px" width="370px"/>
                       <div class="centered"> <a href="Login.jsp">Barbell Login</a></div>
                    <button class="centered"><a href="Login.jsp">Barbell Login</a> </button>
                    
                </div>
            </div>
            <!-- End Serivces Row 2 -->
    </div>
        </div>      
    </section>
    <!-- End #services-section -->


    <!-- Footer -->
    <footer> 
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <h3><i class="fa fa-map-marker"></i> Contact:</h3>
                    <p class="footer-contact">
                        Kalimati Kathmandu Nepal<br>
                        Phone: +977 01-4035-367 Fax: 1-287-83983<br>
                        Email: Sumerufitsupplier123@gmail.com<br>
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
        <p class="footers">&copy; Copyright 2020, Sumeru Fitness Suppliers</p>
    </div>

</form>
    
    <script type="text/javascript" src="js/jquery-1.10.2.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="js/wow.min.js"></script>
    <script>
      new WOW().init();
    </script>
  </body>
</html>
