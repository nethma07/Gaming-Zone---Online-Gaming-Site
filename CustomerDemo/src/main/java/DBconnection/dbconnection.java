package DBconnection;

import java.sql.Connection;
import java.sql.DriverManager;

public class dbconnection {
	//create database connection
	static String url = "jdbc:mysql://localhost:3306/online_gaming_site";//link database
	static String user = "root";
	static String Pass = "Ashen123";//database password
	private static Connection con;//save the connection in an object

	public static Connection getConnection() {//return connection

		try {

				Class.forName("com.mysql.jdbc.Driver");

				con = DriverManager.getConnection(url, user, Pass);

			}
		catch (Exception e) {
				System.out.println("Database connection is not success!!!");
		}

		return con;
		
		
}
}