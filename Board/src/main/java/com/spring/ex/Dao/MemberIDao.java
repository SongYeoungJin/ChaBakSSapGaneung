package com.spring.ex.Dao;

import java.util.List;

import com.spring.ex.Dto.MemberDto;
import com.spring.ex.Dto.SearchCriteria;
import com.spring.ex.Dto.placeDTO;

public interface MemberIDao {
	public int userInsert (MemberDto dto);
	
	public List<placeDTO> list(SearchCriteria scri) throws Exception;
}
