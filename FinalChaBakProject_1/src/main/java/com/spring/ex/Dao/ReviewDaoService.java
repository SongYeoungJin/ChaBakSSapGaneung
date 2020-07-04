package com.spring.ex.Dao;

import java.sql.Date;
import java.sql.Timestamp;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.ex.Dto.ReviewDto;
import com.spring.ex.mapper.BoardMapper;
import com.spring.ex.mapper.ReviewMapper;

@Service("reviewDAOService")
public class ReviewDaoService implements ReviewDao {
	@Autowired
	private SqlSession sqlSession;

	public List<ReviewDto> selectBoardList(ReviewDto boardVO) throws Exception {
		ReviewMapper mapper = sqlSession.getMapper(ReviewMapper.class);
		return mapper.selectBoardList(boardVO);
	}

	public void insertBoard(ReviewDto boardVO) throws Exception {
		java.util.Date date1 = new java.util.Date();
		Date date2 = new java.sql.Date(date1.getTime());
		boardVO.setRb_regdate(date2);
		ReviewMapper mapper = sqlSession.getMapper(ReviewMapper.class);
		mapper.insertBoard(boardVO);
	}

	public void updateBoard(ReviewDto boardVO) throws Exception {
		System.out.println(boardVO);
		ReviewMapper mapper = sqlSession.getMapper(ReviewMapper.class);
		mapper.updateBoard(boardVO);
	}

	public void deleteBoard(ReviewDto boardVO) throws Exception {
		ReviewMapper mapper = sqlSession.getMapper(ReviewMapper.class);
		mapper.deleteBoard(boardVO);
	}

	@Override
	public ReviewDto selectBoardByCode(ReviewDto boardVO) throws Exception {
		ReviewMapper mapper = sqlSession.getMapper(ReviewMapper.class);
		return mapper.selectBoardByCode(boardVO);
	}
}
