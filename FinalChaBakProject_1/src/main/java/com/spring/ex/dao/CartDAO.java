package com.spring.ex.dao;

import java.util.List;

import com.spring.ex.dto.Cart_Dto;

public interface CartDAO {
	/*	  *//**
			 * 게시물 리스트 조회
			 * 
			 * @param cartVO
			 * @return
			 * @throws Exception
			 */
	/*
	 * List<Cart_Dto> selectCartList(Cart_Dto cartVO) throws Exception;
	 * 
	 *//**
		 * 게시물 등록
		 * 
		 * @param cartVO
		 * @throws Exception
		 */
	/*
	 * void insertCart(Cart_Dto cartVO) throws Exception;
	 * 
	 *//**
		 * 게시물 수정
		 * 
		 * @param cartVO
		 * @throws Exception
		 */
	/*
	 * void updateCart(Cart_Dto cartVO) throws Exception;
	 * 
	 *//**
		 * 게시물 삭제
		 * 
		 * @param cartVO
		 * @throws Exception
		 */
	/*
	 * void deleteCart(Cart_Dto cartVO) throws Exception;
	 * 
	 *//**
     * 게시물 조회
     * @param cartVO
     * @return
     * @throws Exception
     *//*
     *
     **/
    Cart_Dto selectCart(Cart_Dto cartVO) throws Exception;
}
