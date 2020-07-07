package com.spring.ex.service;

import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.ex.dto.Market_Dto;
import com.spring.ex.dao.MarketDAO;

@Service("marketServiceImpl")
public class MarketServiceImpl implements MarketService{
	 	@Autowired
	    private MarketDAO marketDAOService;
	    
	    @Override
	    public List<Market_Dto> selectMarketList(Market_Dto marketVO) throws Exception {
	        List<Market_Dto> list = null;
	        list = marketDAOService.selectMarketList(marketVO);
	        return list;
	    }
	 
	    @Override
	    public void insertMarket(Market_Dto marketVO) throws Exception {
	        marketDAOService.insertMarket(marketVO);
	    }
	    
	    public static String getRandomString() {
	    	 
	        return UUID.randomUUID().toString().replaceAll("-", "");
	    }
	    @Override
	    public void updateMarket(Market_Dto marketVO) throws Exception {
	        marketDAOService.updateMarket(marketVO);
	    }
	 
	    @Override
	    public void deleteMarket(Market_Dto marketVO) throws Exception {
	        marketDAOService.deleteMarket(marketVO);
	    }
	 
	    @Override
	    public Market_Dto selectMarketByCode(Market_Dto marketVO) throws Exception {
	        
	    	Market_Dto resultVO = marketDAOService.selectMarketByCode(marketVO);
	        
	        return resultVO; 
	    }
	    
	    
	    
	    
	    
	    @Override
	    public List<Market_Dto> listProduct() throws Exception {
	        return marketDAOService.listProduct(); //데이터베이스에 저장된 상품 리스트를 리턴한다.
	    }
	    @Override
	    public Market_Dto detailProduct(int mar_num) throws Exception {
	        return marketDAOService.detailProduct(mar_num);    //상품아이디를 매개변수로 받아서 Dao에 있는 상품의 정보를 리턴
	    }
	 
}
