package com.spring.ex.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.ex.Dao.MemberIDao;
import com.spring.ex.Dto.MemberDto;


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
	public int pointUpdate(MemberDto memdto) {
		return dao.pointUpdate(memdto);
	}
	@Override
	public void register(MemberDto dto) throws Exception {
		dao.register(dto);
	}
}
