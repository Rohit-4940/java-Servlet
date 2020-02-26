package Dao;

import java.util.List;

import Domain.clothdomain;


public interface Icloth {
    List<clothdomain> getallcloth();
	
	clothdomain getbyId(int id);
	
	boolean save(clothdomain c);
	
	boolean delete(int id);
	
	boolean update(clothdomain dcloth);
}
