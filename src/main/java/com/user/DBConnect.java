package com.user;

import java.sql.Connection;
import java.sql.DriverManager;

//create database connection
public class DBConnect {

	//initialising the variables needed for the connection
	private static String url = "jdbc:mysql://localhost:3306/online_gaming_site?useSSL=false";
	private static String user = "root";
	private static String password1 = "dilshan@123";
	private static Connection connect;
	
	public static Connection getConnection() {
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			connect = DriverManager.getConnection(url, user, password1);
		}
		catch(Exception e) {
			System.out.println("Database connection is not success...");
		}
		
		return connect;
	}
}
