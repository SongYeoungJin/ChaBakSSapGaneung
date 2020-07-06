package com.spring.ex.dto;


public class Market_Dto {
	private int mar_num;
	private String mar_name;
	private String mar_content;
	private int mar_price;
	private int mar_count;
	private String mar_Img;


	public String getMar_Img() {
		return mar_Img;
	}
	public void setMar_Img(String mar_Img) {
		this.mar_Img = mar_Img;
	}
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
	public int getMar_count() {
		return mar_count;
	}
	public void setMar_count(int mar_count) {
		this.mar_count = mar_count;
	}
	@Override
	public String toString() {
		return "Market_Dto [mar_num=" + mar_num + ", mar_name=" + mar_name + ", mar_content=" + mar_content
				+ ", mar_price=" + mar_price + ", mar_count=" + mar_count + ", mar_Img=" + mar_Img + "]";
	}
	
}
