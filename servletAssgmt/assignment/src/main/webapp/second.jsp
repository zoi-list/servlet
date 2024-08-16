<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" page session="true" %>
<%
	if(session.getAttribute("userName") == null){
		response.sendRedirect("third.jsp");
		return;
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Second Page</title>
</head>
<body>
	<h2>Welcome to second page</h2>
	<p>Session Initiated. Your userName is <%= session.getAttribute("userName") %>.</p>
	<a href="third.jsp">Next</a>
</body>
</html>