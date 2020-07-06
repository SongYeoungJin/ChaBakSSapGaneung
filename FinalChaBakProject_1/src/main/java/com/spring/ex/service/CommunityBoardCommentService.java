package com.spring.ex.service;

import java.util.List;

import com.spring.ex.dto.community_board_comment_Dto;

public interface CommunityBoardCommentService {
	
	  /**
     * 댓글 리스트 조회
     * @param commentVO
     * @return
     * @throws Exception
     */

	 List<community_board_comment_Dto> selectCommentList(community_board_comment_Dto commnetVO) throws Exception;
	 
	 /**
	     * 댓글 등록
	     * @param commentVO
	     * @return
	     * @throws Exception
	     */
	 
	 void insertCommnet(community_board_comment_Dto commentVO) throws Exception;
	 
	 /**
	     *  댓글 수정
	     * @param commentVO
	     * @return
	     * @throws Exception
	     */
	 
	 void updateComment(community_board_comment_Dto commentVO) throws Exception;
	 
	 
	 
	 /**
	     *  댓글 삭제
	     * @param commentVO
	     * @return
	     * @throws Exception
	     */
	 void deleteComment(community_board_comment_Dto commentVO) throws Exception;
	 
	 
	 /**
	     *  댓글 조회
	     * @param commentVO
	     * @return
	     * @throws Exception
	     */
	 community_board_comment_Dto selectCommentByCode(community_board_comment_Dto commentVO) throws Exception;


	 

}
