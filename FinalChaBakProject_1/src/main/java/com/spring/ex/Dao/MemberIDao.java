package com.spring.ex.Dao;

import com.spring.ex.Dto.MemberDto;

public interface MemberIDao {
	public int userInsert (MemberDto memdto);
	public MemberDto login(MemberDto memdto);
	public int memberUpdate(MemberDto memdto);
	public int pointUpdate(MemberDto memdto);
	public void register(MemberDto dto) throws Exception;
	
}
