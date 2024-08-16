import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/CalculatorServlet")
public class CalculatorServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        try {
            double num1 = Double.parseDouble(request.getParameter("num1"));
            double num2 = Double.parseDouble(request.getParameter("num2"));
            String operation = request.getParameter("operation");

            double result = 0;
            switch (operation) {
                case "+":
                    result = num1 + num2;
                    break;
                case "-":
                    result = num1 - num2;
                    break;
                case "*":
                    result = num1 * num2;
                    break;
                case "/":
                    if (num2 != 0) {
                        result = num1 / num2;
                    } else {
                        out.println("<h3>Division by zero is not allowed!</h3>");
                        return;
                    }
                    break;
                default:
                    out.println("<h3>Invalid operation!</h3>");
                    return;
            }

            out.println("<h1>Result: " + result + "</h1>");
            out.println("<a href='index.html'>Go back</a>");
        } catch (NumberFormatException e) {
            out.println("<h3>Invalid input! Please enter valid numbers...</h3>");
            out.println("<a href='index.html'>Go back</a>");
        } finally {
            out.close();
        }
    }
}