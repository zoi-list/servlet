<%@ page import="java.util.regex.Pattern" %>
<%@ page import="java.util.regex.Matcher" %>
<!DOCTYPE html>
<html>
<head>
    <title>Email Validation Result</title>
</head>
<body>
    <h2>Email Validation Result</h2>

    <%
        // Get email from the form
        String email = request.getParameter("email");

        // Define regex pattern to validate email
        String emailPattern = "^[^@\\s]+@[^@\\s]+\\.[^@\\s]{2,}$";

        // Create a Pattern object
        Pattern pattern = Pattern.compile(emailPattern);

        // Create a Matcher object
        Matcher matcher = pattern.matcher(email);

        // Check if the email matches the pattern
        if (matcher.matches()) {
            out.println("<p>Email is valid: " + email + "</p>");
        } else {
            out.println("<p>Email is not valid: " + email + "</p>");
        }
    %>

    <a href="home.html">Go Back</a>
</body>
</html>
