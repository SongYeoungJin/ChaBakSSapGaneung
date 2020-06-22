package com.spring.ex.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.ex.Dao.MemberIDao;
import com.spring.ex.Dto.MemberDto;

@Service("IMemberService")
public class MemberService2 implements IMemberService {
	@Autowired
	public MemberIDao dao;
	
	@Override
	public int userInsert (MemberDto dto) {
		return dao.userInsert(dto);
	}
}
