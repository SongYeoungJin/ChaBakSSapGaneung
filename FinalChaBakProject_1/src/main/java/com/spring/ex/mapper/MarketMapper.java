package com.spring.ex.mapper;

import java.util.List;

import com.spring.ex.Dto.CartDto;
import com.spring.ex.Dto.MarketDto;

public interface MarketMapper {
	// 게시물 리스트 조회
    public List<MarketDto> selectMarketList(MarketDto marketVO) throws Exception;
    
    // 게시물 등록
    public void insertMarket(MarketDto marketVO) throws Exception;
    
    // 게시물 수정
    public void updateMarket(MarketDto marketVO) throws Exception;
    
    // 게시물 삭제
    public void deleteMarket(MarketDto marketVO) throws Exception;
 
    // 게시물 조회
    public MarketDto selectMarketByCode(MarketDto marketVO) throws Exception;
    
    // 카트담기
    public void insert(CartDto cart) throws Exception;
    

}
