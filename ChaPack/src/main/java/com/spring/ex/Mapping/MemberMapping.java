package com.spring.ex.Mapping;

import java.util.List;

import com.spring.ex.Dto.Member_Dto;

public interface MemberMapping {
	List<MemberMapping> getMembers();
    void insertMember(Member_Dto member);//뭐 넣어야하징?
    void updateMember(int m_num); //뭐 넣어야하징?
    void deleteMember(String name);//뭐 넣어야하징?
}
