package com.spring.ex.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.ex.util.SHA256;
import com.spring.ex.dto.MemberDto;


@Repository
public class MemberDao implements MemberIDao{
	
	@Autowired
	public SqlSessionTemplate mybatis;

	@Override
	public int userInsert(MemberDto memdto) {

		memdto.setM_pw(SHA256.getSHA256(memdto.getM_pw()));

		return mybatis.insert("memberMapper.userInsert", memdto);

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
	public List<MemberDto> memberListAll() {
		return mybatis.selectList("memberMapper.memberListAll");
	}
	

	@Override
	public int memberDelete(MemberDto memdto) {
		
		memdto.setM_id(memdto.getM_id());
		memdto.setM_pw(memdto.getM_pw());
		return mybatis.delete("memberMapper.memberDelete",memdto);
		
	}
	

	/*
	 * @Override public int userInsert(MemberDto memdto) { // TODO Auto-generated
	 * method stub //memdto.setM_pw(SHA256.getSHA256(memdto.getM_pw())); return
	 * mybatis.insert("memberMapper.userInsert", memdto); }
	 * 
	 * 
	 * @Override public MemberDto login(MemberDto memdto) { // TODO Auto-generated
	 * method stub memdto.setM_pw(SHA256.getSHA256(memdto.getM_pw())); return
	 * mybatis.selectOne("memberMapper.login", memdto); }
	 * 
	 * 
	 * @Override public int memberUpdate(MemberDto memdto) { // TODO Auto-generated
	 * method stub return mybatis.update("memberMapper.memberUpdate", memdto); }
	 * 
	 */
	
	
	
	
	
	
	
	
	
}
