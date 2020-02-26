<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="g" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title><%=request.getAttribute("userName") %></title>
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style type="text/css">
    body {
        color: #566787;
		background: #f5f5f5;
		font-family: 'Varela Round', sans-serif;
		font-size: 13px;
	}
	 .navbar{
 background-color:black;
 box-shadow: 0 6px 8px -2px yellow;
 border:none;
 }
 .menu{
 color:Yellow;
 }
	.table-wrapper {
        background: #fff;
        padding: 20px 25px;
        margin: 30px 0;
		border-radius: 3px;
        box-shadow: 0 1px 1px rgba(0,0,0,.05);
    }
	.table-title {        
		padding-bottom: 15px;
		background: #435d7d;
		color: #fff;
		padding: 16px 30px;
		margin: -20px -25px 10px;
		border-radius: 3px 3px 0 0;
    }
    .table-title h2 {
		margin: 5px 0 0;
		font-size: 24px;
	}
	.table-title .btn-group {
		float: right;
	}
	.table-title .btn {
		color: #fff;
		float: right;
		font-size: 13px;
		border: none;
		min-width: 50px;
		border-radius: 2px;
		border: none;
		outline: none !important;
		margin-left: 10px;
	}
	.table-title .btn i {
		float: left;
		font-size: 21px;
		margin-right: 5px;
	}
	.table-title .btn span {
		float: left;
		margin-top: 2px;
	}
    table.table tr th, table.table tr td {
        border-color: #e9e9e9;
		padding: 12px 15px;
		vertical-align: middle;
    }
	table.table tr th:first-child {
		width: 60px;
	}
	table.table tr th:last-child {
		width: 100px;
	}
    table.table-striped tbody tr:nth-of-type(odd) {
    	background-color: #fcfcfc;
	}
	table.table-striped.table-hover tbody tr:hover {
		background: #f5f5f5;
	}
    table.table th i {
        font-size: 13px;
        margin: 0 5px;
        cursor: pointer;
    }	
    table.table td:last-child i {
		opacity: 0.9;
		font-size: 22px;
        margin: 0 5px;
    }
	table.table td a {
		font-weight: bold;
		color: #566787;
		display: inline-block;
		text-decoration: none;
		outline: none !important;
	}
	table.table td a:hover {
		color: #2196F3;
	}
	table.table td a.edit {
        color: #FFC107;
    }
    table.table td a.delete {
        color: #F44336;
    }
    table.table td i {
        font-size: 19px;
    }
	table.table .avatar {
		border-radius: 50%;
		vertical-align: middle;
		margin-right: 10px;
	}
    .pagination {
        float: right;
        margin: 0 0 5px;
    }
    .pagination li a {
        border: none;
        font-size: 13px;
        min-width: 30px;
        min-height: 30px;
        color: #999;
        margin: 0 2px;
        line-height: 30px;
        border-radius: 2px !important;
        text-align: center;
        padding: 0 6px;
    }
    .pagination li a:hover {
        color: #666;
    }	
    .pagination li.active a, .pagination li.active a.page-link {
        background: #03A9F4;
    }
    .pagination li.active a:hover {        
        background: #0397d6;
    }
	.pagination li.disabled i {
        color: #ccc;
    }
    .pagination li i {
        font-size: 16px;
        padding-top: 6px
    }
    .hint-text {
        float: left;
        margin-top: 10px;
        font-size: 13px;
    }    
	/* Custom checkbox */
	.custom-checkbox {
		position: relative;
	}
	.custom-checkbox input[type="checkbox"] {    
		opacity: 0;
		position: absolute;
		margin: 5px 0 0 3px;
		z-index: 9;
	}
	.custom-checkbox label:before{
		width: 18px;
		height: 18px;
	}
	.custom-checkbox label:before {
		content: '';
		margin-right: 10px;
		display: inline-block;
		vertical-align: text-top;
		background: white;
		border: 1px solid #bbb;
		border-radius: 2px;
		box-sizing: border-box;
		z-index: 2;
	}
	.custom-checkbox input[type="checkbox"]:checked + label:after {
		content: '';
		position: absolute;
		left: 6px;
		top: 3px;
		width: 6px;
		height: 11px;
		border: solid #000;
		border-width: 0 3px 3px 0;
		transform: inherit;
		z-index: 3;
		transform: rotateZ(45deg);
	}
	.custom-checkbox input[type="checkbox"]:checked + label:before {
		border-color: #03A9F4;
		background: #03A9F4;
	}
	.custom-checkbox input[type="checkbox"]:checked + label:after {
		border-color: #fff;
	}
	.custom-checkbox input[type="checkbox"]:disabled + label:before {
		color: #b8b8b8;
		cursor: auto;
		box-shadow: none;
		background: #ddd;
	}
	/* Modal styles */
	.modal .modal-dialog {
		max-width: 400px;
	}
	.modal .modal-header, .modal .modal-body, .modal .modal-footer {
		padding: 20px 30px;
	}
	.modal .modal-content {
		border-radius: 3px;
	}
	.modal .modal-footer {
		background: #ecf0f1;
		border-radius: 0 0 3px 3px;
	}
    .modal .modal-title {
        display: inline-block;
    }
	.modal .form-control {
		border-radius: 2px;
		box-shadow: none;
		border-color: #dddddd;
	}
	.modal textarea.form-control {
		resize: vertical;
	}
	.modal .btn {
		border-radius: 2px;
		min-width: 100px;
	}	
	.modal form label {
		font-weight: normal;
	}	
