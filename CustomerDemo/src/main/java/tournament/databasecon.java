package tournament;

import java.sql.Connection;
import java.sql.DriverManager;

public class databasecon {
	
	    private static String url = "jdbc:mysql://localhost:3306/online_gaming_site";
		private static String user = "root";
		private static String pass = "Ashen123";
		private static Connection con;
		
		public static Connection getconnection() {
			
			try {
				Class.forName("com.mysql.jdbc.Driver");
				con = DriverManager.getConnection(url,user,pass);
				
			}catch(Exception e) {
				System.out.println("Connection Unsuccesful!");
			}
			
			return con;
			
		}
	}
