package com.spring.ex.Dto;

import java.sql.Date;

public class Market_comment_Dto {//���ڿ�ǰ�ı� ���̺�
	private int mc_num;				// ������ȣ
	private int o_num;				// �ֹ�������ȣ
	private String mc_mar_name;		// ��ǰ�ı��ǰ����
	private int mc_star;			// ��ǰ�ı⺰��
	private Date mc_regdate;		// ��ǰ�ı�����
	private int mc_m_num;			// ��ǰ�ı�ȸ����ȣ
	private String mc_comment;		// ��ǰ�ı⳻��
	private String mc_image;		// ��ǰ�ı����
	public int getMc_num() {
		return mc_num;
	}
	public void setMc_num(int mc_num) {
		this.mc_num = mc_num;
	}
	public int getO_num() {
		return o_num;
	}
	public void setO_num(int o_num) {
		this.o_num = o_num;
	}
	public String getMc_mar_name() {
		return mc_mar_name;
	}
	public void setMc_mar_name(String mc_mar_name) {
		this.mc_mar_name = mc_mar_name;
	}
	public int getMc_star() {
		return mc_star;
	}
	public void setMc_star(int mc_star) {
		this.mc_star = mc_star;
	}
	public Date getMc_regdate() {
		return mc_regdate;
	}
	public void setMc_regdate(Date mc_regdate) {
		this.mc_regdate = mc_regdate;
	}
	public int getMc_m_num() {
		return mc_m_num;
	}
	public void setMc_m_num(int mc_m_num) {
		this.mc_m_num = mc_m_num;
	}
	public String getMc_comment() {
		return mc_comment;
	}
	public void setMc_comment(String mc_comment) {
		this.mc_comment = mc_comment;
	}
	public String getMc_image() {
		return mc_image;
	}
	public void setMc_image(String mc_image) {
		this.mc_image = mc_image;
	}
}
