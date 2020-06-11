package com.spring.ex.Dto;

import java.sql.Date;

public class Vanlife_board_comments_Dto {	// ��������ı�
	private int vbc_num;				// ������ȣ
	private int r_num;					// ���������ȣ
	private String vbc_v_name;			// ����ı��ǰ����
	private int vbc_star;				// ����ı⺰��
	private Date vbc_regdate;			// ����ı�����
	private int vbc_m_num;				// ����ı� ȸ����ȣ
	private String vbc_comment;			// ����ı� ����
	private String vbc_image;			// ����ı� ����
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
