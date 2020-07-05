package com.spring.ex.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.ex.dto.placeDTO;
@Repository
public class placeDAO implements placeDAOImpl {
	
	@Inject
	private SqlSession sqlSession;
	@Autowired
	public SqlSessionTemplate mybatis;
	@Override
	public int userInsert (placeDTO dto) {
		return mybatis.insert("placeMapper.placeInsert",dto);
	}
	

	@Override
	public  List<placeDTO> placeAll() {
		return mybatis.selectList("placeMapper.pList");
	}

}

	
