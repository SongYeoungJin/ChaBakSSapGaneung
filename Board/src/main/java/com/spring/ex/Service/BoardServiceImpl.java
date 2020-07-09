package com.spring.ex.Service;


import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.spring.ex.Dao.BoardDAO;
import com.spring.ex.Dao.BoardDAOImpl;
import com.spring.ex.Dto.Community_Board_Dto;
import com.spring.ex.Dto.SearchCriteria;



@Service
public class BoardServiceImpl implements BoardService {

	@Inject
	private BoardDAO dao;
	
	// 게시글 작성
	@Override
	public void write(Community_Board_Dto dto) throws Exception {
		
		System.out.println("성공");
		for(int i=0;i<4;i++) {
			System.out.println(dto);
		}
		dao.write(dto);
	}

	// 게시물 목록 조회
	@Override
	public List<Community_Board_Dto> list(SearchCriteria scri) throws Exception {
		return dao.list(scri);
	}
	
	// 게시물 총 갯수
	@Override
	public int listCount(SearchCriteria scri) throws Exception {
		return dao.listCount(scri);
	}
	
	// 게시물 조회
	@Override
	public Community_Board_Dto read(Community_Board_Dto cb_num) throws Exception {

		return dao.read(cb_num);
	}

	// 게시물 수정
	@Override
	public void update(Community_Board_Dto dto) throws Exception {
		dao.update(dto);
	}

	// 게시물 삭제
	@Override
	public void delete(int cb_num) throws Exception {
		dao.delete(cb_num);
	}

}















