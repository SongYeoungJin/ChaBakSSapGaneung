package com.spring.ex.Service;

import java.util.List;

import com.spring.ex.Dto.MemberDto;

public interface IMemberService {
	public int userInsert (MemberDto memdto);
	public MemberDto login(MemberDto memdto);
	public int memberUpdate(MemberDto memdto);
	public int pointUpdate(MemberDto memdto);
	public int memberDelete(MemberDto memdto);
	public void register(MemberDto dto) throws Exception;
	public MemberDto find_id(MemberDto memdto);
	public MemberDto find_pw(MemberDto memdto);
	public  MemberDto selectMember(MemberDto memdto);
	public  List<MemberDto> memberListAll();
}
