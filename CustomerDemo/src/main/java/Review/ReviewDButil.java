package Review;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;



public class ReviewDButil {
	
	private static Connection con = null;
	private static Statement stat = null;
	private static  ResultSet rs=null;


	
	public static boolean insertreview(String username,String review) {
		boolean isSuccess = false;
		
		try {

			con = databasecon.getconnection();
			stat = con.createStatement();
			String sql = "insert into userreview values('"+review+"', '"+username+"')";
			int rs = stat.executeUpdate(sql); //if return is successful returns 1
			
			if(rs > 0) {
				isSuccess = true;
			}else {
				isSuccess = false;
			}
			
		}catch(Exception e) {
			e.printStackTrace(); //to print the error
		}
		
		return isSuccess;
		
	}
	
	public static List<retirveStore> getdetails(String username){
		
		ArrayList<retirveStore> ret = new ArrayList<retirveStore>();
		try {
			con = databasecon.getconnection();
			stat = con.createStatement();
			String sql = "select * from userreview where username = '"+username+"'";
			rs = stat.executeQuery(sql);
			
			while(rs.next()) {
				String username1 = rs.getString(1);
				String review = rs.getString(2);
				
				retirveStore rc = new retirveStore(username1, review);
				ret.add(rc);
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return ret;
	}

	public static boolean updatereviews( String username,String review) {
		
		
		boolean IsSuccess=false;
		
		try {
			
			con=databasecon.getconnection();
			stat = con.createStatement();
			String sql = "update userreview set review ='"+review+"' where username='"+username+"'";
			
			int rs = stat.executeUpdate(sql);
			
			if(rs > 0) {
				
				IsSuccess = true;
				
			}else {
				IsSuccess = false;
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return IsSuccess;
	}

	public static boolean deletereviews(String username) {
		
		boolean IsSuccess = false;
		
		try {
			
			con =databasecon.getconnection();
			stat = con.createStatement();
			String sql = "delete from userreview where username = '"+username+"'";
			
			int rs = stat.executeUpdate(sql);
			
			if(rs > 0) {
				IsSuccess = true;
			}
			else {
				IsSuccess = false;
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		
		return IsSuccess;
	}


}

