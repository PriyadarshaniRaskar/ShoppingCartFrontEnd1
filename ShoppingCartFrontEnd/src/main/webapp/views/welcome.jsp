<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
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
</div>
</div>

</body>
</html>