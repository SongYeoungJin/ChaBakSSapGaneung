package com.spring.ex.dao;

import java.util.List;

import com.spring.ex.dto.MarketDto;

public interface MarketIDao {
	List<MarketDto> selectMarketList(MarketDto dto) throws Exception;
	public void marketInsert (MarketDto dto) throws Exception;
	public void marketUpdate (MarketDto dto)throws Exception;
	public void marketDelete (MarketDto dto)throws Exception;
}
