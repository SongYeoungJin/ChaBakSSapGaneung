package com.spring.ex.Service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.spring.ex.Dao.ReplyDAO;
import com.spring.ex.Dto.Community_Board_Comment_Dto;


@Service
public class ReplyServiceImpl implements ReplyService {
	
	@Inject
	private ReplyDAO dao;

	// 댓글 목록
	@Override
	public List<Community_Board_Comment_Dto> readReply(int cb_num) throws Exception {
		return dao.readReply(cb_num);
	}
	
	// 댓글 작성
	@Override
	public void writeReply(Community_Board_Comment_Dto dto) throws Exception {
		dao.writdReply(dto);
	}

	// 댓글 수정
	@Override
	public void updateReply(Community_Board_Comment_Dto dto) throws Exception {
		dao.updateReply(dto);
	}

	// 댓글 삭제
	@Override
	public void deleteReply(Community_Board_Comment_Dto dto) throws Exception {
		dao.deleteReply(dto);
	}

	// 선택된 댓글 조회
	@Override
	public Community_Board_Comment_Dto selectReply(int cb_m_num) throws Exception {
		return dao.selectReply(cb_m_num);
	}

}
