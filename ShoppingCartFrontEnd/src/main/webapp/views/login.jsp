 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<title>Login</title>
<link rel="stylesheet" href="C:\Users\Mahesh\Priya\ShoppingCartFrontEnd\src\main\webapp\resources\css\login.css">
<style>

h1{
color:Green;
text-align:center;
}
h2 {
    color: Red;
    text-align: center;
}
label {
color: #B4886B;
font-weight: bold;
display: block;
width: 250px;

}
</style>
</head>
<body>


<%@ include file="header.jsp" %> 
<div class="container">
<center>
<h1>Login Here..</h1>
<h2>Please Login With Your Credentials</h2>
<br>
<br> ${errorMessage}
	    ${successMessage}
<form action="login" method="post" role="form">

 
    <div class="form-group">
      <label  for="name">Username:</label>
          <input type="name" class="form-control" name="name" id="name" placeholder="Enter name">
     </div>
     
    <div class="form-group">
      <label  for="pwd">Password:</label>
         <input type="password" class="form-control" name="password" id="pwd" placeholder="Enter password">
    </div>
    
    
    <div class="form-group">
      
        <button type="submit" class="btn btn-default">Submit</button>
  
    </div>
  </form>
  
   </center>
   
</div>

<%@ include file="footer.jsp" %> 
</body>
</html>


