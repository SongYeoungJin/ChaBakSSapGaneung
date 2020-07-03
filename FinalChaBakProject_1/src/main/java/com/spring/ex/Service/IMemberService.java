package com.spring.ex.Service;

import com.spring.ex.Dto.MemberDto;

public interface IMemberService {
	public int userInsert (MemberDto memdto);
	public MemberDto login(MemberDto memdto);
	public int memberUpdate(MemberDto memdto);
	public int pointUpdate(MemberDto memdto);
	public void register(MemberDto dto) throws Exception;
	public MemberDto find_id(MemberDto memdto);
	public MemberDto find_pw(MemberDto memdto);
}
