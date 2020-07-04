package com.spring.ex.Service;

import java.util.List;

import com.spring.ex.Dto.ReviewDto;


public interface ReviewService {
    public List<ReviewDto> selectBoardList(ReviewDto boardVO) throws Exception;
    public void insertBoard(ReviewDto boardVO) throws Exception;
    public void updateBoard(ReviewDto boardVO) throws Exception;
    public void deleteBoard(ReviewDto boardVO)  throws Exception;
    public ReviewDto selectBoardByCode(ReviewDto boardVO) throws Exception;
}
