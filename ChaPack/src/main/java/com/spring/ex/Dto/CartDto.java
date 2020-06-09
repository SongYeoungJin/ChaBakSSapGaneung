package com.spring.ex.Dto;

public class CartDto {//장바구니테이블
	private int cart_num;		 		//고유번호
	private int cart_o_num;				//주문고유번호
	private int cart_m_num;				//주문자고유번호
	private int cart_mar_num;			//상품고유번호
	private String cart_mar_name;		//상품내역
	private int cart_mar_price;			//상품가격
	private int cart_cnt;				//상품수량
	public int getCart_num() {
		return cart_num;
	}
	public void setCart_num(int cart_num) {
		this.cart_num = cart_num;
	}
	public int getCart_o_num() {
		return cart_o_num;
	}
	public void setCart_o_num(int cart_o_num) {
		this.cart_o_num = cart_o_num;
	}
	public int getCart_m_num() {
		return cart_m_num;
	}
	public void setCart_m_num(int cart_m_num) {
		this.cart_m_num = cart_m_num;
	}
	public int getCart_mar_num() {
		return cart_mar_num;
	}
	public void setCart_mar_num(int cart_mar_num) {
		this.cart_mar_num = cart_mar_num;
	}
	public String getCart_mar_name() {
		return cart_mar_name;
	}
	public void setCart_mar_name(String cart_mar_name) {
		this.cart_mar_name = cart_mar_name;
	}
	public int getCart_mar_price() {
		return cart_mar_price;
	}
	public void setCart_mar_price(int cart_mar_price) {
		this.cart_mar_price = cart_mar_price;
	}
	public int getCart_cnt() {
		return cart_cnt;
	}
	public void setCart_cnt(int cart_cnt) {
		this.cart_cnt = cart_cnt;
	}
	
}
