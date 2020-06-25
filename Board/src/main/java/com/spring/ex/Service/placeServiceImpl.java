package com.spring.ex.Service;


import java.util.List;


import com.spring.ex.Dto.placeDTO;

public interface placeServiceImpl {
	public int userInsert (placeDTO dto);
	public List<placeDTO> list(placeDTO dto) throws Exception;
}
