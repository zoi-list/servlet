<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="javax.servlet.http.Cookie" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Show Cookies</title>
</head>
<body>
	<h2>Cookies Stored in Browser</h2>

    <%
        Cookie[] cookies = request.getCookies();
        if(cookies != null){
            for(Cookie cookie : cookies){
                out.println("<p><strong>Name:</strong> " +cookie.getName()+ "</p>");
                out.println("<p><strong>Value:</strong> " +cookie.getValue()+ "</p>");
                out.println("<hr>");
            }
        }else{
            out.println("<p>No cookies found!</p>");
        }
    %>
</body>
</html>