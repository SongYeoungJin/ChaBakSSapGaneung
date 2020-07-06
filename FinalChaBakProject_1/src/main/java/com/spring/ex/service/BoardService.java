package com.spring.ex.service;

import java.util.List;

import com.spring.ex.dto.Community_Board_Dto;

public interface BoardService {


	/**
	 * 댓글 리스트 조회
	 * 
	 * @param commentVO
	 * @return
	 * @throws Exception
	 */
	
	  public List<Community_Board_Dto> selectBoardList(Community_Board_Dto boardVO) throws Exception;
	  
	 /**
		 * 댓글 작성
		 * 
		 * @param commentVO
		 * @throws Exception
		 */
	
	  public void insertBoard(Community_Board_Dto boardVO) throws Exception;
	  
	 /**
		 * 댓글 수정
		 * 
		 * @param commentVO
		 * @throws Exception
		 */
	
	  public void updateBoard(Community_Board_Dto boardVO) throws
	  Exception;
	  
	 /**
		 * 댓글 삭제
		 * 
		 * @param commentVO
		 * @throws Exception
		 */
	
	  public void deleteBoard(Community_Board_Dto boardVO) throws
	  Exception;
	  
	/**
	 * 댓글 조회
	 * 
	 * @param commentVO
	 * @return
	 * @throws Exception
	 */
			  public Community_Board_Dto selectBoardByCode(Community_Board_Dto boardVO) throws Exception;
			 
			  public Community_Board_Dto selectBoardMember(Community_Board_Dto boardVO) throws Exception;
			    
}