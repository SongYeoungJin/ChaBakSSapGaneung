package com.spring.ex.dto;

import java.sql.Date;

//cart2 (vanlife3)
public class Cart_Dto {
	private int cart_num;
	private int m_num;
	private int mar_num;
	private int cart_price;
	private int cart_count;
	private Date addDate;
	public int getCart_num() {
		return cart_num;
	}
	public void setCart_num(int cart_num) {
		this.cart_num = cart_num;
	}
	public int getM_num() {
		return m_num;
	}
	public void setM_num(int m_num) {
		this.m_num = m_num;
	}
	public int getMar_num() {
		return mar_num;
	}
	public void setMar_num(int mar_num) {
		this.mar_num = mar_num;
	}
	public int getCart_price() {
		return cart_price;
	}
	public void setCart_price(int cart_price) {
		this.cart_price = cart_price;
	}
	public int getCart_count() {
		return cart_count;
	}
	public void setCart_count(int cart_count) {
		this.cart_count = cart_count;
	}
	public Date getAddDate() {
		return addDate;
	}
	public void setAddDate(Date addDate) {
		this.addDate = addDate;
	}
	
}
