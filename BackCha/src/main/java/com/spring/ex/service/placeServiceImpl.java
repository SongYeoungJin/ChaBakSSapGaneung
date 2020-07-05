package com.spring.ex.service;


import java.util.List;

import com.spring.ex.dto.placeDTO;

public interface placeServiceImpl {
	public int userInsert (placeDTO dto);

	public List<placeDTO> placeAll();

}
