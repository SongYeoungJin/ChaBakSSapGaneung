package com.spring.ex.Dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.ex.Dto.MemberDto;
import com.spring.ex.Dto.SearchCriteria;
import com.spring.ex.Dto.placeDTO;

@Repository
public class MemberDao implements MemberIDao{
	@Inject
	private SqlSession sqlSession;
	
	@Autowired
	public SqlSessionTemplate mybatis;
	@Override
	public int userInsert (MemberDto dto) {
		return mybatis.insert("memberMapper.userInsert",dto);
	}
	
	// 寃뚯떆臾� 紐⑸줉 議고쉶
	@Override
	public List<placeDTO> list(SearchCriteria scri) throws Exception {
		return sqlSession.selectList("placeMapper.list", scri);
	}
}
