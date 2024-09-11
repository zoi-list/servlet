<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%
    String jdbcURL = "jdbc:oracle:thin:@DESKTOP-4EGQKOK:1521:ORCL";  // Update with your DB URL
    String jdbcUsername = "system";                    // Your DB username
    String jdbcPassword = "456789";                    // Your DB password

    String username = request.getParameter("system");
    String password = request.getParameter("456789");

    Connection connection = null;
    PreparedStatement preparedStatement = null;
    ResultSet resultSet = null;
    boolean loginSuccess = false;

    try {
        // Load the Oracle JDBC driver
        Class.forName("oracle.jdbc.driver.OracleDriver");

        // Establish connection to the Oracle database
        connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);

        // SQL query to check the credentials
        String sql = "SELECT * FROM users WHERE username = ? AND password = ?";
        preparedStatement = connection.prepareStatement(sql);
        preparedStatement.setString(1, username);
        preparedStatement.setString(2, password);

        // Execute the query
        resultSet = preparedStatement.executeQuery();

        if (resultSet.next()) {
            loginSuccess = true;
        }

        if (loginSuccess) {
            out.println("<h3>Login Successful! Welcome " + username + "!</h3>");
        } else {
            out.println("<h3>Login Failed! Invalid username or password.</h3>");
        }

    } catch (Exception e) {
        e.printStackTrace();
        out.println("<h3>Error occurred: " + e.getMessage() + "</h3>");
    } finally {
        // Close resources
        if (resultSet != null) try { resultSet.close(); } catch (SQLException e) {}
        if (preparedStatement != null) try { preparedStatement.close(); } catch (SQLException e) {}
        if (connection != null) try { connection.close(); } catch (SQLException e) {}
    }
%>
