package com.zhaoyang.bookstore.servlet;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

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
 * Servlet implementation class UserServlet
 */
public class UserServlet extends BaseServlet {
	private static final long serialVersionUID = 1L;
	private UserService us=new UserServiceImpl();
	

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
	
	protected void regist(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
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
	

	protected void login(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		User user=us.login(new User(null,request.getParameter("username"),request.getParameter("password"),null));
		if(user==null) {
			request.setAttribute("loginMsg","Username/Password is wrong");
			RequestDispatcher dispatcher= request.getRequestDispatcher("/pages/user/login.jsp");
			dispatcher.forward(request, response);
		} else {
			response.sendRedirect(request.getContextPath()+"/pages/user/login_success.jsp");
		}
	}

}
