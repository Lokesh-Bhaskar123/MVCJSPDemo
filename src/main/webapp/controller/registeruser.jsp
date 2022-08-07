<%@page import="com.cdac.daoimpl.UserDaoImpl"%>
<%@page import="com.cdac.dao.UserDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>register user</title>
</head>
<body>
	<jsp:useBean class="com.cdac.pojo.User" id="user"
	scope="page"></jsp:useBean>
	<jsp:setProperty name="user" property="*" />
	
	<%
		UserDao daoImpl = new UserDaoImpl();
		if(daoImpl.addNewuser(user)) {
			
			response.sendRedirect("../input.jsp?msg=registersuccess");
		}
		else
		{
			response.sendRedirect("../register.jsp?msg=registererror");
		}
	%>
</body>
</html>
