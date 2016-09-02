<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register</title>

<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
   <style type="text/css">
.errStyle {
	color:red;
	font-style: italic;
	font-weight: bold;
}
p{
color:green;
text-align:center;
font-size: 30px;
font-family:Times New Roman;
}
label {
color: #B4886B;
font-weight: bold;
display: block;
width: 250px;
font-family:Times New Roman;
font-style: italic;
}
</style>

</head>
<body>
<%@ include file="header.jsp"%>

<p>Register Here..</p>
	<div class="container">
		
		<form:form role="form" action="user/register" modelAttribute="userDetails">
		
			<div class="form-group">
				<form:label path="userId">
					<spring:message text="Name" />
				</form:label>
				
				<form:input class="form-control"  path="userId" pattern=".{4,7}" required="true"
						title="id should contains 4 to 7 characters" />
						
						
				<%-- <form:input class="form-control" path="userId" /> --%>
				
				<form:errors path="userId">
					<p class="errStyle">* Required</p>
				</form:errors>
			</div>
			
			<div class="form-group">
				<form:label path="userName">
					<spring:message text="User Name" />
				</form:label>
				
				<form:input class="form-control" path="userName" required="true"
						title="name should not be empty" />
						
				<%-- <form:input class="form-control" path="userName" /> --%>
				
				<form:errors path="userName">
					<p class="errStyle">* Invalid Username</p>
				</form:errors>
			</div>
			<div class="form-group">
				<form:label path="password">
					<spring:message text="Password" />
				</form:label>
				
				<form:input type="password" class="form-control" path="password" pattern=".{4,15}"
						required="true"
						title="password should contains 4 to 15 characters" />
						
				<%-- <form:input type="password" class="form-control" path="password" /> --%>
				
				<form:errors path="password">
					<p class="errStyle">* Invalid Email</p>
				</form:errors>

			</div>
			<div class="form-group">
				<form:label path="email">
					<spring:message text="Email" />
				</form:label>
				<form:input class="form-control" type="email" path="email" />
				<form:errors path="email">
					<p class="errStyle">* Invalid Email</p>
				</form:errors>
			</div>
			
			<div class="form-group">
				<form:label path="mobile">
					<spring:message text="Phone Number" />
				</form:label>
				
				<form:errors path="mobile">
					<p class="errStyle">* Invalid Phone no.</p>
				</form:errors>
				
				<%-- <form:input path="mobile" class="form-control"
								pattern="/(7|8|9)\d{9}/" title="Enter 10 digit mobile number"
								id="rephone" name="rePhone" placeholder="Enter Contact Number" 
								required="true" /> --%>
								
								<form:input type="tel" path="mobile" pattern="^\d{10}$" required="true"
						title="Please enter valid mobile number" />
					
			</div>

			<div class="form-group">
				<form:label path="address">
					<spring:message text="Address" />
				</form:label>
				<form:input class="form-control" path="address" />
				<form:errors path="address">
					<p class="errStyle">* Invalid Address</p>
				</form:errors>
			</div>

			<button type="submit" class="btn btn-default">Submit</button>
		</form:form>
		
	</div>
<%@ include file="footer.jsp"%>
</body>
</html>