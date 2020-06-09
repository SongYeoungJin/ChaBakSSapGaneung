package com.spring.ex.Dto;

import java.sql.Date;

public class Vanlife_Board_Comment_Dto {	// 차박장소후기
	private int vbc_num;				// 고유번호
	private int r_num;					// 예약고유번호
	private String vbc_v_name;			// 장소후기상품내역
	private int vbc_star;				// 장소후기별점
	private Date vbc_regdate;			// 장소후기등록일
	private int vbc_m_num;				// 장소후기 회원번호
	private String vbc_comment;			// 장소후기 내용
	private String vbc_image;			// 장소후기 사진
	public int getVbc_num() {
		return vbc_num;
	}
	public void setVbc_num(int vbc_num) {
		this.vbc_num = vbc_num;
	}
	public int getR_num() {
		return r_num;
	}
	public void setR_num(int r_num) {
		this.r_num = r_num;
	}
	public String getVbc_v_name() {
		return vbc_v_name;
	}
	public void setVbc_v_name(String vbc_v_name) {
		this.vbc_v_name = vbc_v_name;
	}
	public int getVbc_star() {
		return vbc_star;
	}
	public void setVbc_star(int vbc_star) {
		this.vbc_star = vbc_star;
	}
	public Date getVbc_regdate() {
		return vbc_regdate;
	}
	public void setVbc_regdate(Date vbc_regdate) {
		this.vbc_regdate = vbc_regdate;
	}
	public int getVbc_m_num() {
		return vbc_m_num;
	}
	public void setVbc_m_num(int vbc_m_num) {
		this.vbc_m_num = vbc_m_num;
	}
	public String getVbc_comment() {
		return vbc_comment;
	}
	public void setVbc_comment(String vbc_comment) {
		this.vbc_comment = vbc_comment;
	}
	public String getVbc_image() {
		return vbc_image;
	}
	public void setVbc_image(String vbc_image) {
		this.vbc_image = vbc_image;
	}
	
	
}
