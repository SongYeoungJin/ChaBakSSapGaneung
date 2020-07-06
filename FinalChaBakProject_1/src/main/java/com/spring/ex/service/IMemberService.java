package com.spring.ex.service;

import java.util.List;

import com.spring.ex.dto.MemberDto;



public interface IMemberService {
	public List<MemberDto> memberListAll();
	public int userInsert (MemberDto memdto);
	public MemberDto login(MemberDto memdto);
	public int memberUpdate(MemberDto memdto);
	public int memberDelete(MemberDto memdto);
	public int pointUpdate(MemberDto memdto);
	public void register(MemberDto dto) throws Exception;
	public MemberDto find_id(MemberDto memdto);
	public MemberDto find_pw(MemberDto memdto);
	public MemberDto selectMember(MemberDto memdto);
	
}
