package Dao;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import Domain.Login;
import Util.database;
public class LoginDao {
	public String authenticateUser(Login logins)
	 {
	 
	String userName = logins.getUserName();
	String password = logins.getPassword();
	 
	Connection con = null;
	 Statement statement = null; 
	 ResultSet resultSet = null;
	 
	String userNameDB = "";
	String passwordDB = "";
	String roleDB = "";
	try
	 {
	 con = database.createConnection(); //establishing connection
	 statement = con.createStatement(); //Statement is used to write queries. Read more about it.
	 resultSet = statement.executeQuery("select userName,password,Role from customers"); //Here table name is users and userName,password are columns. fetching all the records and storing in a resultSet.
	 
	while(resultSet.next()) // Until next row is present otherwise it return false
	 {
	  userNameDB = resultSet.getString("userName"); //fetch the values present in database
	  passwordDB = resultSet.getString("password");
	  roleDB = resultSet.getString("role");
	  
	  if(userName.equals(userNameDB) && password.equals(passwordDB) && roleDB.equals("Admin"))
	  return "Admin_Role";
	  else if(userName.equals(userNameDB) && password.equals(passwordDB) && roleDB.equals("User"))
	  return "User_Role";
	  }
	  }
	 catch(SQLException e)
	 {
	 e.printStackTrace();
	 }
	 return "Invalid user credentials"; // Just returning appropriate message otherwise
	 
}
}
