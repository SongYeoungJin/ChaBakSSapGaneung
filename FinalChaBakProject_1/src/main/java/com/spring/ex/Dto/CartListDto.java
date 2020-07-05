package com.spring.ex.Dto;

import java.sql.Date;

public class CartListDto {
	private int CartNum;
	private String m_id;
	private int mar_num;
	private int cartCount;
	private Date addDate;
	
	private int num;
	private String mar_name;
	private int mar_price;
	private String mar_ThumbImg;
	public int getCartNum() {
		return CartNum;
	}
	public void setCartNum(int cartNum) {
		CartNum = cartNum;
	}
	public String getM_id() {
		return m_id;
	}
	public void setM_id(String m_id) {
		this.m_id = m_id;
	}
	public int getMar_num() {
		return mar_num;
	}
	public void setMar_num(int mar_num) {
		this.mar_num = mar_num;
	}
	public int getCartCount() {
		return cartCount;
	}
	public void setCartCount(int cartCount) {
		this.cartCount = cartCount;
	}
	public Date getAddDate() {
		return addDate;
	}
	public void setAddDate(Date addDate) {
		this.addDate = addDate;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getMar_name() {
		return mar_name;
	}
	public void setMar_name(String mar_name) {
		this.mar_name = mar_name;
	}
	public int getMar_price() {
		return mar_price;
	}
	public void setMar_price(int mar_price) {
		this.mar_price = mar_price;
	}
	public String getMar_ThumbImg() {
		return mar_ThumbImg;
	}
	public void setMar_ThumbImg(String mar_ThumbImg) {
		this.mar_ThumbImg = mar_ThumbImg;
	}
	
}
