package com.spring.ex.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.ex.dto.Vanlife_Board_Dto;
import com.spring.ex.mapper.Vanlife_BoardMapper;


@Service("vanlife_boardDAOService")
public class Vanlife_BoardDAOService implements Vanlife_BoardDAO{
	 @Autowired
	    private SqlSession sqlSession;
	    
	    public List<Vanlife_Board_Dto> selectVanlife_BoardList(Vanlife_Board_Dto vanlife_boardVO) throws Exception {
	        Vanlife_BoardMapper mapper = sqlSession.getMapper(Vanlife_BoardMapper.class);
	        return mapper.selectVanlife_BoardList(vanlife_boardVO);
	    }
	 
	    public void insertVanlife_Board(Vanlife_Board_Dto vanlife_boardVO) throws Exception {
	        Vanlife_BoardMapper mapper = sqlSession.getMapper(Vanlife_BoardMapper.class);
	        mapper.insertVanlife_Board(vanlife_boardVO);
	    }
	 
	    public void updateVanlife_Board(Vanlife_Board_Dto vanlife_boardVO) throws Exception {
	    	System.out.println(vanlife_boardVO);
	        Vanlife_BoardMapper mapper = sqlSession.getMapper(Vanlife_BoardMapper.class);
	        mapper.updateVanlife_Board(vanlife_boardVO);
	    }
	 
	    public void deleteVanlife_Board(Vanlife_Board_Dto vanlife_boardVO) throws Exception {
	        Vanlife_BoardMapper mapper = sqlSession.getMapper(Vanlife_BoardMapper.class);
	        mapper.deleteVanlife_Board(vanlife_boardVO);
	    }
	 
	    @Override
	    public Vanlife_Board_Dto selectVanlife_BoardByCode(Vanlife_Board_Dto vanlife_boardVO) throws Exception {
	        Vanlife_BoardMapper mapper = sqlSession.getMapper(Vanlife_BoardMapper.class);
	        return mapper.selectVanlife_BoardByCode(vanlife_boardVO);
	    }
}
