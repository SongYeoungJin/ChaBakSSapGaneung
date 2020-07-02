package com.spring.ex.service;

import java.util.List;

import com.spring.ex.dto.MarketDto;

public interface IMarketService {
    //게시물 리스트 조회
    public List<MarketDto> selectMarketList(MarketDto dto) throws Exception;
    
    //게시물 파일정보조회
    //public List<BoardFileForm> getMarketFileInfo(MarketDto dto) throws Exception;
    
    //게시물 작성
    public void marketInsert(MarketDto dto) throws Exception;
    
    //게시물 수정
    public void marketUpdate(MarketDto dto) throws Exception;
    
    //게시물 삭제
    public void marketDelete(MarketDto dto) throws Exception;
 
    //게시글 조회
    //public MarketDto selectMarketByCode(MarketDto dto) throws Exception;
}
