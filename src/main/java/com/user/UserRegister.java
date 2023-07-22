package com.user;

import java.io.IOException;
//import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/UserRegister")
public class UserRegister extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//initialising the parameters used for the insert function
		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String userType = request.getParameter("userT");
		String username = request.getParameter("uid");
		String password = request.getParameter("pwd");
		
		//initialising a variable for the result of the insert function
		boolean isT;
		
		//calling the insert function from the DBUtil
		isT = UserDBUtil.insertuser(fname, lname, email, phone, userType, username, password);
		
		RequestDispatcher dis1 = request.getRequestDispatcher("Register.jsp");
		if(isT == true) {
			//List<User> userDetails = UserDBUtil.getUserDetails(fname);
			//request.setAttribute("UserDetails", userDetails);
			
			request.setAttribute("status", "success");
			
			//RequestDispatcher dis1 = request.getRequestDispatcher("Register.jsp");
			//dis1.forward(request, response);
	
		}else {
			
			//RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			//dis2.forward(request, response);
			
			request.setAttribute("status", "failed");
		}
		dis1.forward(request, response);
	}

}
