<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Contact Us</title>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  <script src="http://maps.googleapis.com/maps/api/js"></script>
  <script>
function initialize() {
  var mapProp = {
    center:new google.maps.LatLng(51.508742,-0.120850),
    zoom:5,
    mapTypeId:google.maps.MapTypeId.ROADMAP
  };
  var map=new google.maps.Map(document.getElementById("googleMap"),mapProp);
}
google.maps.event.addDomListener(window, 'load', initialize);
</script>
</head>
<body>
<div class="container">
<%@ include file="header.jsp" %>
<div>
<center>

<div id="googleMap" style="width:700px;height:280px;"></div>
</center>

</div>
<div class="row">
<div class="col-sm-4">
<h3>Address:</h3>
<h2>
<i>
JK Road ,<br/>
Paris
</i>
</h2>
</div>
<div class="col-sm-4">
<h3>Phone No:</h3>
<h2>
<i>
9975710762
</i>
</h2>
</div>
<div class="col-sm-4">
<h3>Email us at:</h3>
<h2>
<i>
<a href="sahar.niitfaculty@gmail.com">sahar.niitfaculty@gmail.com</a>
</i>
</h2>

</div>
</div>

<%@ include file="footer.jsp" %>
</div>
</body>
</html>