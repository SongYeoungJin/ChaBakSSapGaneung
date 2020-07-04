package com.spring.ex.Dto;

import java.sql.Date;

public class ReviewDto {
	private int rb_num;
	private String rb_title;
	private String rb_memo;
	private String rb_author;
	private Date rb_regdate;
	public int getRb_num() {
		return rb_num;
	}
	public void setRb_num(int rb_num) {
		this.rb_num = rb_num;
	}
	public String getRb_title() {
		return rb_title;
	}
	public void setRb_title(String rb_title) {
		this.rb_title = rb_title;
	}
	public String getRb_memo() {
		return rb_memo;
	}
	public void setRb_memo(String rb_memo) {
		this.rb_memo = rb_memo;
	}
	public String getRb_author() {
		return rb_author;
	}
	public void setRb_author(String rb_author) {
		this.rb_author = rb_author;
	}
	public Date getRb_regdate() {
		return rb_regdate;
	}
	public void setRb_regdate(Date rb_regdate) {
		this.rb_regdate = rb_regdate;
	}
}
