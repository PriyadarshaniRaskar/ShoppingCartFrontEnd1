<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<style>
body {
	background-color: white;
}
</style>

<head>
<title>Shopping Cart</title>


</head>
<body>
	<center><%@ include file="header.jsp"%></center>

	<div data-role="page">
		<div data-role="header" data-position="fixed">
			<h1>Welcome to Shopping Cart</h1>
			<table width="100%">
				<tr>
					<c:choose>
						<c:when test="${empty loggedInUser}">
							<td style="text-align:left;color:red;font-family:Times New Roman;font-style: italic;font-size: 30px">
							Existing user 
							<a href="loginHere">Login here </a>
							</td>
							<td style="text-align:center;color:red;font-family:Times New Roman;font-style: italic;font-size: 30px">
							New user
							<a href="registerHere">	Register here</a>
							</td>
						</c:when>
						<c:when test="${not empty loggedInUser}">
							<td
								style="color: red; font-family: Times New Roman; font-style: italic; font-size: 30px">
								Welcome ${loggedInUser},</td>
							<td
								style="text-align: right; color: red; font-family: Times New Roman; font-style: italic; font-size: 30px">
								<a href="logout"> Logout</a>
							</td>
						</c:when>

					</c:choose>
				</tr>
				<tr>
					<c:if test="${loggedOut==true}">
						<td>${logoutMessage}</td>
					</c:if>
				</tr>
			</table>
		 <div data-role="main" class="ui-content">
			<div id="admin">

				<c:if test="${isAdmin==true}">

					<%@ include file="/views/adminHome.jsp"%>

				</c:if>
				
				<div id="categories">
				
					<c:if test="${isAdminClickedCategories==true}">
					<a href="categories">Add Category</a>
					
					</c:if>
				</div>

				<div id="products">
					
					<c:if test="${isAdminClickedProducts==true}">
					<a href="product">Add Product</a>

				</c:if>
				</div>

				<div id="suppliers">
					<c:if test="${isAdminClickedSuppliers==true}">
					
						<a href="suppliers">Add Supplier</a>
						
					</c:if>
				</div>

			</div>

	</div>
			
			<%@ include file="footer.jsp"%>
</body>
</html>

