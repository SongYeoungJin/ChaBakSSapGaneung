package com.spring.ex.Mapping;

import java.util.List;

import com.spring.ex.Dto.Member_Dto;

public interface MemberMapping {
	//public List<MemberMapping> getMembers();
	public Member_Dto userSelectOne(Member_Dto dto);
    public void insertMember(Member_Dto member);//萸� �꽔�뼱�빞�븯吏�?
    public void updateMember(int m_num); //萸� �꽔�뼱�빞�븯吏�?
    public void deleteMember(String name);//萸� �꽔�뼱�빞�븯吏�?
}
