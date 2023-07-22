package com.user;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//initialising the parameters used for the validate function
		String username = request.getParameter("uid");
		String password = request.getParameter("pass");
		
		//initialising a variable for the result of the validate function
		boolean isT;
		
		//calling the validate function from the DBUtil
		isT = UserDBUtil.validate(username, password);
		
		if(isT == true) {
			//listing the data tuples in the database
			List<User> userDetails = UserDBUtil.getUser(username);
			request.setAttribute("UserDetails", userDetails);
			
			//recording the user details during the session
			HttpSession session = request.getSession();
			session.setAttribute("UserDetails", userDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("index.jsp");
			dis.forward(request, response);
		}
		else {
			request.setAttribute("status", "failed");
			RequestDispatcher dis1 = request.getRequestDispatcher("login.jsp");
			dis1.forward(request, response);
		}
	
	}

}
