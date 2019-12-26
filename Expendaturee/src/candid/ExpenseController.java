package candid;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/ExpenseController")
public class ExpenseController extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		response.setContentType("text/html");
		response.setCharacterEncoding("UTF-8");
		
		DataAccess dt = new DataAccess();
		expense enterExpense = new expense();
		
		
		int ic = Integer.parseInt(request.getParameter("id"));
		double amount = Double.parseDouble(request.getParameter("amount"));
		String date = request.getParameter("date");
		String type = request.getParameter("type");
		
		enterExpense.setIC(ic);
		enterExpense.setAmount(amount);
		enterExpense.setDate(date);
		enterExpense.setType(type);
		dt.insertExpense(enterExpense);
	
		
		PrintWriter out = response.getWriter();
			out.println("<html>");
			out.println("<body><table>");
			out.println("<tr><td> ID </td><td>" + ic + "</td></tr>");
			out.println("<tr><td> Amount </td><td>" + amount + "</td></tr>");
			out.println("<tr><td> Date </td><td>" + date + "</td></tr>");
			out.println("<tr><td> Type </td><td>" + type + "</td></tr>");
			out.println("</table></body>");
			out.println("</html>");

}
}

