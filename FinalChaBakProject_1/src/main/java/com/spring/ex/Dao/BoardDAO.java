package com.spring.ex.Dao;
 
import java.util.List;

import com.spring.ex.Dto.Community_Board_Dto;
 
 
public interface BoardDAO {
 
    /**
     * 게시물 리스트 조회
     * @param boardVO
     * @return
     * @throws Exception
     */
    List<Community_Board_Dto> selectBoardList(Community_Board_Dto boardVO) throws Exception;
 
    /**
     * 게시물 등록
     * @param boardVO
     * @throws Exception
     */
    void insertBoard(Community_Board_Dto boardVO) throws Exception;
 
    /**
     * 게시물 수정
     * @param boardVO
     * @throws Exception
     */
    void updateBoard(Community_Board_Dto boardVO) throws Exception;
 
    /**
     * 게시물 삭제
     * @param boardVO
     * @throws Exception
     */
    void deleteBoard(Community_Board_Dto boardVO) throws Exception;
 
    /**
     * 게시물 조회
     * @param boardVO
     * @return
     * @throws Exception
     */
    Community_Board_Dto selectBoardByCode(Community_Board_Dto boardVO) throws Exception;
    
    
    Community_Board_Dto selectBoardMember(Community_Board_Dto boardVO) throws Exception;
}