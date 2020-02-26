package Controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Dao.Iproduct;
import Dao.productimp;
import Domain.productdomain;

@WebServlet("/productServlet")
public class productServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	RequestDispatcher dispatcher = null;
	Iproduct iproduct = null;
	
	public productServlet() {
		iproduct = new productimp();
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String action = request.getParameter("action");
		
		if(action == null) {
			action = "LIST";
		}
		
		switch(action) {
			
			case "LIST":
				listproduct(request, response);
				break;
				
			case "EDIT":
				getSingleproduct(request, response);
				break;
				
			case "DELETE":
				deleteproduct(request, response);
				break;
				
			default:
				listproduct(request, response);
				break;
				
		}
		
	}
 
	private void deleteproduct(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
	
		if(iproduct.delete(Integer.parseInt(id))) {
			request.setAttribute("NOTIFICATION", "product Deleted Successfully!");
		}
		
		listproduct(request, response);
	}
 
	private void getSingleproduct(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		
		String id = request.getParameter("id");
		
		productdomain theEmployee = iproduct.getbyId(Integer.parseInt(id));
		
		request.setAttribute("product", theEmployee);
		
		dispatcher = request.getRequestDispatcher("product.jsp");
		
		dispatcher.forward(request, response);
	}
 
	private void listproduct(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		List<productdomain> theList = iproduct.getallproduct();
		
		request.setAttribute("allproductList", theList);
		
		dispatcher = request.getRequestDispatcher("product.jsp");
		
		dispatcher.forward(request, response);
	}
 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
		
		productdomain e = new productdomain();
		e.setName(request.getParameter("name"));
		e.setBrand_name(request.getParameter("brand_name"));
		e.setManufacture_date(request.getParameter("manufacture_date"));
		e.setExpire_date(request.getParameter("expire_date"));
		e.setPrice(Double.parseDouble(request.getParameter("price")));
		if(id.isEmpty() || id == null) {
			if(iproduct.save(e)) {
				request.setAttribute("NOTIFICATION", "product Saved Successfully!");
			}
		
		}else {
			
			e.setId(Integer.parseInt(id));
			if(iproduct.update(e)) {
				request.setAttribute("NOTIFICATION", "product Updated Successfully!");
			}
			
		}
		
		listproduct(request, response);
	}
 
}