package Controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dao.Icloth;
import Dao.clothimp;
import Domain.clothdomain;




@WebServlet("/ClothServlet")
public class ClothServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	RequestDispatcher dispatcher = null;
	Icloth icloth = null;
    
    public ClothServlet() {
    	icloth = new clothimp();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		if(action == null) {
				action = "LIST";
			}
			
			switch(action) {
				
				case "LIST":
					listcloth(request, response);
					break;
					
				case "EDIT":
					getSinglecloth(request, response);
					break;
					
				case "DELETE":
					deletecloth(request, response);
					break;
					
				default:
					listcloth(request, response);
					break;
					
			}
			
		}
	 
		private void deletecloth(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
			String id = request.getParameter("id");
		
			if(icloth.delete(Integer.parseInt(id))) {
				request.setAttribute("NOTIFICATION", "product Deleted Successfully!");
			}
			
			listcloth(request, response);
		}
	 
		private void getSinglecloth(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
			
			String id = request.getParameter("id");
			
			clothdomain theEmployee = icloth.getbyId(Integer.parseInt(id));
			
			request.setAttribute("cloth", theEmployee);
			
			dispatcher = request.getRequestDispatcher("login.jsp");
			
			dispatcher.forward(request, response);
		}
	 
		private void listcloth(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	        List<clothdomain> theList = icloth.getallcloth();
			
			request.setAttribute("allclothList", theList);
			
			dispatcher = request.getRequestDispatcher("cloth.jsp");
			
			dispatcher.forward(request, response);
		}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		clothdomain cd = new clothdomain();
		cd.setName(request.getParameter("name"));
		cd.setBrand_name(request.getParameter("brand_name"));
		cd.setSize(request.getParameter("size"));
		cd.setPrice(Double.parseDouble(request.getParameter("price")));
		if(id.isEmpty() || id == null) {	
		if(icloth.save(cd)) {
				request.setAttribute("NOTIFICATION", "cloth Saved Successfully!");
			}
		
		}else {
			
			cd.setId(Integer.parseInt(id));
			if(icloth.update(cd)) {
				request.setAttribute("NOTIFICATION", "cloth Updated Successfully!");
			}
			
		}
		
		listcloth(request, response);
	}
	}


