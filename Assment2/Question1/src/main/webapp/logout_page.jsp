<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.text.SimpleDateFormat"%>

<%
    String name = (String) session.getAttribute("username");
    Date startTime = (Date) session.getAttribute("startTime");
    Date endTime = new Date();

    long duration = endTime.getTime() - startTime.getTime();
    long seconds = duration / 1000 % 60;
    long minutes = duration / (1000 * 60) % 60;
    long hours = duration / (1000 * 60 * 60) % 24;

    String formattedDuration = String.format("%02d:%02d:%02d", hours, minutes, seconds);

    session.invalidate();
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Logout</title>
</head>
<body>
    <h1>Thank You, <%= name %>!</h1>
    <p>Your session lasted for <%= formattedDuration %>.</p>
</body>
</html>
