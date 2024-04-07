package com.entity;

public class Book_Order 
{
	private int id;
	private String orderId;
	private String userName;
	private String email;
	private String phno;
	private String fulladd;
	private String bookname;
	private String author;
	private String price;
	
	
	public String getBookname() {
		return bookname;
	}
	public String getAuthor() {
		return author;
	}
	public String getPrice() {
		return price;
	}
	public void setBookname(String bookname) {
		this.bookname = bookname;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	private String paymentType;
	public int getId() {
		return id;
	}
	public String getOrderId() {
		return orderId;
	}
	public String getUserName() {
		return userName;
	}
	public String getEmail() {
		return email;
	}
	public String getPhno() {
		return phno;
	}
	public String getFulladd() {
		return fulladd;
	}
	public String getPaymentType() {
		return paymentType;
	}
	public void setId(int id) {
		this.id = id;
	}
	public void setOrderId(String orderId) {
		this.orderId = orderId;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public void setPhno(String phno) {
		this.phno = phno;
	}
	public void setFulladd(String fulladd) {
		this.fulladd = fulladd;
	}
	public void setPaymentType(String paymentType) {
		this.paymentType = paymentType;
	}
	public Book_Order() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "Book_Order [id=" + id + ", userName=" + userName + ", email=" + email
				+ ", phno=" + phno + ", fulladd=" + fulladd + ", paymentType=" + paymentType + "]";
	}
	
	
	
	
	

}
