package com.spring.ex.dto;

public class Reservation_Dto {
	private int r_num;
	private int r_v_num;
	private String r_v_name;
	private int r_v_price;
	private java.sql.Date r_date;
	public int getR_num() {
		return r_num;
	}
	public void setR_num(int r_num) {
		this.r_num = r_num;
	}
	public int getR_v_num() {
		return r_v_num;
	}
	public void setR_v_num(int r_v_num) {
		this.r_v_num = r_v_num;
	}
	public String getR_v_name() {
		return r_v_name;
	}
	public void setR_v_name(String r_v_name) {
		this.r_v_name = r_v_name;
	}
	public int getR_v_price() {
		return r_v_price;
	}
	public void setR_v_price(int r_v_price) {
		this.r_v_price = r_v_price;
	}
	public java.sql.Date getR_date() {
		return r_date;
	}
	public void setR_date(java.sql.Date r_date) {
		this.r_date = r_date;
	}
	
}
