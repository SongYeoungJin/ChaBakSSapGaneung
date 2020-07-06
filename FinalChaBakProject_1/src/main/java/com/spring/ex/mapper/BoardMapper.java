package com.spring.ex.mapper;
 
import java.util.List;

import com.spring.ex.dto.Community_Board_Dto;

 
public interface BoardMapper {
 
    // 게시물 리스트 조회
    public List<Community_Board_Dto> selectBoardList(Community_Board_Dto boardVO) throws Exception;
    
    // 게시물 등록
    public void insertBoard(Community_Board_Dto boardVO) throws Exception;
    
    // 게시물 수정
    public void updateBoard(Community_Board_Dto boardVO) throws Exception;
    
    // 게시물 삭제
    public void deleteBoard(Community_Board_Dto boardVO) throws Exception;
 
    // 게시물 조회
    public Community_Board_Dto selectBoardByCode(Community_Board_Dto boardVO) throws Exception;
    
    public Community_Board_Dto selectBoardMember(Community_Board_Dto boardVO) throws Exception;
    
}