package com.spring.ex.Service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.spring.ex.Dao.MemberDAO;
import com.spring.ex.Dto.Member_Dto;


@Service("MemberService")
public class MemberServiceImpl implements MemberService {
	
	@Inject 
	MemberDAO dao;
	
	@Override
	public void register(Member_Dto dto) throws Exception {
		
		dao.register(dto);
		
	}
	
}
