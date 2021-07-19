package com.servlets;

import java.io.IOException;

import com.javaClasses.loginAdminDBUtil;

import jakarta.servlet.*;
import jakarta.servlet.http.*;



public class loginAdminServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//PrintWriter out = response.getWriter();
		//response.setContentType("text/html");
		
		String userName = request.getParameter("Uname");
		String password = request.getParameter("Pass");
		boolean isTrue;
		
		isTrue = loginAdminDBUtil.validate(userName, password);
		
		if(isTrue == true) {
			//List<Admin> cusDetails = loginAdminDBUtil.getAdmin(username);
			//request.setAttribute("cusDetails", cusDetails);
			
			RequestDispatcher dis = request .getRequestDispatcher("adminDashboard.jsp");
			dis.forward(request, response);
		}else {
			response.getWriter().println("Wrong");
			//out.println("<script type='text/javascript'>");
			//out.println("alert('your username or password is incorrect');");
			//out.println("location='loginAdmin.jsp'");
			//out.println("</script>");
			
		}
		
	}

}
