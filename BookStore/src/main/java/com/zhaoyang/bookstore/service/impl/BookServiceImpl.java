package com.zhaoyang.bookstore.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zhaoyang.bookstore.bean.Book;
import com.zhaoyang.bookstore.bean.User;
import com.zhaoyang.bookstore.dao.BookDao;
import com.zhaoyang.bookstore.dao.impl.BookDaoImpl;
import com.zhaoyang.bookstore.service.BookService;

@Service
public class BookServiceImpl implements BookService{
	@Autowired
	private BookDao ud;

	@Override
	public boolean add(Book book) {
		return ud.addBook(book);
	}

	@Override
	public boolean update(Book book) { 
		return ud.updateBook(book);
	}

	@Override
	public boolean delete(Book book) {
		return ud.updateBook(book);
	}

	@Override
	public Book getOne(Book book) {
		return ud.getBook(book);
	}

	@Override
	public List<Book> getAll() {
		return ud.getAllBook();
	}

}
