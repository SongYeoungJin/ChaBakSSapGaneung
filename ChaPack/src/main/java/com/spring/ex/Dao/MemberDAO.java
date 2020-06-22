package com.spring.ex.Dao;

import com.spring.ex.Dto.Member_Dto;

public interface MemberDAO {
	
	// 회원가입
	public void register(Member_Dto dto) throws Exception;
}
