import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class nextsip extends HttpServlet {
	public void doGet(HttpServletRequest req,HttpServletResponse res) throws IOException {
		res.setContentType("text/html");
		
		PrintWriter out=res.getWriter();
		String name=req.getParameter("username");
		out.print("<h1>Welcome "+name+"</h1>");
			
	}
	
}