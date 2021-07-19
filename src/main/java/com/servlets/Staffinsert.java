package com.servlets;

import java.io.IOException;


import jakarta.servlet.*;
import jakarta.servlet.http.*;

import com.javaClasses.loginAdminDBUtil;



public class Staffinsert extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String username = request.getParameter("uid");
		String password = request.getParameter("psw");
		
		boolean isTrue;
		
		isTrue = loginAdminDBUtil.insertstaff(name, email, phone, username, password);
		
		if(isTrue == true) {
			
			response.getWriter().println("Successfull");
				//RequestDispatcher dis= request.getRequestDispatcher("staffinsert.jsp");						//Redirect to the manger home page
				//dis.forward(request, response);
		}else {
			
			response.getWriter().println("Unsuccessfull");
				//RequestDispatcher dis2= request.getRequestDispatcher("loginAdmin.jsp");	
				//dis2.forward(request, response);
		}
		
	}

}
