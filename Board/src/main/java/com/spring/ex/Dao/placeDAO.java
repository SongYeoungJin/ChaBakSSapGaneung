package com.spring.ex.Dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.ex.Dto.placeDTO;
@Repository
public class placeDAO implements placeDAOImpl {
	@Autowired
	public SqlSessionTemplate mybatis;
	@Override
	public int userInsert (placeDTO dto) {
		return mybatis.insert("placeMapper.placeInsert",dto);
	}
}

	
