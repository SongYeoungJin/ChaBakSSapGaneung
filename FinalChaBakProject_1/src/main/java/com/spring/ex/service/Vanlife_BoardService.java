package com.spring.ex.service;

import java.util.List;

import com.spring.ex.dto.Vanlife_Board_Dto;


public interface Vanlife_BoardService {
	 /**
     * 게시물 리스트 조회
     * @param vanlife_boardVO
     * @return
     * @throws Exception
     */
    public List<Vanlife_Board_Dto> selectVanlife_BoardList(Vanlife_Board_Dto vanlife_boardVO) throws Exception;
    
    /**
     * 게시물 작성
     * @param vanlife_boardVO
     * @throws Exception
     */
    public void insertVanlife_Board(Vanlife_Board_Dto vanlife_boardVO) throws Exception;
    
    /**
     * 게시물 수정
     * @param vanlife_boardVO
     * @throws Exception
     */
    public void updateVanlife_Board(Vanlife_Board_Dto vanlife_boardVO) throws Exception;
    
    /**
     * 게시물 삭제
     * @param vanlife_boardVO
     * @throws Exception
     */
    public void deleteVanlife_Board(Vanlife_Board_Dto vanlife_boardVO) throws Exception;
 
    /**
     * 게시글 조회
     * @param vanlife_boardVO
     * @return
     * @throws Exception
     */
    public Vanlife_Board_Dto selectVanlife_BoardByCode(Vanlife_Board_Dto vanlife_boardVO) throws Exception;

}
