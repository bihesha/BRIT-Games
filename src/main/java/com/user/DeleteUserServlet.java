package com.user;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/DeleteUserServlet")
public class DeleteUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//initialising the parameters which is used to do the delete function
		String id = request.getParameter("userid");
		
		//initialising a variable for the result of the delete function
		boolean isT;
		
		//calling the delete function from the DBUtil
		isT = UserDBUtil.deleteUser(id);
		
		if(isT == true) {
			RequestDispatcher dis = request.getRequestDispatcher("Register.jsp");
			dis.forward(request, response);
		}
		else 
		{
			//listing the data tuples in the database
			List<User> userDetails = UserDBUtil.getUserDetails(id);
			request.setAttribute("UserDetails", userDetails);
			
			RequestDispatcher dis1 = request.getRequestDispatcher("userAccount.jsp");
			dis1.forward(request, response);
			
		}
	}

}
