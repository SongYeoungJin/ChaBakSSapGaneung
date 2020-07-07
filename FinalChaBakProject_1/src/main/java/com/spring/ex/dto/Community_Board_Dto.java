package com.spring.ex.dto;

import java.sql.Date;

public class Community_Board_Dto {
	private int cb_num;
	private String cb_title;
	private String cb_memo;
	private String cb_author;
	private java.sql.Date cb_regdate;
	private int m_num;
	private String cbc_num;

	public java.sql.Date getCb_regdate() {
		return cb_regdate;
	}

	public String getCbc_num() {
		return cbc_num;
	}

	public void setCbc_num(String cbc_num) {
		this.cbc_num = cbc_num;
	}

	public void setCb_regdate(java.sql.Date cb_regdate) {
		this.cb_regdate = cb_regdate;
	}

	public int getM_num() {
		return m_num;
	}

	public void setM_num(int m_num) {
		this.m_num = m_num;
	}

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

	public String toString() {
		return "Community_Board_Dto [cb_num=" + cb_num + ",cb_title" + cb_title + ",cb_memo" + cb_memo + ",cb_author"
				+ cb_author + m_num + ",m_num" + "]";
	}
}
