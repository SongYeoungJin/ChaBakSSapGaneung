package com.spring.ex.Controller;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


import com.spring.ex.Dto.MemberDto;
import com.spring.ex.Dto.placeDTO;
import com.spring.ex.Service.IMemberService;
import com.spring.ex.Service.placeService;

@Controller
public class MemberController {


	@Autowired
	IMemberService memSer;
	
	@Autowired
	placeService plSer;

	// �쉶�썝媛��엯
	@RequestMapping(value = "signUp.do", method = RequestMethod.POST)
	public String index_do(HttpServletRequest request, HttpServletResponse response, Model model, MemberDto dto)
			throws Exception {
		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		memSer.userInsert(dto);
		return "main/main";
	}
	
	@RequestMapping("login")
	public String login() {
		return "Login/login";
	}
	
	@RequestMapping("main.do")
	public String test() {
		return "main/main";
	}
	@RequestMapping("abs")
	public String test1() {
		return "place/abs";
	}
	@RequestMapping("ab")
	public String test12() {
		return "place/ab";
	}

	
	// �쉶�썝媛��엯
	@RequestMapping(value = "place", method = RequestMethod.POST)
	public String place(HttpServletRequest request, HttpServletResponse response, Model model, placeDTO dto)
			throws Exception {
		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		plSer.userInsert(dto);
		return "place/place";
	}
	
	
	@RequestMapping(value = "admin_registerPlace", method = RequestMethod.GET)
	public String admin_registerPlace(HttpServletRequest request, HttpServletResponse response, Model model)throws Exception
	{
		response.setContentType("text/html; charset=UTF-8");
	      request.setCharacterEncoding("UTF-8");
	        response.setCharacterEncoding("UTF-8");
		return "place/admin_registerPlace";
	}

	
}
