package com.spring.ex.Dto;

import java.sql.Date;

public class Community_board_comment_Dto {	//커뮤니티게시판댓글 테이블
	private int cbc_num;			//고유번호
	private String cbc_m_num;		//댓글작성회원번호
	private String cbc_memo;		//댓글작성내용
	private Date cbc_regdate;		//댓글작성일자
	public int getCbc_num() {
		return cbc_num;
	}
	public void setCbc_num(int cbc_num) {
		this.cbc_num = cbc_num;
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
	
}
