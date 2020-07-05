package com.spring.ex.service;

import java.util.List;

import com.spring.ex.dto.MemberDto;



public interface IMemberService {
	public List<MemberDto> memberListAll();
	public int userInsert (MemberDto memdto);
	public MemberDto login(MemberDto memdto);
	public int memberUpdate(MemberDto memdto);
	public int memberDelete(MemberDto memdto);
	
}
