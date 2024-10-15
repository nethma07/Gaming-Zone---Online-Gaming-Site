package tournament;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class tournamentDBtil {
	

	private static Connection con = null;
	private static Statement stat = null;
	private static  ResultSet rs = null;


	
	public static boolean insertreview(String playername,String gamename) {
		boolean isSuccess = false;
		
		try {

			con = databasecon.getconnection();
			stat = con.createStatement();
			String sql = "insert into tournament values('"+gamename+"', '"+playername+"')";
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
	
	public static List<tournamentStore> getdetails(String playername){
		
		ArrayList<tournamentStore> ret = new ArrayList<tournamentStore>();
		try {
			con = databasecon.getconnection();
			stat = con.createStatement();
			String sql = "select * from tournament where playername = '"+playername+"'";
			rs = stat.executeQuery(sql);
			
			while(rs.next()) {
				String playername1= rs.getString(1);
				String gamename = rs.getString(2);
				
				tournamentStore rc = new tournamentStore(playername1,gamename);
				ret.add(rc);
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return ret;
	}

	public static boolean updatereviews( String playername,String gamename) {
		
		
		boolean IsSuccess=false;
		
		try {
			
			con=databasecon.getconnection();
			stat = con.createStatement();
			String sql = "update tournament set gamename ='"+gamename+"' where playername='"+playername+"'";
			
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

	public static boolean Deletetournament(String playername) {
		
		boolean IsSuccess = false;
		
		try {
			
			con =databasecon.getconnection();
			stat = con.createStatement();
			String sql = "delete from tournament where playername = '"+playername+"'";
			
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


