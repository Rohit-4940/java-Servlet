package Dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import Util.database;
import Domain.Login;;
public class RegisterDao {
	public String registerUser(Login Login)
	 {
	 String FirstName = Login.getFirstName();
	 String MiddleName=Login.getMiddleName();
	 String LastName=Login.getLastName();
	 String username=Login.getUserName();
	 String email=Login.getEmail();
	 String password=Login.getPassword();
	 String role=Login.getRole();
	 Connection con = null;
	 PreparedStatement preparedStatement = null;
	 
	 try
	 {
	 con = database.createConnection();
	 String query = "insert into customers(FirstName,MiddleName,LastName,username,email,password,role) values (?,?,?,?,?,?,?)"; 
	 preparedStatement = con.prepareStatement(query);
	 preparedStatement.setString(1, FirstName);
	 preparedStatement.setString(2, MiddleName);
	 preparedStatement.setString(3, LastName);
	 preparedStatement.setString(4, username);
	 preparedStatement.setString(5, email);
	 preparedStatement.setString(6, password);
	 preparedStatement.setString(7, role);
	 
	 int i= preparedStatement.executeUpdate();
	 
	 if (i!=0)  //Just to ensure data has been inserted into the database
	 return "SUCCESS"; 
	 }
	 catch(SQLException e)
	 {
	 e.printStackTrace();
	 }
	 
	 return "Oops.. Something went wrong there..!";  // On failure, send a message from here.
	 }
	}
