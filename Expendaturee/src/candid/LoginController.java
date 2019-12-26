package candid;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/LoginController")
public class LoginController extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		DataAccess dt = new DataAccess();
		user loginUser=null;

		String id = request.getParameter("icno");
		String un = request.getParameter("username");
		String pw = request.getParameter("password");
		String submitType = request.getParameter("submit");
		
		if(un==""||pw=="") {
			
			request.setAttribute("Errormessage", "Please check username and password or signup!");
			request.getRequestDispatcher("login.jsp").forward(request, response);
			
		}else {
			
			loginUser = dt.getUser(un, pw);
			
		}

		user signupUser = new user();  //signup part

		if (submitType.equals("Login")) {
			
			request.setAttribute("message", loginUser.getUsername());
			request.setAttribute("id", loginUser.getId());
			
			request.getRequestDispatcher("main.jsp").forward(request, response);
			

		} else if (submitType.equals("signup")) {

			signupUser.setId(id);
			signupUser.setUsername(un);
			signupUser.setPassword(pw);
			dt.insertUser(signupUser);
			
			if (signupUser.getId()=="" || signupUser.getUsername() =="" || signupUser.getPassword() =="")
			{
				request.setAttribute("Errormessage", "Fields can't be empty!");
				request.getRequestDispatcher("signup.jsp").forward(request, response);
			}

			request.setAttribute("successMessage", "Sign Up done, please login to continue!");
			request.getRequestDispatcher("login.jsp").forward(request, response);

		}

	}
}
