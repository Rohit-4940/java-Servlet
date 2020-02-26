<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String id = request.getParameter("id");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "fitness";
String userid = "root";
String password = "root";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<!DOCTYPE html>
<html>
<head>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>
<style>

body {
  font-family: Arial, Helvetica, sans-serif;
}

/* Float four columns side by side */
.column {
  float: left;
  width: 33%;
  padding: 0 10px;
}

/* Remove extra left and right margins, due to padding */
.row {margin: 0 -5px;}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}

/* Responsive columns */
@media screen and (max-width: 600px) {
  .column {
    width: 100%;
    display: block;
    margin-bottom: 20px;
  }
}

/* Style the counter cards */
.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  padding: 16px;
  text-align: left;
  background-color: #fff;
  margin-bottom:30px;
}
.labels{
color:#1DD6D9;
}
.texts{
color:#212F3D;
}
.pnav{
background-color:black;
height:80px;
}
.pnav h3{
color:white;
text-align:center;
padding-top:20px;
}
.logos{
padding-left:30px;
float:left;
}
</style>
<% //In case, if Admin session is not set, redirect to Login page
if((request.getSession(false).getAttribute("User")== null) )
{
%>
<jsp:forward page="Login.jsp"></jsp:forward>
<%}
%>
<div class="pnav">
<div class="logos">
<a href="dashboard.jsp"><img alt="logof.png" src="assets/img/slider/logos.png" height="80"></a>
</div>
<h3>Make A Order Of Your Choice</h3>
</div>
<%try{
	connection = DriverManager.getConnection(connectionUrl+database, userid, password);
	statement=connection.createStatement();
	String sql ="select * from products";
	resultSet = statement.executeQuery(sql);
	while(resultSet.next()){ %>

  <div class="column">
    <div class="card">
    <img src="assets/img/product.jpg" height="180"/>
  	 <h3 class="texts"><span class="labels">Product Name: </span><%=resultSet.getString("name") %></h3>
     <h3 class="texts"><span class="labels">Brand Name: </span><%=resultSet.getString("brand_name") %></h3>
     <h3 class="texts"><span class="labels">Manufacture Date: </span><%=resultSet.getString("manufacture_date") %></h3>
     <h3 class="texts"><span class="labels">Expire Date: </span><%=resultSet.getString("expire_date") %></h3>
     <h3 class="texts"><span class="labels">Price: </span><%=resultSet.getString("price") %></h3>
     <button class="glyphicon glyphicon-log-in btn btn-warning">Add to Cart</button>
</div>
</div>
    

<%

}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</body>
</html>