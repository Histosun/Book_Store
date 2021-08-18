package com.zhaoyang.bookstore.dao;

import java.util.List;

import com.zhaoyang.bookstore.bean.Book;

public interface BookDao {
	List<Book> getAllBook();
	boolean addBook(Book book);
	boolean deleteBook(Book book);
	boolean updateBook(Book book);
	Book getBook(Book book); 
}
