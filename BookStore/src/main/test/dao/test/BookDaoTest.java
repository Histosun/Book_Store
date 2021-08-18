package dao.test;

import java.util.List;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import com.zhaoyang.bookstore.bean.Book;
import com.zhaoyang.bookstore.dao.BookDao;
import com.zhaoyang.bookstore.dao.impl.BookDaoImpl;

public class BookDaoTest {
	BookDao bd;
	
	@BeforeEach
	public void setUp() {
		bd=new BookDaoImpl();
	}
	
	@Test
	public void addBookTest() {
		Book book=new Book();
		book.setTitle("Java from begginer to give up");
		book.setAuthor("Zhaoyang");
		book.setPrice(11.2);
		book.setSales(0);
		book.setStock(0);
		
		bd.addBook(book);
	}
	
	@Test
	public void getAllTest() {
		List<Book> list=bd.getAllBook();
		
		for (Book book : list) {
			System.out.println(book);
		}
	}
}
