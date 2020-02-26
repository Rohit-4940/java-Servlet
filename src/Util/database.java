package Util;
import java.sql.Connection;
import java.sql.DriverManager;
public class database {
	public static Connection createConnection()
	 {
	 Connection conn = null;
	 String url = "jdbc:mysql://localhost:3306/Fitness";
	 String username = "root"; 
	 String password = "root";
	 
	 try 
	 {
	 try 
	 {
	 Class.forName("com.mysql.jdbc.Driver");  
	 } 
	 catch (ClassNotFoundException e)
	 {
	 e.printStackTrace();
	 } 
	 conn = DriverManager.getConnection(url, username, password); 
	 System.out.println("Printing connection object "+conn);
	 } 
	 catch (Exception e) 
	 {
	 e.printStackTrace();
	 }
	 return conn; 
	 }
}
