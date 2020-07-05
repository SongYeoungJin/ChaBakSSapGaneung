package com.spring.ex.Service;

import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.ex.Dto.MarketDto;
import com.spring.ex.Dao.MarketDAO;

@Service("marketServiceImpl")
public class MarketServiceImpl implements MarketService{
	 	@Autowired
	    private MarketDAO marketDAOService;
	    
	    @Override
	    public List<MarketDto> selectMarketList(MarketDto marketVO) throws Exception {
	        List<MarketDto> list = null;
	        list = marketDAOService.selectMarketList(marketVO);
	        return list;
	    }
	 
	    @Override
	    public void insertMarket(MarketDto marketVO) throws Exception {
	        marketDAOService.insertMarket(marketVO);
	    }
	    
	    public static String getRandomString() {
	    	 
	        return UUID.randomUUID().toString().replaceAll("-", "");
	    }
	    @Override
	    public void updateMarket(MarketDto marketVO) throws Exception {
	        marketDAOService.updateMarket(marketVO);
	    }
	 
	    @Override
	    public void deleteMarket(MarketDto marketVO) throws Exception {
	        marketDAOService.deleteMarket(marketVO);
	    }
	 
	    @Override
	    public MarketDto selectMarketByCode(MarketDto marketVO) throws Exception {
	        
	    	MarketDto resultVO = marketDAOService.selectMarketByCode(marketVO);
	        
	        return resultVO; 
	    }
	    

	 
}
