package com.zhaoyang.bookstore.bean;

public class Book {
	private Integer id;
	private String title;
	private String author;
	private Double price;
	private Integer sales;
	private Integer stock;
	private String imgPath="static/img/default.jpg";
	
	@Override
	public String toString() {
		return "Book [id=" + id + ", title=" + title + ", author=" + author + ", price=" + price + ", sales=" + sales
				+ ", stock=" + stock + ", imgPath=" + imgPath + "]";
	}
	public Book() {
		super();
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public Double getPrice() {
		return price;
	}
	public void setPrice(Double price) {
		this.price = price;
	}
	public Integer getSales() {
		return sales;
	}
	public void setSales(Integer sales) {
		this.sales = sales;
	}
	public Integer getStock() {
		return stock;
	}
	public void setStock(Integer stock) {
		this.stock = stock;
	}
	public String getImgPath() {
		return imgPath;
	}
	public void setImgPath(String imgPath) {
		this.imgPath = imgPath;
	}
	
	public Object[] extractAttrAsList() {
		Object[] arrayRefVar = {title,author,price,sales,stock,imgPath,id};
		return arrayRefVar;
	}

}
