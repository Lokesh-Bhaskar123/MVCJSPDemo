<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home Page</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	<%
	if(!session.isNew() && session.getAttribute("USERNAME")!=null){
		
		//String uname=(String)session.getAttribute("USERNAME");
		
	%>
	<div class="container">
	<jsp:include page="navbar.html"></jsp:include>
	
	<h1 style="color:navy">WELCOME <b> ${sessionScope.USERNAME} </b>  TO YOUR PROFILE PAGE</h1>
	
	</div>
	
	<% 	
	}
	else{
		response.sendRedirect("../input.jsp?msg=notloggedin");
	}
	%>
</body>
</html>