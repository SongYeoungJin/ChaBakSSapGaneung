package com.spring.ex.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.ex.dto.MarketDto;
import com.spring.ex.mapper.MarketMapper;

@Repository
public class MarketDao implements MarketIDao{
	
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<MarketDto> selectMarketList(MarketDto dto) throws Exception {
		MarketMapper mapper = sqlSession.getMapper(MarketMapper.class);
	    return mapper.selectMarketList(dto);
		//return sqlSession.insert("memberMapper.register", dto);
	}

	@Override
	public void marketInsert(MarketDto dto) throws Exception {
		MarketMapper mapper = sqlSession.getMapper(MarketMapper.class);
        mapper.marketInsert(dto);
	}

	@Override
	public void marketUpdate(MarketDto dto) throws Exception {
		MarketMapper mapper = sqlSession.getMapper(MarketMapper.class);
        mapper.marketUpdate(dto);
	}

	@Override
	public void marketDelete(MarketDto dto) throws Exception {
		 MarketMapper mapper = sqlSession.getMapper(MarketMapper.class);
	     mapper.marketDelete(dto);
	}

}
