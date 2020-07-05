package com.spring.ex.mapper;

import java.util.List;

import com.spring.ex.dto.Market_Dto;

public interface MarketMapper {
	// 게시물 리스트 조회
    public List<Market_Dto> selectMarketList(Market_Dto marketVO) throws Exception;
    
    // 게시물 등록
    public void insertMarket(Market_Dto marketVO) throws Exception;
    
    // 게시물 수정
    public void updateMarket(Market_Dto marketVO) throws Exception;
    
    // 게시물 삭제
    public void deleteMarket(Market_Dto marketVO) throws Exception;
 
    // 게시물 조회
    public Market_Dto selectMarketByCode(Market_Dto marketVO) throws Exception;
}
