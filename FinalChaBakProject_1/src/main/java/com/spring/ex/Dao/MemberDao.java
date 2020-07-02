package com.spring.ex.Dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.ex.Dto.MemberDto;




@Repository
public class MemberDao implements MemberIDao{
	
	@Autowired
	public SqlSessionTemplate mybatis;
	@Override
	public int userInsert (MemberDto memdto) {
		
		memdto.setM_id(memdto.getM_id());
		memdto.setM_pw(memdto.getM_pw());
		memdto.setM_name(memdto.getM_name());
		memdto.setM_address(memdto.getM_address());
		memdto.setM_num(memdto.getM_num());

		return mybatis.insert("memberMapper.userInsert",memdto);
		
	}

	@Override
	public MemberDto login(MemberDto memdto) {
		return mybatis.selectOne("memberMapper.login", memdto);
	}
	
	@Override
	public int memberUpdate(MemberDto memdto) {
		return mybatis.update("memberMapper.memberUpdate", memdto);
	}

	@Override
	public int pointUpdate(MemberDto memdto) {
		return mybatis.update("memberMapper.pointUpdate", memdto);
	}

	@Override
	public void register(MemberDto dto) throws Exception {
		mybatis.insert("memberMapper.register", dto);
	}
	
	
	
}
