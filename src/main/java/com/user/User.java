package com.user;

public class User {

	//encapsulation
	private int user_id;
	private String first_name;
	private String last_name;
	private String email;
	private String phone_no;
	private String user_type;
	private String user_name;
	private String password;
	
	//default constructor
	public User() {}
	
	//constructor with parameters
	public User(int user_id, String first_name, String last_name, String email, String phone_no, String user_type,String user_name, String password) {
		this.user_id = user_id;
		this.first_name = first_name;
		this.last_name = last_name;
		this.email = email;
		this.phone_no = phone_no;
		this.user_type = user_type;
		this.user_name = user_name;
		this.password = password;
	}

	//setting up the getters of the parameters
	public int getUser_id() {
		return user_id;
	}

	public String getFirst_name() {
		return first_name;
	}


	public String getLast_name() {
		return last_name;
	}

	public String getEmail() {
		return email;
	}


	public String getPhone_no() {
		return phone_no;
	}

	public String getUser_type() {
		return user_type;
	}

	public String getUser_name() {
		return user_name;
	}

	public String getPassword() {
		return password;
	}

	
	
}
