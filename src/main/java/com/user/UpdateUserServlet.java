package com.user;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/UpdateUserServlet")
public class UpdateUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		//initialising the parameters used for the update function
		String id = request.getParameter("userid");
		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String usertype = request.getParameter("userT");
		String username = request.getParameter("uname");
		String password = request.getParameter("pwd");
		
		//initialising a variable for the result of the update function
		boolean isT;
		
		//calling the update function from the DBUtil
		isT = UserDBUtil.updateuser(id, fname, lname, email, phone, usertype, username, password);
		
		if(isT == true) {
			
			//listing the data tuples in the database
			List<User> userDetails = UserDBUtil.getUserDetails(fname);
			request.setAttribute("UserDetails", userDetails);
			
			RequestDispatcher dis1 = request.getRequestDispatcher("userAccount.jsp");
			dis1.forward(request, response);
			
		}
		else {
			List<User> userDetails = UserDBUtil.getUserDetails(fname);
			request.setAttribute("UserDetails", userDetails);
			
			RequestDispatcher dis2 = request.getRequestDispatcher("userAccount.jsp");
			dis2.forward(request, response);
		}
	}

}
