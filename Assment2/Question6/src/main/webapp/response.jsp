<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session = "false" %>
<!DOCTYPE html>
<html>
<head>
    <title> Objects Display</title>
</head>
<body>
    <h2>Displaying Values Using Intrinsic Objects</h2>

    <h3>Request Object</h3>
    <p>Name (from request): <%= request.getParameter("name") %></p>
    <p>Age (from request): <%= request.getParameter("age") %></p>

    <h3>Response Object</h3>
    <p>Content Type: <%= response.getContentType() %></p>

    <h3>Session Object</h3>
    <%
        HttpSession session = request.getSession();
        session.setAttribute("userName", request.getParameter("name"));
    %>
    <p>Session ID: <%= session.getId() %></p>
    <p>User Name (stored in session): <%= session.getAttribute("userName") %></p>



    <p>Referer: <%= request.getHeader("Referer") %></p>
  
</body>
</html>
