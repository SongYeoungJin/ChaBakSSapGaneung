package com.spring.ex.Dto;

public class Vanlife_Board_Dto {	//차박장소테이블
	private int v_num;			// 고유번호
	private String v_name;		// 차박장소이름
	private String v_content;	// 차박장소설명
	private int v_price;		// 차박장소가격
	private String v_address;	// 차박장소주소
	private String vb_hit;		// 차박장소게시글조회수
	public int getV_num() {
		return v_num;
	}
	public void setV_num(int v_num) {
		this.v_num = v_num;
	}
	public String getV_name() {
		return v_name;
	}
	public void setV_name(String v_name) {
		this.v_name = v_name;
	}
	public String getV_content() {
		return v_content;
	}
	public void setV_content(String v_content) {
		this.v_content = v_content;
	}
	public int getV_price() {
		return v_price;
	}
	public void setV_price(int v_price) {
		this.v_price = v_price;
	}
	public String getV_address() {
		return v_address;
	}
	public void setV_address(String v_address) {
		this.v_address = v_address;
	}
	public String getVb_hit() {
		return vb_hit;
	}
	public void setVb_hit(String vb_hit) {
		this.vb_hit = vb_hit;
	}
	
}
