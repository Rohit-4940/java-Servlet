<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="g" uri="http://java.sun.com/jsp/jstl/core" %> 
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">  
<title>Welcome <%=request.getAttribute("userName")%></title>
</head>
<body>
<style>
 .navbar{
 background-color:black;
 box-shadow: 0 6px 8px -2px yellow;
 border:none;
 }
 .menu{
 color:Yellow;
 }
</style>
<nav class="navbar">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand menu" href="Manager.jsp">Inventory management System</a>
    </div>
    <ul class="nav navbar-nav menu pull-right">
      <li><a href="product.jsp" class="menu">Product</a></li>
      <li><a href="cloth.jsp" class="menu">Cloth</a></li>
      <li><a href="sprotein.jsp" class="menu">Protein Shake</a></li>
      <li><a href="bprotein.jsp" class="menu">Protein Bar</a></li>
      <li><a href="LogoutServlet" class="menu"><span class="glyphicon glyphicon-log-in"></span> Logout  <%=request.getAttribute("userName") %></a></li>
      </ul>
  </div>
</nav>
<% //In case, if Admin session is not set, redirect to Login page
if((request.getSession(false).getAttribute("Admin")== null) )
{
%>
<jsp:forward page="Login.jsp"></jsp:forward>
<%} %>
</body>
</html>