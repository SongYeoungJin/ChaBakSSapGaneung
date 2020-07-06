package com.spring.ex.Service;
 
import java.util.List;

import com.spring.ex.Dto.Community_Board_Dto;

 
 
public interface BoardService {
 
    /**
     * 게시물 리스트 조회
     * @param boardVO
     * @return
     * @throws Exception
     */
    public List<Community_Board_Dto> selectBoardList(Community_Board_Dto boardVO) throws Exception;
    
    /**
     * 게시물 작성
     * @param boardVO
     * @throws Exception
     */
    public void insertBoard(Community_Board_Dto boardVO) throws Exception;
    
    /**
     * 게시물 수정
     * @param boardVO
     * @throws Exception
     */
    public void updateBoard(Community_Board_Dto boardVO) throws Exception;
    
    /**
     * 게시물 삭제
     * @param boardVO
     * @throws Exception
     */
    public void deleteBoard(Community_Board_Dto boardVO)  throws Exception;
 
    /**
     * 게시글 조회
     * @param boardVO
     * @return
     * @throws Exception
     */
    public Community_Board_Dto selectBoardByCode(Community_Board_Dto boardVO) throws Exception;
    
    public Community_Board_Dto selectBoardMember(Community_Board_Dto boardVO) throws Exception;
}