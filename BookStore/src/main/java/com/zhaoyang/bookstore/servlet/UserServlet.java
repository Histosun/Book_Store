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
import com.zhaoyang.bookstore.utils.WebUtils;

/**
 * Servlet implementation class UserServlet
 */
public class UserServlet extends BaseServlet {
	private static final long serialVersionUID = 1L;
	private UserService us= WebUtils.getBean(UserService.class);
	
	
	protected void regist(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		User user=WebUtils.paramToBean(request, new User());
		boolean regist=us.regist(user);
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
		System.out.println(us);
		User user=us.login(WebUtils.paramToBean(request, new User()));
		if(user==null) {
			request.setAttribute("loginMsg","Username/Password is wrong");
			RequestDispatcher dispatcher= request.getRequestDispatcher("/pages/user/login.jsp");
			dispatcher.forward(request, response);
		} else {
			response.sendRedirect(request.getContextPath()+"/pages/user/login_success.jsp");
		}
	}

}
