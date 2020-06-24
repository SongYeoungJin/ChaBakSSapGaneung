package com.spring.ex.Service;


import java.util.List;


import com.spring.ex.Dto.SearchCriteria;
import com.spring.ex.Dto.placeDTO;

public interface placeServiceImpl {
	public int userInsert (placeDTO dto);
	public List<placeDTO> list(SearchCriteria scri) throws Exception;
}
