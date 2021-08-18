package com.zhaoyang.bookstore.service;

import java.util.List;

import com.zhaoyang.bookstore.bean.Book;

public interface BookService {
	public boolean add(Book book);
	public boolean update(Book book);
	public boolean delete(Book book);
	public Book getOne(Book book);
	public List<Book> getAll();
}
