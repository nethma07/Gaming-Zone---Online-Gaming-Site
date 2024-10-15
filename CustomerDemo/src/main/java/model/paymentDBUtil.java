package model;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.payment.payment;

import DBconnection.dbconnection;

public class paymentDBUtil {

	public static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	public static boolean validate(String cardNo){
					
			//validate
			try {
				
				con = dbconnection.getConnection();//create connection(connection inside try catch is checking errors in db connection)
				stmt = con.createStatement();
							
				String sql = "select * from payment where cardno='"+cardNo+"'";//sql query to select the suitable user and get details
				rs = stmt.executeQuery(sql);//run the sql query(Using exceptions in sql)
				
				
				if(rs.next()) {//check the cardno correct or wrong
					isSuccess = true;	
				}
				else {
					isSuccess = false;
				}
				
			}
			catch(Exception e){ //catch the error
				e.printStackTrace();//print the error
				
			}
			
			return isSuccess;
			
		}
	
	public static List<payment> getPaymentDetails2(String cardNo){
		ArrayList<payment> payment = new ArrayList<>();
		
		try {
			con = dbconnection.getConnection();
			stmt = con.createStatement();
			
			String sql = "select * from payment where cardno='"+cardNo+"'";//sql query to select the suitable player and get details
			rs = stmt.executeQuery(sql);//run the sql query
			
			while(rs.next()) {
				 int payid = rs.getInt(1);
				 String cardno = rs.getString(2);
				 String name = rs.getString(3);
				 String cvc= rs.getString(4);
				 String exdate = rs.getString(5);
				 
				 
				 payment cus = new payment(payid,cardno,name,cvc,exdate);
				
				 payment.add(cus);
			}
			
		}
		catch(Exception e){
			
		}
		
		return payment;
	
}
	//insert data
		public static boolean insertpayment(String cardno, String name, String cvc, String exdate)  {
				System.out.println("cardno: " + cardno);
				System.out.println("name: " + name);
				System.out.println("cvc: " + cvc);
				System.out.println("exdate: " + exdate);
			
			boolean isSuccess = false;
			
			
			try {//try the content inside block
				
				con = dbconnection.getConnection();
				stmt = con.createStatement();

				String sql = "insert into payment values (0,'"+cardno+"','"+name+"','"+cvc+"','"+exdate+"')";//sql query
	    		int rs = stmt.executeUpdate(sql);//store executeUpdate value in integer variable
	    		//executeUpdate statement return 2 values as 0 and 1
	    		//if value 0 unsuccess and if value 1 Success
	    		if(rs > 0) {
	    			isSuccess = true;
	    		} else { 
	    			isSuccess = false;
	    		}
	    		
	    	}
	    	catch (Exception e) {//catch if there is an error
	    		e.printStackTrace();//print that error
	    	}
			
			
			System.out.println("Insertion success: " + isSuccess);
			return isSuccess;	
			
		}
		//update data
		public static boolean updatepayment(String payid, String cardno, String name, String cvc, String exdate) {//parameters are the variables in updateServlet class
			
			boolean isSuccess = false;
	try {
	    		
	    		con = dbconnection.getConnection();
	    		stmt = con.createStatement();
	    		String sql = "update payment set cardno='"+cardno+"',name='"+name+"',cvc='"+cvc+"',exdate='"+exdate+"'"
	    				+ "where payid='"+payid+"'";
	    		int rs = stmt.executeUpdate(sql);
	    		
	    		if(rs > 0) {
	    			isSuccess = true;//rs=1
	    		}
	    		else {
	    			isSuccess = false;//rs=0 
	    		}
	    		
	    	}
	    	catch(Exception e) {
	    		e.printStackTrace();
	    	}
			
			return isSuccess;	
			
		}
		//retrieve data
		public static List<payment> getPaymentDetails(String payid){//list of payment details
			
			int convertedID = Integer.parseInt(payid);//convert string value into integer value
			
			ArrayList<payment> cus = new ArrayList<>();
			
	try {
	    		stmt = con.createStatement();
	    		String sql = "select * from payment where payid='"+convertedID+"'";
	    		rs = stmt.executeQuery(sql);
	    		
	    		while(rs.next()) {
	    			 int pid = rs.getInt(1);
					 String cardno = rs.getString(2);
					 String name = rs.getString(3);
					 String cvc= rs.getString(4);
					 String exdate = rs.getString(5);

	    			//pass the values to the object in a payment class through a constructor
					 payment c = new payment(pid,cardno,name,cvc,exdate);//parameterize constructor
	    			cus.add(c);//pass the payment object to arraylist object
	    		}
	    		
	    	}
	    	catch(Exception e) {
	    		e.printStackTrace();
	    	}	
			
			return cus;
		}
		
		//delete profile
		
		public static boolean deletepayment(String payid) {
			
			int convId = Integer.parseInt(payid);
			boolean isSuccess = false;
			    	
			    	try {
			    		
			    		con = dbconnection.getConnection();
			    		stmt = con.createStatement();
			    		String sql = "delete from payment where payid='"+convId+"'";
			    		int r = stmt.executeUpdate(sql);//executeUpdate method is use for insert, update, delete
			    		
			    		if (r > 0) {
			    			isSuccess = true;
			    		}
			    		else {
			    			isSuccess = false;
			    		}
			    		
			    	}
			    	catch (Exception e) {
			    		e.printStackTrace();
			    	}
					
					
					return isSuccess;
				}
}
