package com.spring.ex.Dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.ex.Dto.Community_Board_Dto;
import com.spring.ex.Dto.SearchCriteria;
import com.spring.ex.Dto.placeDTO;
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
	public List<placeDTO> list(placeDTO dto) throws Exception {
		return sqlSession.selectList("placeMapper.list", dto);
	}
}

	
