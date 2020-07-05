package com.spring.ex.service;

import java.util.List;

import com.spring.ex.dto.Order_Dto;



public interface OrderService {
	  /**
     * 게시물 리스트 조회
     * @param orderVO
     * @return
     * @throws Exception
     */
    public List<Order_Dto> selectOrderList(Order_Dto orderVO) throws Exception;
    
    /**
     * 게시물 작성
     * @param orderVO
     * @throws Exception
     */
    public void insertOrder(Order_Dto orderVO) throws Exception;
    
    /**
     * 게시물 수정
     * @param orderVO
     * @throws Exception
     */
    public void updateOrder(Order_Dto orderVO) throws Exception;
    
    /**
     * 게시물 삭제
     * @param orderVO
     * @throws Exception
     */
    public void deleteOrder(Order_Dto orderVO) throws Exception;
 
    /**
     * 게시글 조회
     * @param orderVO
     * @return
     * @throws Exception
     */
    public Order_Dto selectOrderByCode(Order_Dto orderVO) throws Exception;
}
