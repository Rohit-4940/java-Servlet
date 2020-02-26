package Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import Domain.clothdomain;
import Util.database;

public class clothimp implements Icloth{
//public static void main(String[] args) {
//	clothimp pm=new clothimp();
//	pm.getallcloth();
//}
	
	
	
	Connection connection = null;
	ResultSet resultSet = null;
	Statement statement = null;
	PreparedStatement preparedStatement = null;
	@Override
	public List<clothdomain> getallcloth() {
		List<clothdomain> allclothList = new ArrayList<clothdomain>();
        try {
            Statement stmt = database.createConnection().createStatement();
            ResultSet rs = stmt.executeQuery("Select * from cloths");
            while (rs.next()) {
                clothdomain cloth = new clothdomain();
                cloth.setId(rs.getInt("id"));
                cloth.setName(rs.getString("name"));
                cloth.setBrand_name(rs.getString("brand_name"));
                cloth.setSize(rs.getString("size"));
                cloth.setPrice(Double.parseDouble((rs.getString("price"))));
                allclothList.add(cloth);
            }
            rs.close();
            stmt.close();

        } catch (SQLException e) {
        	e.printStackTrace();
        }
        return allclothList;
	}

	@Override
	public clothdomain getbyId(int id) {
		clothdomain cloth = null;
		try {
			cloth= new clothdomain();
			String sql = "SELECT * FROM cloths WHERE id="+id;
			connection = database.createConnection();
			statement = connection.createStatement();
			resultSet = statement.executeQuery(sql);
			while(resultSet.next()) {
				cloth = new clothdomain();
				cloth.setName(resultSet.getString("name"));
				cloth.setBrand_name(resultSet.getString("brand_name"));
				cloth.setSize(resultSet.getString("size"));
				cloth.setPrice(Double.parseDouble(resultSet.getString("price")));
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}
		return cloth;
	}

	@Override
	public boolean save(clothdomain c) {
		boolean flag = false;
		try {
			String sql = "INSERT INTO cloths(Name,Brand_name,Size,Price)VALUES(?,?,?,?)";
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
			String sql = "DELETE FROM cloths where id="+id;
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
	public boolean update(clothdomain dcloth) {
		boolean flag = false;
		return flag;
	}

}
