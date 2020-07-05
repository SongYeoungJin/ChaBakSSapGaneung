package com.spring.ex.Dao;

import java.util.List;

import com.spring.ex.Dto.CartDto;
import com.spring.ex.Dto.CartListDto;
import com.spring.ex.Dto.MarketDto;

public interface MarketDAO {
    /**
     * 게시물 리스트 조회
     */
    List<MarketDto> selectMarketList(MarketDto marketVO) throws Exception;
    
    /**
     * 게시물 등록
     */
    void insertMarket(MarketDto marketVO) throws Exception;
 
    /**
     * 게시물 수정
     */
    void updateMarket(MarketDto marketVO) throws Exception;
 
    /**
     * 게시물 삭제
     */
    void deleteMarket(MarketDto marketVO) throws Exception;
 
    /**
     * 게시물 조회
     */
    MarketDto selectMarketByCode(MarketDto marketVO) throws Exception;
    
    /**
     * 카트 담기
     */
    public void addCart(CartDto cart) throws Exception;
    
    /**
     * 카트 리스트
     */
    
    public List<CartListDto> cartList(String m_id) throws Exception;
}
