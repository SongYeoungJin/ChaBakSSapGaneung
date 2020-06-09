package com.spring.ex.Dto;

public class MarketDto {//차박용품테이블
	private int mar_num;			//고유번호
	private String mar_name;		//상품내역
	private String mar_content;		//상품설명
	private int mar_price;			//상품가격
	public int getMar_num() {
		return mar_num;
	}
	public void setMar_num(int mar_num) {
		this.mar_num = mar_num;
	}
	public String getMar_name() {
		return mar_name;
	}
	public void setMar_name(String mar_name) {
		this.mar_name = mar_name;
	}
	public String getMar_content() {
		return mar_content;
	}
	public void setMar_content(String mar_content) {
		this.mar_content = mar_content;
	}
	public int getMar_price() {
		return mar_price;
	}
	public void setMar_price(int mar_price) {
		this.mar_price = mar_price;
	}
	
}	
