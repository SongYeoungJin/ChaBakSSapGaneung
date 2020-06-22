package com.spring.ex.Dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.spring.ex.Dto.Member_Dto;


@Repository
public class MemberDAOImpl implements MemberDAO {
	
	@Inject SqlSession sql;
	// 회원가입

	@Override
	public void register(Member_Dto dto) throws Exception {
		sql.insert("memberMapper.register", dto);
	}
	
		
}
