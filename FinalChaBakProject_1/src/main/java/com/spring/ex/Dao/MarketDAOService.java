package com.spring.ex.Dao;

import java.util.List;
import java.util.UUID;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.ex.Dto.CartDto;
import com.spring.ex.Dto.CartListDto;
import com.spring.ex.Dto.MarketDto;
import com.spring.ex.mapper.MarketMapper;

@Service("marketDAOService")
public class MarketDAOService implements MarketDAO{
	 
    @Autowired
    private SqlSession sqlSession;
    
    public List<MarketDto> selectMarketList(MarketDto marketVO) throws Exception {
        MarketMapper mapper = sqlSession.getMapper(MarketMapper.class);
        return mapper.selectMarketList(marketVO);
    }
 
    public void insertMarket(MarketDto marketVO) throws Exception {
        MarketMapper mapper = sqlSession.getMapper(MarketMapper.class);
        mapper.insertMarket(marketVO);
    }
 
    public void updateMarket(MarketDto marketVO) throws Exception {
    	System.out.println(marketVO);
        MarketMapper mapper = sqlSession.getMapper(MarketMapper.class);
        mapper.updateMarket(marketVO);
    }
 
    public void deleteMarket(MarketDto marketVO) throws Exception {
        MarketMapper mapper = sqlSession.getMapper(MarketMapper.class);
        mapper.deleteMarket(marketVO);
    }

	@Override
    public MarketDto selectMarketByCode(MarketDto marketVO) throws Exception {
        MarketMapper mapper = sqlSession.getMapper(MarketMapper.class);
        return mapper.selectMarketByCode(marketVO);
    }
	
    public static String getRandomString() {
   	 
        return UUID.randomUUID().toString().replaceAll("-", "");
    }

	@Override
	public void addCart(CartDto cart) throws Exception {
		MarketMapper mapper = sqlSession.getMapper(MarketMapper.class);
		mapper.insert(cart);
	}

	@Override
	public List<CartListDto> cartList(String m_id) throws Exception {
		return sqlSession.selectList(m_id);
	}
}
