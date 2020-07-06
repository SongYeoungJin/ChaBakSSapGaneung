package com.spring.ex.dao;

import com.spring.ex.dto.community_board_comment_Dto;

public interface CommunityBoardCommentDaoService {
	public int commentInsert(community_board_comment_Dto commentVO);
	public community_board_comment_Dto SelectOne(community_board_comment_Dto commentVO);
	public int commentUpdate(community_board_comment_Dto commentVO);
	public int commentDelete(community_board_comment_Dto commentVO);

}