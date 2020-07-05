package com.spring.ex.dao;

import java.util.List;
import java.util.UUID;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.ex.dto.Market_Dto;
import com.spring.ex.mapper.MarketMapper;

@Service("marketDAOService")
public class MarketDAOService implements MarketDAO{
	 
    @Autowired
    private SqlSession sqlSession;
    
    public List<Market_Dto> selectMarketList(Market_Dto marketVO) throws Exception {
        MarketMapper mapper = sqlSession.getMapper(MarketMapper.class);
        return mapper.selectMarketList(marketVO);
    }
 
    public void insertMarket(Market_Dto marketVO) throws Exception {
        MarketMapper mapper = sqlSession.getMapper(MarketMapper.class);
        mapper.insertMarket(marketVO);
    }
 
    public void updateMarket(Market_Dto marketVO) throws Exception {
    	System.out.println(marketVO);
        MarketMapper mapper = sqlSession.getMapper(MarketMapper.class);
        mapper.updateMarket(marketVO);
    }
 
    public void deleteMarket(Market_Dto marketVO) throws Exception {
        MarketMapper mapper = sqlSession.getMapper(MarketMapper.class);
        mapper.deleteMarket(marketVO);
    }

	@Override
    public Market_Dto selectMarketByCode(Market_Dto marketVO) throws Exception {
        MarketMapper mapper = sqlSession.getMapper(MarketMapper.class);
        return mapper.selectMarketByCode(marketVO);
    }
	
    public static String getRandomString() {
   	 
        return UUID.randomUUID().toString().replaceAll("-", "");
    }
}
