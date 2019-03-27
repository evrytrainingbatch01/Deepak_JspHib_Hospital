package com.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.UserDao;
import com.daoImpl.UserDaoImpl;
import com.evry.User;

/**
 * Servlet implementation class PatientController
 */
public class UserController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	User user = new User();
	UserDao userDao = new UserDaoImpl();

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

			if (request.getParameter("addUser") != null) {
					
					
					String patientName = request.getParameter("patientName");
					int patientAge = Integer.parseInt(request.getParameter("patientAge"));
					String bloodGroup = request.getParameter("bloodGroup");
					String checkup = request.getParameter("checkUp");
					String doctorName = request.getParameter("doctorName");
					String testRecommended = request.getParameter("testRecommended");
		
					user.setPatientName(patientName);
					user.setPatientAge(patientAge);
					user.setBloodGroup(bloodGroup);
					user.setCheckUp(checkup);
					user.setDoctorName(doctorName);
					user.setTestRecommended(testRecommended);
					
		
					userDao.saveUser(user);
					RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
					rd.forward(request, response);
			} else if (request.getParameter("showUsers") != null) {
				List<User> userList = new ArrayList();
				userList = userDao.showUsers();
				request.setAttribute("userList", userList);
				RequestDispatcher rd = request.getRequestDispatcher("showAll.jsp");
				rd.forward(request, response);
			}
	}


}
