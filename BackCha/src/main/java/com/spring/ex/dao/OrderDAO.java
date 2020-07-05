package com.spring.ex.dao;

import java.util.List;

import com.spring.ex.dto.Order_Dto;


public interface OrderDAO {
	/**
     * 게시물 리스트 조회
     * @param orderVO
     * @return
     * @throws Exception
     */
    List<Order_Dto> selectOrderList(Order_Dto orderVO) throws Exception;
    
    /**
     * 게시물 등록
     * @param orderVO
     * @throws Exception
     */
    void insertOrder(Order_Dto orderVO) throws Exception;
 
    /**
     * 게시물 수정
     * @param orderVO
     * @throws Exception
     */
    void updateOrder(Order_Dto orderVO) throws Exception;
 
    /**
     * 게시물 삭제
     * @param orderVO
     * @throws Exception
     */
    void deleteOrder(Order_Dto orderVO) throws Exception;
 
    /**
     * 게시물 조회
     * @param orderVO
     * @return
     * @throws Exception
     */
    Order_Dto selectOrderByCode(Order_Dto orderVO) throws Exception;
}
