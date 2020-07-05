package com.spring.ex.dao;
 
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.ex.dto.Community_Board_Dto;
import com.spring.ex.mapper.BoardMapper;
 
 
@Service("boardDAOService")
public class BoardDAOService implements BoardDAO{
    
    @Autowired
    private SqlSession sqlSession;
    
    public List<Community_Board_Dto> selectBoardList(Community_Board_Dto boardVO) throws Exception {
        BoardMapper mapper = sqlSession.getMapper(BoardMapper.class);
        return mapper.selectBoardList(boardVO);
    }
 
    public void insertBoard(Community_Board_Dto boardVO) throws Exception {
	    java.util.Date date1 = new java.util.Date();
	    java.sql.Date date2 = new java.sql.Date(date1.getTime());
		boardVO.setCb_regdate(date2);
        BoardMapper mapper = sqlSession.getMapper(BoardMapper.class);
        mapper.insertBoard(boardVO);
    }
 
    public void updateBoard(Community_Board_Dto boardVO) throws Exception {
    	System.out.println(boardVO);
        BoardMapper mapper = sqlSession.getMapper(BoardMapper.class);
        mapper.updateBoard(boardVO);
    }
 
    public void deleteBoard(Community_Board_Dto boardVO) throws Exception {
        BoardMapper mapper = sqlSession.getMapper(BoardMapper.class);
        mapper.deleteBoard(boardVO);
    }
 
    @Override
    public Community_Board_Dto selectBoardByCode(Community_Board_Dto boardVO) throws Exception {
        BoardMapper mapper = sqlSession.getMapper(BoardMapper.class);
        return mapper.selectBoardByCode(boardVO);
    }
}