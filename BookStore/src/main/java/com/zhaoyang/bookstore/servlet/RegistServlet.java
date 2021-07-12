package com.zhaoyang.bookstore.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zhaoyang.bookstore.bean.User;
import com.zhaoyang.bookstore.service.UserService;
import com.zhaoyang.bookstore.service.impl.UserServiceImpl;

/**
 * Servlet implementation class RegistServlet
 */
public class RegistServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private UserService us=new UserServiceImpl();

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		String email=request.getParameter("email");
		boolean regist=us.regist(new User(null, username, password, email));
		if( regist ) {
			response.sendRedirect(request.getContextPath()+"/pages/user/login_success.jsp");
		} else {
			RequestDispatcher dispatcher = request.getRequestDispatcher("/pages/user/regist.jsp");
			request.setAttribute("registMsg","username already exist");
			dispatcher.forward(request, response);
		}
	}

}
