package com.spring.ex.Service;

import java.util.List;

import com.spring.ex.Dto.CartDto;
import com.spring.ex.Dto.CartListDto;
import com.spring.ex.Dto.MarketDto;

public interface MarketService {
	  /**
     * 게시물 리스트 조회
     */
    public List<MarketDto> selectMarketList(MarketDto marketVO) throws Exception;
    
    /**
     * 게시물 작성
     */
    public void insertMarket(MarketDto marketVO) throws Exception;
    
    /**
     * 게시물 수정
     */
    public void updateMarket(MarketDto marketVO) throws Exception;
    
    /**
     * 게시물 삭제
     */
    public void deleteMarket(MarketDto marketVO) throws Exception;
 
    /**
     * 게시글 조회
     */
    public MarketDto selectMarketByCode(MarketDto marketVO) throws Exception;
    
    /**
     * 카트 담기
     */
    public void addCart(CartDto cart) throws Exception;
    
    /**
     * 카트 리스트
     */
    public List<CartListDto> cartList(String m_id) throws Exception;
    
}
