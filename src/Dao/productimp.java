package Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import Domain.productdomain;
import Util.database;

public class productimp implements Iproduct{
	
//	public static void main(String[] args) {
//		
//		productimp pm=new productimp();
//		pm.getallproduct();
//	}
	
	Connection connection = null;
	ResultSet resultSet = null;
	Statement statement = null;
	PreparedStatement preparedStatement = null;
	@Override
	public List<productdomain> getallproduct(){
		List<productdomain> allproductList = new ArrayList<productdomain>();
        try {
            Statement stmt = database.createConnection().createStatement();
            ResultSet rs = stmt.executeQuery("Select * from products");
            while (rs.next()) {
                productdomain product = new productdomain();
                product.setId(rs.getInt("id"));
                product.setName(rs.getString("name"));
                product.setBrand_name(rs.getString("brand_name"));
                product.setManufacture_date(rs.getString("manufacture_date"));
                product.setExpire_date(rs.getString("expire_date"));
                product.setPrice(Double.parseDouble((rs.getString("price"))));
                allproductList.add(product);
            }
            rs.close();
            stmt.close();

        } catch (SQLException e) {
        	e.printStackTrace();
        }
        return allproductList;
    }


	@Override
	public productdomain getbyId(int id) {
		productdomain product = null;
		try {
			product= new productdomain();
			String sql = "SELECT * FROM products WHERE id="+id;
			connection = database.createConnection();
			statement = connection.createStatement();
			resultSet = statement.executeQuery(sql);
			while(resultSet.next()) {
				product = new productdomain();
				product.setName(resultSet.getString("name"));
				product.setBrand_name(resultSet.getString("brand_name"));
				product.setManufacture_date(resultSet.getString("manufacture_date"));
				product.setExpire_date(resultSet.getString("expire_date"));
				product.setPrice(Double.parseDouble(resultSet.getString("price")));
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}
		return product;
	}

	@Override
	public boolean save(productdomain p) {
		boolean flag = false;
		try {
			String sql = "INSERT INTO products(name, brand_name, manufacture_date, expire_date, price)VALUES"
					+ "('"+p.getName()+"', '"+p.getBrand_name()+"', '"+p.getManufacture_date()+"','"+p.getExpire_date()+"','"+p.getPrice()+"')";
			connection = database.createConnection();
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.executeUpdate();
			flag = true;
		}catch(SQLException ex) {
			ex.printStackTrace();
		}
		return flag;
	}

	@Override
	public boolean delete(int id) {
		boolean flag = false;
		try {
			String sql = "DELETE FROM products where id="+id;
			connection = database.createConnection();
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.executeUpdate();
			flag = true;
		}catch(SQLException e) {
			e.printStackTrace();
		}
		return flag;
	}
	@Override
	public boolean update(productdomain dproduct) {
		boolean flag = false;
		try {
			String sql = "UPDATE products SET name = '"+dproduct.getName()+"',Brand_name = '"+dproduct.getBrand_name()+"' "+ "manufacture_date = '"+dproduct.getManufacture_date()+"', Expire_date = '"+dproduct.getExpire_date()+"',price='"+dproduct.getPrice()+"' where id="+dproduct.getId();
			connection = database.createConnection();
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.executeUpdate();
			flag = true;
		}catch(SQLException e) {
			e.printStackTrace();
		}
		return flag;
	}
}
