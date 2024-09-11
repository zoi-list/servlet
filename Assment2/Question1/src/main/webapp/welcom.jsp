<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.text.SimpleDateFormat"%>

<%
    String name = request.getParameter("username");
    if (name != null && !name.trim().isEmpty()) {
        session.setAttribute("username", name);
        session.setAttribute("startTime", new Date());
    } else {
        name = (String) session.getAttribute("username");
    }

    Date startTime = (Date) session.getAttribute("startTime");
    SimpleDateFormat formatter = new SimpleDateFormat("HH:mm:ss");
    String formattedStartTime = formatter.format(startTime);
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Welcome</title>
    <style>
        body {
            text-align: center;
        }
        .startTime {
            position: absolute;
            top: 10px;
            right: 10px;
        }
    </style>
</head>
<body>
    <h1>Hello, <%= name %>!</h1>
    <div class="startTime">Start Time: <%= formattedStartTime %></div>
    <form action="logout_page.jsp" method="post">
        <input type="submit" value="Logout">
    </form>
</body>
</html>
