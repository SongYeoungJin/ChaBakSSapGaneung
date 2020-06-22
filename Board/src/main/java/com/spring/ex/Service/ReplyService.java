package com.spring.ex.Service;

import java.util.List;

import com.spring.ex.Dto.Community_Board_Comment_Dto;

public interface ReplyService {

	//댓글 조회
	public List<Community_Board_Comment_Dto> readReply(int cb_num) throws Exception;
	
	//댓글 작성
	public void writeReply(Community_Board_Comment_Dto dto) throws Exception;
	
	//댓글 수정
	public void updateReply(Community_Board_Comment_Dto dto) throws Exception;
	
	//댓글 삭제
	public void deleteReply(Community_Board_Comment_Dto dto) throws Exception;
		
	//선택된 댓글 조회
	public Community_Board_Comment_Dto selectReply(int cb_m_num) throws Exception;
}
