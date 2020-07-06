package com.spring.ex.dto;

import java.sql.Date;

public class community_board_comment_Dto {
	private int cbc_num;
	private int cb_num;
	private String cbc_m_num;
	private String cbc_memo;
	private Date cbc_regdate;
	private String m_name;
	public int getCbc_num() {
		return cbc_num;
	}
	public void setCbc_num(int cbc_num) {
		this.cbc_num = cbc_num;
	}
	public int getCb_num() {
		return cb_num;
	}
	public void setCb_num(int cb_num) {
		this.cb_num = cb_num;
	}
	public String getCbc_m_num() {
		return cbc_m_num;
	}
	public void setCbc_m_num(String cbc_m_num) {
		this.cbc_m_num = cbc_m_num;
	}
	public String getCbc_memo() {
		return cbc_memo;
	}
	public void setCbc_memo(String cbc_memo) {
		this.cbc_memo = cbc_memo;
	}
	public Date getCbc_regdate() {
		return cbc_regdate;
	}
	public void setCbc_regdate(Date cbc_regdate) {
		this.cbc_regdate = cbc_regdate;
	}
	public String getM_name() {
		return m_name;
	}
	public void setM_name(String m_name) {
		this.m_name = m_name;
	}
	@Override
	public String toString() {
		return "community_board_comment_Dto [cbc_num=" + cbc_num + ", cb_num=" + cb_num + ", cbc_m_num=" + cbc_m_num
				+ ", cbc_memo=" + cbc_memo + ", cbc_regdate=" + cbc_regdate + ", m_name=" + m_name + "]";
	}
	
	
	

}
