package com.spring.ex.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.ex.Dao.adminIDao;
import com.spring.ex.Dto.AdminMemberDto;


@Service("IadminService")
public class AdminService implements IAdminService {
	@Autowired
	public adminIDao dao;
	
	@Override
	public AdminMemberDto alogin (AdminMemberDto admindto) {
		return dao.alogin(admindto);
	}

}
