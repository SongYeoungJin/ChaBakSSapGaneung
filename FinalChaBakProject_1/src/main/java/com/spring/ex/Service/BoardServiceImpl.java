package com.spring.ex.Service;
 
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.ex.Dao.BoardDAO;
import com.spring.ex.Dto.Community_Board_Dto;
 
 
@Service("boardServiceImpl")
public class BoardServiceImpl implements BoardService{
    
    @Autowired
    private BoardDAO boardDAOService;
    
    @Override
    public List<Community_Board_Dto> selectBoardList(Community_Board_Dto boardVO) throws Exception {
        List<Community_Board_Dto> list = null;
        list = boardDAOService.selectBoardList(boardVO);
        return list;
    }
 
    @Override
    public void insertBoard(Community_Board_Dto boardVO) throws Exception {
	    java.util.Date date1 = new java.util.Date();
	    java.sql.Date date2 = new java.sql.Date(date1.getTime());
		boardVO.setCb_regdate(date2);
        boardDAOService.insertBoard(boardVO);
    }
 
    @Override
    public void updateBoard(Community_Board_Dto boardVO) throws Exception {
        boardDAOService.updateBoard(boardVO);
    }
 
    @Override
    public void deleteBoard(Community_Board_Dto boardVO) throws Exception {
        boardDAOService.deleteBoard(boardVO);
    }
 
    @Override
    public Community_Board_Dto selectBoardByCode(Community_Board_Dto boardVO) throws Exception {
        
    	Community_Board_Dto resultVO = boardDAOService.selectBoardByCode(boardVO);
        
        return resultVO; 
    }

	@Override
	public Community_Board_Dto selectBoardMember(Community_Board_Dto boardVO) throws Exception {
		 
    	Community_Board_Dto resultVO = boardDAOService.selectBoardMember(boardVO);
        
        return resultVO; 
	}
}