package com.spring.ex.Dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.spring.ex.Dto.Community_Board_Dto;
import com.spring.ex.Dto.SearchCriteria;


@Repository
public class BoardDAOImpl implements BoardDAO {

	@Inject
	private SqlSession sqlSession;
	
	// 게시글 작성
	@Override
	public void write(Community_Board_Dto dto) throws Exception {
		sqlSession.insert("boardMapper.insert", dto);
		
	}

	// 게시물 목록 조회
	@Override
	public List<Community_Board_Dto> list(SearchCriteria scri) throws Exception {
		return sqlSession.selectList("boardMapper.list", scri);
	}
	
	// 게시물 총 갯수
	@Override
	public int listCount(SearchCriteria scri) throws Exception {
		return (Integer) sqlSession.selectOne("boardMapper.listCount", scri);
	}

	
	
	// 게시물 조회
	@Override
	public Community_Board_Dto read(int cb_num) throws Exception {
		
		return (Community_Board_Dto) sqlSession.selectOne("boardMapper.read", cb_num);
	}

	// 게시물 수정
	@Override
	public void update(Community_Board_Dto dto) throws Exception {
		
		sqlSession.update("boardMapper.update", dto);
	}

	// 게시물 삭제
	@Override
	public void delete(int cb_num) throws Exception {
		
		sqlSession.delete("boardMapper.delete", cb_num);
	}

	
}




















