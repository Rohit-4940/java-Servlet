package Dao;

import java.util.List;
import Domain.productdomain;
public interface Iproduct {

	List<productdomain> getallproduct();
	
	productdomain getbyId(int id);
	
	boolean save(productdomain p);
	
	boolean delete(int id);
	
	boolean update(productdomain dproduct);
}
