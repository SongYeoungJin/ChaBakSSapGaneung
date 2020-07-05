package com.spring.ex.mapper;

import java.util.List;

import com.spring.ex.dto.Order_Dto;



public interface OrderMapper {

    // 게시물 리스트 조회
    public List<Order_Dto> selectOrderList(Order_Dto orderVO) throws Exception;
    
    // 게시물 등록
    public void insertOrder(Order_Dto orderVO) throws Exception;
    
    // 게시물 수정
    public void updateOrder(Order_Dto orderVO) throws Exception;
    
    // 게시물 삭제
    public void deleteOrder(Order_Dto orderVO) throws Exception;
 
    // 게시물 조회
    public Order_Dto selectOrderByCode(Order_Dto orderVO) throws Exception;
    
}
