package com.spring.ex.Dto;

import java.util.Date;

public class Cart_Dto {
	private int cart_num;
	private int m_num;
	private int mar_num;
	private int cart_Stock;
	private java.sql.Date addDate;
	
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
	public int getCart_Stock() {
		return cart_Stock;
	}
	public void setCart_Stock(int cart_Stock) {
		this.cart_Stock = cart_Stock;
	}
	public java.sql.Date getAddDate() {
		return addDate;
	}
	public void setAddDate(java.sql.Date addDate) {
		this.addDate = addDate;
	}

	
	

}
