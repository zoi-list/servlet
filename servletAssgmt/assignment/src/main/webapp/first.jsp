<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" page session="true" %>
<%
session.setAttribute("userName", "user1");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>First page</title>
</head>
<body>
	<h2>Welcome to the first page</h2>
	<p>Session Initiated. Your userName is <%= session.getAttribute("Rupal") %>.</p>
	<a href="second.jsp">Next</a>
</body>
</html>