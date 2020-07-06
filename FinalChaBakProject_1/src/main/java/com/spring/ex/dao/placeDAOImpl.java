package com.spring.ex.dao;


import java.util.List;

import com.spring.ex.dto.placeDTO;

public interface placeDAOImpl  {
	public int userInsert (placeDTO dto);
	public List<placeDTO> placeAll();
	

}
