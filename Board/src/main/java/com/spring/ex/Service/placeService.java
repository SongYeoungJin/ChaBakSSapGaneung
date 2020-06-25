package com.spring.ex.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.ex.Dao.placeDAO;
import com.spring.ex.Dto.placeDTO;
@Service("placeService")
public class placeService implements placeServiceImpl{
	@Autowired
	public placeDAO dao;
	
	@Override
	public int userInsert (placeDTO dto) {
		return dao.userInsert(dto);
	}
	@Override
	public List<placeDTO> list(placeDTO dto) throws Exception {
		return dao.list(dto);
	}
}
