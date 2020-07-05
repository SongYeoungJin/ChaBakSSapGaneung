package com.spring.ex.mapper;

import java.util.List;

import com.spring.ex.dto.Vanlife_Board_Dto;


public interface Vanlife_BoardMapper {
	// 게시물 리스트 조회
    public List<Vanlife_Board_Dto> selectVanlife_BoardList(Vanlife_Board_Dto vanlife_boardVO) throws Exception;
    
    // 게시물 등록
    public void insertVanlife_Board(Vanlife_Board_Dto vanlife_boardVO) throws Exception;
    
    // 게시물 수정
    public void updateVanlife_Board(Vanlife_Board_Dto vanlife_boardVO) throws Exception;
    
    // 게시물 삭제
    public void deleteVanlife_Board(Vanlife_Board_Dto vanlife_boardVO) throws Exception;
 
    // 게시물 조회
    Vanlife_Board_Dto selectVanlife_BoardByCode(Vanlife_Board_Dto vanlife_boardVO) throws Exception;
}
