package com.zhaoyang.bookstore.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.alibaba.druid.pool.vendor.SybaseExceptionSorter;
import com.zhaoyang.bookstore.bean.User;
import com.zhaoyang.bookstore.service.UserService;
import com.zhaoyang.bookstore.service.impl.UserServiceImpl;

/**
 * Servlet implementation class LoginServlet
 */
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private UserService us=new UserServiceImpl();

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		User user=us.login(new User(null,request.getParameter("username"),request.getParameter("password"),null));
		if(user==null) {
			System.out.println("fail");
			RequestDispatcher dispatcher= request.getRequestDispatcher("/pages/user/login.html");
			dispatcher.forward(request, response);
		} else {
			System.out.println("success");
			response.sendRedirect(request.getContextPath()+"/pages/user/login_success.html");
		}
	}
	
	public static void main(String[] args){
		LoginServlet loginServlet = new LoginServlet();
		System.out.println( loginServlet.us.login(new User(null,"123123","123123",null)));
	}

}
