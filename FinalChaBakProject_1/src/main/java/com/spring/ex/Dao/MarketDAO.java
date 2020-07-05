package com.spring.ex.Dao;

import java.util.List;


import com.spring.ex.Dto.MarketDto;

public interface MarketDAO {
    /**
     * 게시물 리스트 조회
     * @param marketVO
     * @return
     * @throws Exception
     */
    List<MarketDto> selectMarketList(MarketDto marketVO) throws Exception;
    
    /**
     * 게시물 등록
     * @param marketVO
     * @throws Exception
     */
    void insertMarket(MarketDto marketVO) throws Exception;
 
    /**
     * 게시물 수정
     * @param marketVO
     * @throws Exception
     */
    void updateMarket(MarketDto marketVO) throws Exception;
 
    /**
     * 게시물 삭제
     * @param marketVO
     * @throws Exception
     */
    void deleteMarket(MarketDto marketVO) throws Exception;
 
    /**
     * 게시물 조회
     * @param marketVO
     * @return
     * @throws Exception
     */
    MarketDto selectMarketByCode(MarketDto marketVO) throws Exception;
}
