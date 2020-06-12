package com.spring.ex.Dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.ex.Dto.Member_Dto;
import com.spring.ex.Mapping.MemberMapping;


//[DB연결 사용법] 인터페이스 받아서 클래스 생성
@Repository
public class MemberDao implements MemberMapping{
	// 컨테이너가 객체를 자동으로 생성 Autowired
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
