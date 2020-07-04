package com.spring.ex.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.ex.Dao.ReviewDao;
import com.spring.ex.Dto.ReviewDto;

@Service("reviewServiceImpl")
public class ReviewServiceImpl implements ReviewService {

	@Autowired
	private ReviewDao reviewDAOService;

	@Override
	public List<ReviewDto> selectBoardList(ReviewDto boardVO) throws Exception {
		List<ReviewDto> list = null;
		list = reviewDAOService.selectBoardList(boardVO);
		return list;
	}

	@Override
	public void insertBoard(ReviewDto boardVO) throws Exception {
		java.util.Date date1 = new java.util.Date();
		java.sql.Date date2 = new java.sql.Date(date1.getTime());
		boardVO.setRb_regdate(date2);
		reviewDAOService.insertBoard(boardVO);
	}

	@Override
	public void updateBoard(ReviewDto boardVO) throws Exception {
		reviewDAOService.updateBoard(boardVO);
	}

	@Override
	public void deleteBoard(ReviewDto boardVO) throws Exception {
		reviewDAOService.deleteBoard(boardVO);
	}

	@Override
	public ReviewDto selectBoardByCode(ReviewDto boardVO) throws Exception {
		ReviewDto resultVO = reviewDAOService.selectBoardByCode(boardVO);
		return resultVO;
	}
}