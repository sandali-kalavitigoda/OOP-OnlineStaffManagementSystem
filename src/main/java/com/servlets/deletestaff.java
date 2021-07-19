package com.servlets;

import java.io.IOException;

import com.javaClasses.loginAdminDBUtil;

import jakarta.servlet.*;
import jakarta.servlet.http.*;


public class deletestaff extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String sname = request.getParameter("name");
		boolean isTrue;
		
		isTrue = loginAdminDBUtil.deletestaff(sname);
		
		if (isTrue==true) {
			RequestDispatcher dis= request.getRequestDispatcher("adminDashboard.jsp");						//Redirect to the manger home page
			dis.forward(request, response);
		}else {
//		response.getWriter().println("Wrong");
			RequestDispatcher dis= request.getRequestDispatcher("staffdelete.jsp");	
			dis.forward(request, response);
		}
		
		
	}

}
