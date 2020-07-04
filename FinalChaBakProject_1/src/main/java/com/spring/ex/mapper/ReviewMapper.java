package com.spring.ex.mapper;

import java.util.List;

import com.spring.ex.Dto.ReviewDto;


public interface ReviewMapper {
	// 게시물 리스트 조회
    public List<ReviewDto> selectBoardList(ReviewDto boardVO) throws Exception;
    
    // 게시물 등록
    public void insertBoard(ReviewDto boardVO) throws Exception;
    
    // 게시물 수정
    public void updateBoard(ReviewDto boardVO) throws Exception;
    
    // 게시물 삭제
    public void deleteBoard(ReviewDto boardVO) throws Exception;
 
    // 게시물 조회
    public ReviewDto selectBoardByCode(ReviewDto boardVO) throws Exception;
}
