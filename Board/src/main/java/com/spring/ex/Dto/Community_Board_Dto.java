package com.spring.ex.Dto;

import java.sql.Date;

public class Community_Board_Dto {
	private int cb_num;				
	private String cb_title;		
	private String cb_memo;			
	private String cb_author;		
	private Date cb_regdate;
	public int getCb_num() {
		return cb_num;
	}
	public void setCb_num(int cb_num) {
		this.cb_num = cb_num;
	}
	public String getCb_title() {
		return cb_title;
	}
	public void setCb_title(String cb_title) {
		this.cb_title = cb_title;
	}
	public String getCb_memo() {
		return cb_memo;
	}
	public void setCb_memo(String cb_memo) {
		this.cb_memo = cb_memo;
	}
	public String getCb_author() {
		return cb_author;
	}
	public void setCb_author(String cb_author) {
		this.cb_author = cb_author;
	}
	public Date getCb_regdate() {
		return cb_regdate;
	}
	public void setCb_regdate(Date cb_regdate) {
		this.cb_regdate = cb_regdate;
	}
}
