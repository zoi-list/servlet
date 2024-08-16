import java.io.IOException;
import java.io.PrintWriter;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        String firstName = request.getParameter("firstName");
        String middleName = request.getParameter("middleName");
        String lastName = request.getParameter("lastName");
        String login = request.getParameter("login");
        String password = request.getParameter("password");
        String confirmPassword = request.getParameter("confirmPassword");
        String location = request.getParameter("location");
        String education = request.getParameter("education");
        String phoneNumber = request.getParameter("phoneNumber");

        String errorMessage = validateInputs(firstName, middleName, lastName, password, confirmPassword);

        if (errorMessage != null) {
            out.println("<html><body>");
            out.println("<h1>Registration Failed</h1>");
            out.println("<p>" +errorMessage+ "</p>");
            out.println("<a href='registration.html'>Go Back</a>");
            out.println("</body></html>");
        } else {
            out.println("<html><body>");
            out.println("<h1>Registration Successful</h1>");
            out.println("<p>Welcome, " +firstName+ "!</p>");
            out.println("</body></html>");
        }

        out.close();
    }

    private String validateInputs(String firstName, String middleName, String lastName, String password, String confirmPassword) {
        if (!firstName.matches("[a-zA-Z]+")) {
            return "First name should contain only alphabets.";
        }
        if (middleName != null && !middleName.isEmpty() && !middleName.matches("[a-zA-Z]+")) {
            return "Middle name should contain only alphabets.";
        }
        if (!lastName.matches("[a-zA-Z]+")) {
            return "Last name should contain only alphabets.";
        }
        if (password.length() < 6) {
            return "Password should contain at least 6 characters.";
        }
        Pattern pattern = Pattern.compile("[a-zA-Z].*[0-9]|[0-9].*[a-zA-Z]");
        Matcher matcher = pattern.matcher(password);
        if (!matcher.find()) {
            return "Password should contain alphabets and at least one number and special character.";
        }
        if (!password.equals(confirmPassword)) {
            return "Passwords do not match!";
        }
        return null;
    }
}