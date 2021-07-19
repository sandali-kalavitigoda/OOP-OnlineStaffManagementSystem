package com.servlets;

import java.io.IOException;
import java.util.List;

import com.javaClasses.Staff;
import com.javaClasses.loginAdminDBUtil;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class StaffServlet extends HttpServlet {

	private static final long serialVersionUID = 2236280594806436843L;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String action = request.getServletPath();
		try {
			switch (action) {
			case "/edit":
				showEditForm(request, response);
				break;
			case "/update":
				updateStaff(request, response);
				break;
			default:
				listStaff(request, response);
				break;
			}
		} catch (Exception ex) {
			throw new ServletException(ex);
		}
	}

	private void updateStaff(HttpServletRequest request, HttpServletResponse response) throws IOException {
		if (request.getParameter("cancelBtn") != null) {
			response.sendRedirect("list");
		} else {
			int id = Integer.parseInt(request.getParameter("id"));
			String name = request.getParameter("name");
			String email = request.getParameter("email");
			String phone = request.getParameter("phone");
			String username = request.getParameter("username");
			String password = request.getParameter("password");

			Staff staff = new Staff(id, name, email, phone, username, password);
			loginAdminDBUtil.updateStaff(staff);
			response.sendRedirect("list");
		}
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}

	private void listStaff(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		List<Staff> staff = loginAdminDBUtil.getAllStaff();
		request.setAttribute("staffList", staff);
		RequestDispatcher dispatcher = request.getRequestDispatcher("listStaff.jsp");
		dispatcher.forward(request, response);
	}

	private void showEditForm(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		Staff staff = loginAdminDBUtil.getStaff(id);
		RequestDispatcher dispatcher = request.getRequestDispatcher("staffForm.jsp");
		request.setAttribute("staff", staff);
		dispatcher.forward(request, response);

	}
}
