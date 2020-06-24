package com.spring.ex.Dao;


import java.util.List;


import com.spring.ex.Dto.SearchCriteria;
import com.spring.ex.Dto.placeDTO;

public interface placeDAOImpl  {
	public int userInsert (placeDTO dto);
	public List<placeDTO> list(SearchCriteria scri) throws Exception;
}
