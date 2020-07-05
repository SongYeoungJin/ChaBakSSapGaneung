package com.spring.ex.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.ex.dao.adminIDao;
import com.spring.ex.dto.adminDto;

@Service("IadminService")
public class adminService implements IadminService {
	@Autowired
	public adminIDao dao;
	
	@Override
	public adminDto alogin (adminDto admindto) {
		return dao.alogin(admindto);
	}

}
