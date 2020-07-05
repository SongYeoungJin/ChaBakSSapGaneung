package com.spring.ex.dao;

import java.util.List;


import com.spring.ex.dto.Market_Dto;

public interface MarketDAO {
    /**
     * 게시물 리스트 조회
     * @param marketVO
     * @return
     * @throws Exception
     */
    List<Market_Dto> selectMarketList(Market_Dto marketVO) throws Exception;
    
    /**
     * 게시물 등록
     * @param marketVO
     * @throws Exception
     */
    void insertMarket(Market_Dto marketVO) throws Exception;
 
    /**
     * 게시물 수정
     * @param marketVO
     * @throws Exception
     */
    void updateMarket(Market_Dto marketVO) throws Exception;
 
    /**
     * 게시물 삭제
     * @param marketVO
     * @throws Exception
     */
    void deleteMarket(Market_Dto marketVO) throws Exception;
 
    /**
     * 게시물 조회
     * @param marketVO
     * @return
     * @throws Exception
     */
    Market_Dto selectMarketByCode(Market_Dto marketVO) throws Exception;
}
