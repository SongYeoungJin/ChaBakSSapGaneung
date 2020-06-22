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
	public int userInsert (MemberDto dto) {
		return mybatis.insert("memberMapper.userInsert",dto);
	}
}
