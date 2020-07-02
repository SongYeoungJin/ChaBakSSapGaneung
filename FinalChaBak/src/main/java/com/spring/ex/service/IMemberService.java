package com.spring.ex.service;

import com.spring.ex.dto.MemberDto;


public interface IMemberService {
	public int userInsert (MemberDto memdto);
	public MemberDto login(MemberDto memdto);
	public int memberUpdate(MemberDto memdto);
	public int pointUpdate(MemberDto memdto);
	public void register(MemberDto dto) throws Exception;
}
