package com.spring.ex.Dao;

import java.util.List;

import com.spring.ex.Dto.Community_Board_Dto;
import com.spring.ex.Dto.SearchCriteria;



public interface BoardDAO {

	// 게시글 작성
	public void write(Community_Board_Dto dto) throws Exception;
	
	// 게시물 목록 조회
	public List<Community_Board_Dto> list(SearchCriteria scri) throws Exception;

	// 게시물 총 갯수
	public int listCount(SearchCriteria scri) throws Exception;
	
	// 게시물 조회
	public Community_Board_Dto read(int cb_num) throws Exception;
	
	// 게시물 수정
	public void update(Community_Board_Dto dto) throws Exception;
	
	// 게시물 삭제
	public void delete(int cb_num) throws Exception;
}
