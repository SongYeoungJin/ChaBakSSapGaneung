package com.spring.ex.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.spring.ex.dto.community_board_comment_Dto;

@Service("CommunityBoardCommentServiceImpl")
public interface CommunityBoardCommentServiceImpl {

	/**
	 * 
	 * @param commentVO
	 * @return
	 */
	int commentInsert(community_board_comment_Dto commentVO);

	
	/**
	 * 
	 * @param commentVO
	 * @return
	 */
	int commentUpdate(community_board_comment_Dto commentVO);

	/**
	 * 
	 * @param commentVO
	 * @return
	 */
	int commentDelete(community_board_comment_Dto commentVO);

	/**
	 * 
	 * @param commentVO
	 * @return
	 */
	List<community_board_comment_Dto> commnetList(int cb_num);

}
