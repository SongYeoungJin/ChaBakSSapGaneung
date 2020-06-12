package com.spring.ex.Dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.ex.Dto.Member_Dto;
import com.spring.ex.Mapping.MemberMapping;


//[DB���� ����] �������̽� �޾Ƽ� Ŭ���� ����
@Repository
public class MemberDao implements MemberMapping{
	// �����̳ʰ� ��ü�� �ڵ����� ���� Autowired
	@Autowired
	public SqlSessionTemplate mybatis;
	
	@Override
	public Member_Dto userSelectOne(Member_Dto dto) {
		return mybatis.selectOne("MemberMapping.userSelectOne",dto);
	}

	@Override
	public void insertMember(Member_Dto member) {
		
	}

	@Override
	public void updateMember(int m_num) {
		
	}

	@Override
	public void deleteMember(String name) {
		
	}
}
