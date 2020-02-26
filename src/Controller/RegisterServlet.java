package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dao.RegisterDao;
import Domain.Login;


@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public RegisterServlet() {
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String FirstName = request.getParameter("fname");
		 String MiddleName= request.getParameter("mname");
		 String LastName = request.getParameter("lname");
		 String UserName = request.getParameter("uname");
		 String Email = request.getParameter("email");
		 String Password = request.getParameter("pword");
		 String Role = request.getParameter("User");
		 Login registerBean = new Login();
		 //Using Java Beans - An easiest way to play with group of related data
		 registerBean.setFirstName(FirstName);
		 registerBean.setMiddleName(MiddleName); 
		 registerBean.SetLastName(LastName);
		 registerBean.setUserName(UserName);
		 registerBean.setEmail(Email);
		 registerBean.setPassword(Password);
		 registerBean.setRole(Role);
		 RegisterDao registerDao = new RegisterDao();
		 
		 //The core Logic of the Registration application is present here. We are going to insert user data in to the database.
		 String userRegistered = registerDao.registerUser(registerBean);
		 
		 if(userRegistered.equals("SUCCESS"))   //On success, you can display a message to user on Home page
		 {
		 request.getRequestDispatcher("Login.jsp").forward(request, response);
		 }
		 else   //On Failure, display a meaningful message to the User.
		 {
		 request.setAttribute("errMessage", userRegistered);
		 request.getRequestDispatcher("Register.jsp").forward(request, response);
		 }
	}

}
