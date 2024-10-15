package com.customer;

import java.sql.Connection;
import java.sql.DriverManager;

//make the connection with database
public class DBConnect {
	
	private static String url = "jdbc:mysql://localhost:3306/online_gaming_site";
	private static String userName = "root";
	private static String password = "Ashen123";
	private static Connection con;
	
    static Connection getConnection() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			con = DriverManager.getConnection(url,userName, password);
			
		}
		catch(Exception e) {
			System.out.println("Database connection is not success !");
		}
		
		return con;
	}
}
