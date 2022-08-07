<%@page import="com.cdac.daoimpl.UserDaoImpl"%>
<%@page import="com.cdac.dao.UserDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>check user</title>
</head>
<body>
	<jsp:useBean class="com.cdac.pojo.User" id="user"
	scope="page"></jsp:useBean>
	<jsp:setProperty name="user" property="*" />
	
	<%
		UserDao daoImpl = new UserDaoImpl();
		if(daoImpl.checkUserCredentials(user)) {
			
			session.setAttribute("USERNAME", user.getUsername());
			response.sendRedirect("../views/home.jsp");
		}
		else
		{
			response.sendRedirect("../input.jsp?msg=loginerror");
		}
		
		/*
		if(daoImpl.checkUser(user).equals("a")) {
			
			session.setAttribute("USERNAME", user.getUsername());
			response.sendRedirect("../views/home.jsp");
		}
		else
		{
			response.sendRedirect("../input.jsp?msg=loginerror");
		}
		*/
	%>
</body>
</html>

