package com.spring.ex.Dao;

import java.util.List;

import com.spring.ex.Dto.ReviewDto;


public interface ReviewDao {
    List<ReviewDto> selectBoardList(ReviewDto boardVO) throws Exception;
    void insertBoard(ReviewDto boardVO) throws Exception;
    void updateBoard(ReviewDto boardVO) throws Exception;
    void deleteBoard(ReviewDto boardVO) throws Exception;
    ReviewDto selectBoardByCode(ReviewDto boardVO) throws Exception;
}
