package com.spring.ex.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.ex.dao.Vanlife_BoardDAO;
import com.spring.ex.dto.Vanlife_Board_Dto;

@Service("vanlife_boardServiceImpl")
public class Vanlife_BoardServiceImpl implements Vanlife_BoardService{
	@Autowired
    private Vanlife_BoardDAO vanlife_boardDAOService;
    
    @Override
    public List<Vanlife_Board_Dto> selectVanlife_BoardList(Vanlife_Board_Dto vanlife_boardVO) throws Exception {
        List<Vanlife_Board_Dto> list = null;
        list = vanlife_boardDAOService.selectVanlife_BoardList(vanlife_boardVO);
        return list;
    }
 
    @Override
    public void insertVanlife_Board(Vanlife_Board_Dto vanlife_boardVO) throws Exception {
        vanlife_boardDAOService.insertVanlife_Board(vanlife_boardVO);
    }
 
    @Override
    public void updateVanlife_Board(Vanlife_Board_Dto vanlife_boardVO) throws Exception {
        vanlife_boardDAOService.updateVanlife_Board(vanlife_boardVO);
    }
 
    @Override
    public void deleteVanlife_Board(Vanlife_Board_Dto vanlife_boardVO) throws Exception {
        vanlife_boardDAOService.deleteVanlife_Board(vanlife_boardVO);
    }
 
    @Override
    public Vanlife_Board_Dto selectVanlife_BoardByCode(Vanlife_Board_Dto vanlife_boardVO) throws Exception {
        
    	Vanlife_Board_Dto resultVO = vanlife_boardDAOService.selectVanlife_BoardByCode(vanlife_boardVO);
        
        return resultVO; 
    }
 
}
