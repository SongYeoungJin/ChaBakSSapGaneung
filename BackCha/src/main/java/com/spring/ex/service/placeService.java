package com.spring.ex.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.ex.dao.placeDAO;
import com.spring.ex.dto.placeDTO;


@Service("placeService")
public class placeService implements placeServiceImpl{
	@Autowired
	public placeDAO dao;
	
	@Override
	public int userInsert (placeDTO dto) {
		return dao.userInsert(dto);
	}
	@Override
	public List<placeDTO> placeAll() {
		return dao.placeAll();
	}
	
}
