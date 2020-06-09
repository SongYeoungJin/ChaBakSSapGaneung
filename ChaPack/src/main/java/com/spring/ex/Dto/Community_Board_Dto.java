package com.spring.ex.Dto;

import java.sql.Date;

public class Community_Board_Dto {//커뮤니티게시판테이블
	private int cb_num;				//고유번호
	private String cb_title;		//커뮤니티제목
	private String cb_memo;			//커뮤니티내용
	private String cb_author;		//커뮤니티작성자
	private Date cb_regdate;		//커뮤니티등록일
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
