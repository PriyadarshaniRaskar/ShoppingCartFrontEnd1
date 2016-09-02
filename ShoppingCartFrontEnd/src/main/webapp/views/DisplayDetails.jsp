<%@ page language="java" contentType="text/html; charset=ISO-8859-1" isELIgnored="false"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Product Details</title>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  <script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
  <script src="<c:url value='/resources/js/AngularjsController.js'/>"></script>
</head>
<body> 
<%@ include file="header.jsp" %>

<div class="container" ng-app="myApp" ng-controller="myCtrl">


<div  ng-repeat="product in Data | filter: { pid: '${param.id}'}" >
<center>
<img src="<c:url value='/resources/images/{{product.category}}/{{product.image}}'/>" height="300px" width="300px" />
</center>
<table class="table table-striped">
<tr>
	<th>Name</th>
	<td>{{product.name}}</td>
</tr>
<tr>
	<th>Available Quantity</th>
	<td>{{product.Quantity}}</td>
</tr>
<tr>
	<th>Price</th>
	<td>{{product.Price}}</td>
</tr>
<tr>
	<th>Details</th>
	<td>{{product.description}}</td>
</tr>
<tr>
	<th>Category</th>
	<td>{{product.category}}</td>
</tr>

</table>
</div>

<div class="row">

	<div class="col-sm-4">
	<form role="form">
	 <button type="submit" class="btn btn-default">Add to Cart</button>
	 </form>
	</div> 


	<div class="col-sm-4">
	<form role="form">
	<button type="submit" class="btn btn-default">View Cart</button>
	</form>
	</div>
	<div class="col-sm-4">
	<form role="form">
		<button type="submit" class="btn btn-default">Back to Home</button>
	</form>
	</div>
</div>


</div>
<%@ include file="footer.jsp" %>


</body>
</html>