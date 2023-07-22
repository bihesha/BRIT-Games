package com.user;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class UserDBUtil {
	
	//Initialising the connection, statement and resultset variables
	private static boolean isSuccess;
	private static Connection connect = null;
	private static Statement stat = null;
	private static ResultSet re = null;

	//validation function of login
	public static boolean validate(String username, String password){
		
		try {
			//creating connection
			connect = DBConnect.getConnection();
			stat = connect.createStatement();
			//sql query
			String sql = "select* from user where user_name = '"+username+"' and password = '"+password+"'";
			re = stat.executeQuery(sql);
			
			if(re.next()) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	public static List<User> getUser(String userName){
		//User user = null;
		//User u = null;
		ArrayList<User> us1 = new ArrayList<>();
		
		try {
			//creating connection
			connect  = DBConnect.getConnection();
			stat = connect.createStatement();
			//sql query
			String sql = "select * from user where user_name='"+userName+"'";
			re = stat.executeQuery(sql);
			
			while(re.next()) {
				int id = re.getInt(1);
				String fname = re.getString(2);
				String lname = re.getString(3);
				String email = re.getString(4);
				String phone = re.getString(5);
				String userT = re.getString(6);
				String userN = re.getString(7);
				String passU = re.getString(8);
				
				 User u = new User(id,fname,lname,email,phone,userT,userN,passU);
				us1.add(u);
				
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return us1;
	}
	
	//insert function of register
	public static boolean insertuser(String fname,String lname,String email,String phone,String userType,String username,String password) {
		
		boolean isSuccess = false;
		
		
		try {
			//creating connection
			connect = DBConnect.getConnection();
			stat = connect.createStatement();
			//sql query
			String sql = "insert into user values (0,'"+fname+"','"+lname+"','"+email+"','"+phone+"','"+userType+"','"+username+"','"+password+"')";
			int re = stat.executeUpdate(sql);
			
			if(re > 0) {
				isSuccess = true;
			}else {
				isSuccess = false;
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		
		return isSuccess;
	}
	
	//update function of user details 
	public static boolean updateuser(String id,String fname,String lname,String email,String phone,String usertype,String username,String password) {
		
		try {
			//creating connection
			connect = DBConnect.getConnection();
			stat = connect.createStatement();
			//sql query
			String sql = "update user set first_name='"+fname+"',last_name='"+lname+"',email='"+email+"',phone_no='"+phone+"',user_type='"+usertype+"',user_name='"+username+"',password='"+password+"' where user_id='"+id+"'";
			int rs = stat.executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess = true;
			}else {
				isSuccess = false;
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return isSuccess;
	}
	
	//retrieving function of user details 
	public static List<User> getUserDetails(String Fname){
		
	//	int ConvertedID = Integer.parseInt(Id);
		
		ArrayList<User> u1 = new ArrayList<>();
		
		try {
			//creating connection
			connect  = DBConnect.getConnection();
			stat = connect.createStatement();
			//sql query
			String sql = "select * from user where first_name='"+Fname+"'";
			re = stat.executeQuery(sql);
			
			while(re.next()) {
				int id = re.getInt(1);
				String fname = re.getString(2);
				String lname = re.getString(3);
				String email = re.getString(4);
				String phone = re.getString(5);
				String userT = re.getString(6);
				String userN = re.getString(7);
				String passU = re.getString(8);
				
				User u = new User(id,fname,lname,email,phone,userT,userN,passU);
				u1.add(u);
				
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return u1;
	}
	
	//delete function of user details 
	public static boolean deleteUser(String id) {
		
		int ConvertedID = Integer.parseInt(id);
		
		try {
			//creating connection
			connect = DBConnect.getConnection();
			stat = connect.createStatement();
			//sql query
			String sql = "delete from user where user_id='"+ConvertedID+"'";
			int r = stat.executeUpdate(sql);
			
			if(r > 0) {
				isSuccess = true;
			}else {
				isSuccess = false;
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
}
