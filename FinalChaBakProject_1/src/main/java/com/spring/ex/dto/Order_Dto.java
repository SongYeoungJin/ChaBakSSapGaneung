package com.spring.ex.dto;

public class Order_Dto {
	private int o_num;
	private int o_m_num;
	private String o_m_name;
	private int o_price;
	private java.sql.Date o_regdate;
	public int getO_num() {
		return o_num;
	}
	public void setO_num(int o_num) {
		this.o_num = o_num;
	}
	public int getO_m_num() {
		return o_m_num;
	}
	public void setO_m_num(int o_m_num) {
		this.o_m_num = o_m_num;
	}
	public String getO_m_name() {
		return o_m_name;
	}
	public void setO_m_name(String o_m_name) {
		this.o_m_name = o_m_name;
	}
	public int getO_price() {
		return o_price;
	}
	public void setO_price(int o_price) {
		this.o_price = o_price;
	}
	public java.sql.Date getO_regdate() {
		return o_regdate;
	}
	public void setO_regdate(java.sql.Date o_regdate) {
		this.o_regdate = o_regdate;
	}
	
}
