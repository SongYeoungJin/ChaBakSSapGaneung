package com.spring.ex.service;

import java.util.List;

import com.spring.ex.dto.Cart_Dto;


public interface CartService {
	  /**
     * 게시물 리스트 조회
     * @param cartVO
     * @return
     * @throws Exception
     */
    public List<Cart_Dto> selectCartList(Cart_Dto cartVO) throws Exception;
    
    /**
     * 게시물 작성
     * @param cartVO
     * @throws Exception
     */
    public void insertCart(Cart_Dto cartVO) throws Exception;
    
    /**
     * 게시물 수정
     * @param cartVO
     * @throws Exception
     */
    public void updateCart(Cart_Dto cartVO) throws Exception;
    
    /**
     * 게시물 삭제
     * @param cartVO
     * @throws Exception
     */
    public void deleteCart(Cart_Dto cartVO) throws Exception;
 
    /**
     * 게시글 조회
     * @param cartVO
     * @return
     * @throws Exception
     */
    public Cart_Dto selectCartByCode(Cart_Dto cartVO) throws Exception;
}
