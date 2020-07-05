package com.spring.ex.Service;

import java.util.List;

import com.spring.ex.Dto.MarketDto;

public interface MarketService {
	  /**
     * 게시물 리스트 조회
     * @param marketVO
     * @return
     * @throws Exception
     */
    public List<MarketDto> selectMarketList(MarketDto marketVO) throws Exception;
    
    /**
     * 게시물 작성
     * @param marketVO
     * @throws Exception
     */
    public void insertMarket(MarketDto marketVO) throws Exception;
    
    /**
     * 게시물 수정
     * @param marketVO
     * @throws Exception
     */
    public void updateMarket(MarketDto marketVO) throws Exception;
    
    /**
     * 게시물 삭제
     * @param marketVO
     * @throws Exception
     */
    public void deleteMarket(MarketDto marketVO) throws Exception;
 
    /**
     * 게시글 조회
     * @param marketVO
     * @return
     * @throws Exception
     */
    public MarketDto selectMarketByCode(MarketDto marketVO) throws Exception;
}
