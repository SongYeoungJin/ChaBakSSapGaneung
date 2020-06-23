package com.spring.ex.Controller;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.ex.Dto.MemberDto;
import com.spring.ex.Service.IMemberService;

@Controller
public class RController {

	/*
	 * @Autowired IMemberService memService;
	 * 
	 * //�쉶�썝媛��엯
	 * 
	 * @RequestMapping("/join") public String join(HttpServletRequest request, Model
	 * model) {
	 * 
	 * System.out.println("join()");
	 * 
	 * return "join";
	 */
	
	//�쉶�썝媛��엯�럹�씠吏�
	@RequestMapping(value = "Join.do", method = RequestMethod.GET)
	public String join(HttpServletRequest request, HttpServletResponse response, Model model)throws Exception
	{
		response.setContentType("text/html; charset=UTF-8");
	      request.setCharacterEncoding("UTF-8");
	        response.setCharacterEncoding("UTF-8");
		return "join";
	}
	

}
