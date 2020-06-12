package com.spring.ex.Dao;

import com.spring.ex.Dto.Member_Dto;

// Service 인터페이스 생성
public interface MemberDaoService {
	public Member_Dto userSelectOne(Member_Dto dto);
}
