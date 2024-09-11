
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="javax.servlet.http.Cookie"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>List of Cookies</title>
    <style>
        table {
            width: 50%;
            margin: auto;
            border-collapse: collapse;
        }
        table, th, td {
            border: 1px solid black;
        }
        th, td {
            padding: 10px;
            text-align: left;
        }
    </style>
</head>
<body>
    <h2 style="text-align: center;">List of Cookies</h2>

    <%
        Cookie[] cookies = request.getCookies();
        if (cookies != null && cookies.length > 0) {
    %>
        <table>
            <tr>
                <th>Cookie Name</th>
                <th>Cookie Value</th>
            </tr>
            <%
                for (Cookie cookie : cookies) {
            %>
            <tr>
                <td><%= cookie.getName() %></td>
                <td><%= cookie.getValue() %></td>
            </tr>
            <%
                }
            %>
        </table>
    <%
        } else {
    %>
        <p style="text-align: center;">No cookies found!</p>
    <%
        }
    %>
</body>
</html>
