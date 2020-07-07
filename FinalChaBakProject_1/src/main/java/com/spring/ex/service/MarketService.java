package com.spring.ex.service;

import java.util.List;

import com.spring.ex.dto.Market_Dto;

public interface MarketService {
	  /**
     * 게시물 리스트 조회
     * @param marketVO
     * @return
     * @throws Exception
     */
    public List<Market_Dto> selectMarketList(Market_Dto marketVO) throws Exception;
    
    /**
     * 게시물 작성
     * @param marketVO
     * @throws Exception
     */
    public void insertMarket(Market_Dto marketVO) throws Exception;
    
    /**
     * 게시물 수정
     * @param marketVO
     * @throws Exception
     */
    public void updateMarket(Market_Dto marketVO) throws Exception;
    
    /**
     * 게시물 삭제
     * @param marketVO
     * @throws Exception
     */
    public void deleteMarket(Market_Dto marketVO) throws Exception;
 
    /**
     * 게시글 조회
     * @param marketVO
     * @return
     * @throws Exception
     */
    public Market_Dto selectMarketByCode(Market_Dto marketVO) throws Exception;
    
    
    public List<Market_Dto> listProduct() throws Exception;

    public Market_Dto detailProduct(int mar_num) throws Exception;

}
