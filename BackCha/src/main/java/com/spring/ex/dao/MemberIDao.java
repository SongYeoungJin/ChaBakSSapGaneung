package com.spring.ex.dao;

import java.util.List;

import com.spring.ex.dto.MemberDto;


public interface MemberIDao {
	public int userInsert (MemberDto memdto);
	public MemberDto login(MemberDto memdto);
	public int memberUpdate(MemberDto memdto);
	public int memberDelete(MemberDto memdto);
	public List<MemberDto> memberListAll();
	public int pointUpdate(MemberDto memdto);
	public void register(MemberDto dto) throws Exception;
	public MemberDto find_id(MemberDto memdto);
	public MemberDto find_pw(MemberDto memdto);
	
}
