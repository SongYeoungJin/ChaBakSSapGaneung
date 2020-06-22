package com.spring.ex.Service;

import org.springframework.stereotype.Repository;

import com.spring.ex.Dto.Member_Dto;

public interface MemberService {

	public void register(Member_Dto dto) throws Exception;
	
}
