package com.spring.ex.Dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.spring.ex.Dto.Community_Board_Comment_Dto;

@Repository
public class ReplyDAOImpl implements ReplyDAO{

	@Inject SqlSession sql;
	
	// 댓글 조회
	@Override
	public List<Community_Board_Comment_Dto> readReply(int cb_num) throws Exception {
		return sql.selectList("replyMapper.readReply", cb_num);
	}

	// 댓글 작성
	@Override
	public void writdReply(Community_Board_Comment_Dto dto) throws Exception {
		sql.insert("replyMapper.writeReply", dto);
	}

	// 댓글 수정
	@Override
	public void updateReply(Community_Board_Comment_Dto dto) throws Exception {
		sql.update("replyMapper.updateReply", dto);
	}

	// 댓글 삭제
	@Override
	public void deleteReply(Community_Board_Comment_Dto dto) throws Exception {
		sql.delete("replyMapper.deleteReply", dto);
	}

	// 선택된 댓글 조회
	@Override
	public Community_Board_Comment_Dto selectReply(int cb_m_num) throws Exception {
		return (Community_Board_Comment_Dto) sql.selectOne("replyMapper.selectReply", cb_m_num);
	}

}

