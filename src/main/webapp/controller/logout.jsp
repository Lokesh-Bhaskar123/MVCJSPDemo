<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>logout</title>
</head>
<body>
	<%
	if(!session.isNew() && session.getAttribute("USERNAME")!=null){
		session.setAttribute("USERNAME", null);
		session.invalidate();
		response.sendRedirect("../input.jsp?msg=logoutsuccess");
		
	}
	else{
		response.sendRedirect("../input.jsp?msg=notloggedin");
	}
	%>
</body>
</html>