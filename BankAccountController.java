package in.co.capgemini;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("*.app")
public class BankAccountController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public BankAccountController() {
        super();
     
    }

	
	@SuppressWarnings("null")
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		String action = request.getServletPath();
		System.out.println(action);
		
		RequestDispatcher rd = null;
		switch(action){
		case "/add.app":
			String sacc =request.getParameter("savcur");
			
			
			if(sacc.equals("saving")) {
				rd = request.getRequestDispatcher("saving.jsp");
				break;
			}
				
			else if(sacc.equals("current")) {
				rd = request.getRequestDispatcher("current.jsp");
				break;
			}
			rd.forward(request,response);
			
		case "/addnew.app":
			response.sendRedirect("addNew.jsp");
			break;
		
		
		case "/view.app":
			response.sendRedirect("view.app");
			break;
		
		case "/login.app":
			if(username.equals("lokesh") && password.equals("lokesh")) {
				HttpSession session = request.getSession();
				
				session.setAttribute("username", username);
				response.sendRedirect("Home.jsp");
				
			}
			else {
				
				response.sendRedirect("Error.jsp");
				
			}
			break;
			
//		case "/search.app":
//			response.sendRedirect("view.app");
//			break;
//			
//		case "/deposit.app":
//			response.sendRedirect("view.app");
//			break;
//			
//		case "/transfer.app":
//			response.sendRedirect("view.app");
//			break;
//		
//		case "/saving.app":
//			response.sendRedirect("saving.app");
//			break;
//			
//		case "/current.app":
//			response.sendRedirect("saving.app");
//			break;
//			
		default :
			response.sendRedirect("home.jsp");
			break;
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
