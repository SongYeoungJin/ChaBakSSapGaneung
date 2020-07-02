package com.spring.ex.mapper;

import java.util.List;

import com.spring.ex.dto.MarketDto;

public interface MarketMapper {
	// 게시물 리스트 조회
    public List<MarketDto> selectMarketList(MarketDto dto) throws Exception;
    
    // 게시물 등록
    public void marketInsert(MarketDto dto) throws Exception;
    
    // 게시물 수정
    public void marketUpdate(MarketDto dto) throws Exception;
    
    // 게시물 삭제
    public void marketDelete(MarketDto dto) throws Exception;
 
    // 게시물 조회
    public MarketDto selectMarketByCode(MarketDto dto) throws Exception;
}
