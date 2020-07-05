package com.spring.ex.Controller;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.ex.Dto.MemberDto;


@Controller
public class RController {

	/*
	 * @Autowired IMemberService memService;
	 * 
	 * //회원가입
	 * 
	 * @RequestMapping("/join") public String join(HttpServletRequest request, Model
	 * model) {
	 * 
	 * System.out.println("join()");
	 * 
	 * return "join";
	 */
	
	//회원가입페이지
	@RequestMapping(value = "Join.do", method = RequestMethod.GET)
	public String join(HttpServletRequest request, HttpServletResponse response, Model model)throws Exception
	{
		response.setContentType("text/html; charset=UTF-8");
	    request.setCharacterEncoding("UTF-8");
	    response.setCharacterEncoding("UTF-8");
		return "Login/Join";
	}
	
	@RequestMapping(value = "adminMain.do", method = RequestMethod.GET)
	public String adminMain(HttpServletRequest request, HttpServletResponse response, Model model)throws Exception
	{
		response.setContentType("text/html; charset=UTF-8");
	    request.setCharacterEncoding("UTF-8");
	    response.setCharacterEncoding("UTF-8");
		return "main/adminMain";
	}
	
	@RequestMapping(value = "login.do", method = RequestMethod.GET)
	public String login(HttpServletRequest request, HttpServletResponse response, Model model)throws Exception
	{
		response.setContentType("text/html; charset=UTF-8");
	    request.setCharacterEncoding("UTF-8");
	    response.setCharacterEncoding("UTF-8");
		return "Login/login";
	}
	
	
	@RequestMapping(value = "main.do", method = RequestMethod.GET)
	public String main(HttpServletRequest request, HttpServletResponse response, Model model)throws Exception
	{
		response.setContentType("text/html; charset=UTF-8");
	    request.setCharacterEncoding("UTF-8");
	    response.setCharacterEncoding("UTF-8");
		return "main/main";
	}
	
	@RequestMapping(value = "myInfo.do", method = RequestMethod.GET)
	public String myInfo(HttpServletRequest request, HttpServletResponse response, Model model, MemberDto dto)throws Exception
	{
		response.setContentType("text/html; charset=UTF-8");
	    request.setCharacterEncoding("UTF-8");
	    response.setCharacterEncoding("UTF-8");
	        
	    System.out.println();
		return "Info/myInfo";
	}
	
	@RequestMapping(value = "myInfoModify", method = RequestMethod.GET)
	public String myInfoModify(HttpServletRequest request, HttpServletResponse response, Model model)throws Exception
	{
		response.setContentType("text/html; charset=UTF-8");
	    request.setCharacterEncoding("UTF-8");
	    response.setCharacterEncoding("UTF-8");
		return "Info/myInfoModify";
	}
	
	@RequestMapping(value = "myPage", method = RequestMethod.GET)
	public String myPage(HttpServletRequest request, HttpServletResponse response, Model model)throws Exception
	{
		response.setContentType("text/html; charset=UTF-8");
	    request.setCharacterEncoding("UTF-8");
	    response.setCharacterEncoding("UTF-8");
		return "MyPage/myPage";
	}
	
	@RequestMapping(value = "buypoint", method = RequestMethod.GET)
	public String buypoint(HttpServletRequest request, HttpServletResponse response, Model model)throws Exception
	{
		response.setContentType("text/html; charset=UTF-8");
	    request.setCharacterEncoding("UTF-8");
	    response.setCharacterEncoding("UTF-8");
		return "Info/buypoint";
	}
	
	@RequestMapping(value = "ReviewList", method = RequestMethod.GET)
	public String ReviewList(HttpServletRequest request, HttpServletResponse response, Model model)throws Exception
	{
		response.setContentType("text/html; charset=UTF-8");
	    request.setCharacterEncoding("UTF-8");
	    response.setCharacterEncoding("UTF-8");
		return "Review/ReviewList";
	}
	
	@RequestMapping(value = "admin_registerPlace", method = RequestMethod.GET)
	public String admin_registerPlace(HttpServletRequest request, HttpServletResponse response, Model model)throws Exception
	{
		response.setContentType("text/html; charset=UTF-8");
	      request.setCharacterEncoding("UTF-8");
	        response.setCharacterEncoding("UTF-8");
		return "admin/admin_registerPlace";
	}
	
	@RequestMapping(value = "myAccount.do", method = RequestMethod.GET)
	public String myAccount(HttpServletRequest request, HttpServletResponse response, Model model)throws Exception
	{
		response.setContentType("text/html; charset=UTF-8");
	      request.setCharacterEncoding("UTF-8");
	        response.setCharacterEncoding("UTF-8");
		return "account/MyAccount";
	}
	
	@RequestMapping(value = "account.do", method = RequestMethod.GET)
	public String account(HttpServletRequest request, HttpServletResponse response, Model model)throws Exception
	{
		response.setContentType("text/html; charset=UTF-8");
	      request.setCharacterEncoding("UTF-8");
	        response.setCharacterEncoding("UTF-8");
		return "account/account";
	}
}
