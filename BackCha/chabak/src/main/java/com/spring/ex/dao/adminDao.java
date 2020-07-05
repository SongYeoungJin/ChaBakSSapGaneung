package com.spring.ex.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.ex.dto.adminDto;

@Repository
public class adminDao implements adminIDao {
	
	@Autowired
	public SqlSessionTemplate mybatis;
	
	@Override
	public adminDto alogin(adminDto admindto) {
		return mybatis.selectOne("adminMapper.alogin", admindto);
	}

}
