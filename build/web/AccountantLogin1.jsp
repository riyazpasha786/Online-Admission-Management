<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title> VTU GROUP</title>
</head>
<body>
	<%
	String uname=request.getParameter("email");
	String pwd=request.getParameter("password");
	
	if(uname.equals("vtu@gmail.com")&& pwd.equals("123"))
	{
		response.sendRedirect("index.html");
		
	}
	else
	{
		response.sendRedirect("Accountant.html");
		
	}
	        
	
	
	%>
</body>
</html>