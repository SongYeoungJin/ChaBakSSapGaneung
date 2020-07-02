package com.spring.ex.Dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.ex.Dto.AdminMemberDto;


@Repository
public class adminDao implements adminIDao {
	
	@Autowired
	public SqlSessionTemplate mybatis;
	
	@Override
	public AdminMemberDto alogin(AdminMemberDto admindto) {
		return mybatis.selectOne("adminMapper.alogin", admindto);
	}

}
