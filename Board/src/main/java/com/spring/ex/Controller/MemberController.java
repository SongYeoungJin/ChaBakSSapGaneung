package com.spring.ex.Controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.spring.ex.Dto.MemberDto;
import com.spring.ex.Service.IMemberService;

@Controller
public class MemberController {

	@Autowired
	IMemberService memSer;

	// 회원가입
	
	@RequestMapping(value = "signUp.do", method = RequestMethod.POST)
	public String index_do(HttpServletRequest request, HttpServletResponse response, Model model, MemberDto dto)
			throws Exception {
		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		memSer.userInsert(dto);
		return "main/main";
	}
	/*
	@RequestMapping(value = "Join.do", method = RequestMethod.GET)
	public String join(HttpServletRequest request, HttpServletResponse response, Model model)throws Exception
	{
		response.setContentType("text/html; charset=UTF-8");
	      request.setCharacterEncoding("UTF-8");
	        response.setCharacterEncoding("UTF-8");
		return "Login/Join";
	}
	*/
	@RequestMapping("login")
	public String login() {
		return "Login/login";
	}
	
	@RequestMapping("main.do")
	public String test() {
		return "main/main";
	}
}
