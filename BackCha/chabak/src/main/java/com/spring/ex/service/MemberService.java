package com.spring.ex.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.ex.dao.MemberIDao;
import com.spring.ex.dto.MemberDto;

@Service("IMemberService")
public class MemberService implements IMemberService {
	@Autowired
	public MemberIDao dao;
	
	@Override
	public int userInsert (MemberDto memdto) {
		return dao.userInsert(memdto);
	}
	
	@Override
	public MemberDto login (MemberDto memdto) {

		return dao.login(memdto);
	}
	
	@Override
	public int memberUpdate(MemberDto memdto) {
		return dao.memberUpdate(memdto);

	}


	@Override
	public int memberDelete(MemberDto memdto) {
		return dao.memberDelete(memdto);
	}

	
	@Override
	public List<MemberDto> memberListAll() {
		return dao.memberListAll();
	}


}