</style>

</head>
<body>
<% //In case, if Admin session is not set, redirect to Login page
if((request.getSession(false).getAttribute("Admin")== null) )
{
%>
<jsp:forward page="Login.jsp"></jsp:forward>
<%} %>
<nav class="navbar">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand menu" href="Manager.jsp">Inventory management System</a>
    </div>
    <ul class="nav navbar-nav menu pull-right">
      <li><a href="productServlet" class="menu">Product</a></li>
      <li><a href="ClothServlet" class="menu">Cloth</a></li>
      <li><a href="#" class="menu">Protein Shake</a></li>
      <li><a href="" class="menu">Protein Bar</a></li>
      <li><a href="LogoutServlet" class="menu"><span class="glyphicon glyphicon-log-in"></span> Logout  <%=request.getAttribute("userName") %></a></li>
      </ul>
  </div>
</nav>
    <div class="container">
        <div class="table-wrapper">
            <div class="table-title">
                <div class="row">
                    <div class="col-sm-4">
						<h2>Manage <b>Cloth</b></h2>
					</div>
					 <div class="col-sm-4 ">
					    <form action="" method="get">
						<input type="text" class="form-control" name="searchvalue" placeholder="serach......."/>
						</form>
					</div>
					<div class="col-sm-4 text-right">
						<a href="#addproduct" class="btn btn-success" data-toggle="modal"><i class="material-icons">&#xE147;</i> <span>Add New Product</span></a>					
					</div>
                </div>
            </div>
            <table class="table table-striped table-hover">
             <thead>
                    <tr>
                        <th>Id</th>
                        <th>Name</th>
                        <th>Brand Name</th>
                        <th>Size</th>
                        <th>Price</th>
                        <th>Actions</th>
                    </tr>
               </thead>
             <tbody>
            <g:forEach items="${allclothList}" var="list">
                <tr> 
                	<td>${list.id}</td>
                    <td>${list.name}</td>
                    <td>${list.size}</td>
                    <td>${list.brand_name}</td>
                    <td>${list.price}</td>
                    <td><a href="ClothServlet?action=DELETE&id=${list.id}" data-toggle="modal">Delete</a>
                    |<a href="ClothServlet?id=${list.id}&act=edit"  data-toggle="modal">Edit</a></td>
                </tr>
            </g:forEach>
            </tbody>
            </table>
			
        </div>
    </div>
	<!-- add Modal HTML -->
	<div id="addproduct" class="modal fade">
		<div class="modal-dialog">
			<div class="modal-content">
				<form action="ClothServlet" method="post">
					<div class="modal-header">						
						<h4 class="modal-title">Add Cloth</h4>
						<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
					</div>
					<div class="modal-body">
					<div class="form-group">
							
							<input type="hidden" class="form-control" required name="id">
						</div>					
						<div class="form-group">
							<label>Name</label>
							<input type="text" class="form-control" required name="name">
						</div>
						<div class="form-group">
							<label>Brand Name</label>
							<input type="text" class="form-control" required name="brand_name">
						</div>
						<div class="form-group">
							<label>Size</label>
							<input type="text" class="form-control" required name="size">
						</div>
						<div class="form-group">
							<label>price</label>
							<input type="text" class="form-control" required name="price">
						</div>					
					</div>
					<div class="modal-footer">
						<input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
						<input type="submit" class="btn btn-success" value="Add">
					</div>
				</form>
			</div>
		</div>
	</div>
	<!-- Edit Modal HTML -->
	<div id="editproduct" class="modal fade">
		<div class="modal-dialog">
			<div class="modal-content">
				<form action="productServlet" method="get">
					<div class="modal-header">						
						<h4 class="modal-title">Edit Product</h4>
						<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
					</div>
					<div class="modal-body">					
						<div class="form-group">
							<label>Name</label>
							<input type="text" class="form-control" required name="name" value="${product.name}">
						</div>
						<div class="form-group">
							<label>Brand_Name</label>
							<input type="text" class="form-control" required name="brand_name" value="${product.brand_name }">
						</div>
						<div class="form-group">
							<label>manufacture date</label>
							<input type="text" class="form-control" required name="manufacture_date" value="${product.manufacture_date }">
						</div>
						<div class="form-group">
							<label>Expire date</label>
							<input type="text" class="form-control" required name="expire_date" value="${product.expire_date }">
						</div>		
						<div class="form-group">
							<label>price</label>
							<input type="text" class="form-control" required name="price" value="${product.price }">
						</div>			
					</div>
					<div class="modal-footer">
						<input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
						<input type="submit" class="btn btn-info" value="Save">
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>                                		                            