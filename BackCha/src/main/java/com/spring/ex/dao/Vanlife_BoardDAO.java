package com.spring.ex.dao;

import java.util.List;

import com.spring.ex.dto.Vanlife_Board_Dto;


public interface Vanlife_BoardDAO {
	   /**
     * 게시물 리스트 조회
     * @param vanlife_boardVO
     * @return
     * @throws Exception
     */
    List<Vanlife_Board_Dto> selectVanlife_BoardList(Vanlife_Board_Dto vanlife_boardVO) throws Exception;
 
    /**
     * 게시물 등록
     * @param vanlife_boardVO
     * @throws Exception
     */
    void insertVanlife_Board(Vanlife_Board_Dto vanlife_boardVO) throws Exception;
 
    /**
     * 게시물 수정
     * @param vanlife_boardVO
     * @throws Exception
     */
    void updateVanlife_Board(Vanlife_Board_Dto vanlife_boardVO) throws Exception;
 
    /**
     * 게시물 삭제
     * @param vanlife_boardVO
     * @throws Exception
     */
    void deleteVanlife_Board(Vanlife_Board_Dto vanlife_boardVO) throws Exception;
 
    /**
     * 게시물 조회
     * @param vanlife_boardVO
     * @return
     * @throws Exception
     */
    Vanlife_Board_Dto selectVanlife_BoardByCode(Vanlife_Board_Dto vanlife_boardVO) throws Exception;
 
}
