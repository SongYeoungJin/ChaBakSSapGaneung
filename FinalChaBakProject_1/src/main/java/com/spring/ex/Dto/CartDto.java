package com.spring.ex.Dto;

import java.sql.Date;

public class CartDto {
	private int CartNum;
	private String m_id;
	private int mar_num;
	private int cartCount;
	private Date addDate;
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
}
