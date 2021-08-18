package com.zhaoyang.bookstore.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.zhaoyang.bookstore.bean.Book;
import com.zhaoyang.bookstore.dao.BaseDao;
import com.zhaoyang.bookstore.dao.BookDao;

@Repository
public class BookDaoImpl extends BaseDao<Book> implements BookDao {
	private final String GET_ALL="SELECT id,title,author,price,sales,stock,img_path as imgPath FROM book;";
	private final String GET_SINGLE="SELECT id,title,author,price,sales,stock,img_path as imgPath FROM book WHERE id=?;";
	private final String CREATE_BOOK="INSERT INTO book(title,author,price,sales,stock,img_path,id) VALUES(?,?,?,?,?,?,?);";
	private final String DELETE_BOOK="DELETE FROM book WHERE id=?";
	private final String UPDATE_BOOK="UPDATE book SET title=?, author=?,price=?,sales=?,stock=?,img_path=? WHERE id=?;";
	@Override
	public List<Book> getAllBook() {
		return getBeanList(GET_ALL);
	}

	@Override
	public boolean addBook(Book book) {
		return update(CREATE_BOOK,book.extractAttrAsList())>0;
	}

	@Override
	public boolean deleteBook(Book book) {
		return update(DELETE_BOOK,book.getId())>0;
	}

	@Override
	public boolean updateBook(Book book) {
		return update(UPDATE_BOOK, book.extractAttrAsList()) > 0;
	}

	@Override
	public Book getBook(Book book) {
		return getBean(GET_SINGLE,book.getId());
	}


}
