package com.zhaoyang.bookstore.servlet;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zhaoyang.bookstore.bean.Book;
import com.zhaoyang.bookstore.bean.User;
import com.zhaoyang.bookstore.service.BookService;
import com.zhaoyang.bookstore.service.UserService;
import com.zhaoyang.bookstore.service.impl.BookServiceImpl;
import com.zhaoyang.bookstore.service.impl.UserServiceImpl;
import com.zhaoyang.bookstore.utils.WebUtils;

/**
 * Servlet implementation class UserServlet
 */
public class BookServlet extends BaseServlet {
	private static final long serialVersionUID = 1L;
	private BookService us=WebUtils.getBean(BookService.class);
	
	protected void list(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Book> list=us.getAll();
		request.setAttribute("list", list);
		RequestDispatcher dispatcher = request.getRequestDispatcher("/pages/manager/book_manager.jsp");
		dispatcher.forward(request, response);
	}
	
	protected void add(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Book book=WebUtils.paramToBean(request, new Book());
		us.add(book);
		
		response.sendRedirect(request.getContextPath()+"/customer/BookServlet?method=list");
	}
}
