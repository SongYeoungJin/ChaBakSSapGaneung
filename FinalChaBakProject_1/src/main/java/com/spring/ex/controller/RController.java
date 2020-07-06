package com.spring.ex.controller;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.ex.dto.MemberDto;
import com.spring.ex.service.IMemberService;

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
		return "admin/adminMain";
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
	
	@RequestMapping(value = "myInfo", method = RequestMethod.GET)
	public String myInfo(HttpServletRequest request, HttpServletResponse response, Model model)throws Exception
	{
		response.setContentType("text/html; charset=UTF-8");
	      request.setCharacterEncoding("UTF-8");
	        response.setCharacterEncoding("UTF-8");
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
		return "Point/buypoint";
	}
	
	@RequestMapping(value = "ReviewList", method = RequestMethod.GET)
	public String ReviewList(HttpServletRequest request, HttpServletResponse response, Model model)throws Exception
	{
		response.setContentType("text/html; charset=UTF-8");
	      request.setCharacterEncoding("UTF-8");
	        response.setCharacterEncoding("UTF-8");
		return "Review/ReviewList";
	}
	
	
	
	@RequestMapping(value = "ReviewList2", method = RequestMethod.GET)
	public String ReviewList2(HttpServletRequest request, HttpServletResponse response, Model model)throws Exception
	{
		response.setContentType("text/html; charset=UTF-8");
	      request.setCharacterEncoding("UTF-8");
	        response.setCharacterEncoding("UTF-8");
		return "Review/ReviewList2";
	}
	
	
	
	
	@RequestMapping(value = "productList1", method = RequestMethod.GET)
	public String productList1(HttpServletRequest request, HttpServletResponse response, Model model)throws Exception
	{
		response.setContentType("text/html; charset=UTF-8");
	      request.setCharacterEncoding("UTF-8");
	        response.setCharacterEncoding("UTF-8");
		return "Product/productList1";
	}
	

	

	
	
	@RequestMapping(value = "admin_member_detail", method = RequestMethod.GET)
	public String admin_member_detail(HttpServletRequest request, HttpServletResponse response, Model model)throws Exception
	{
		response.setContentType("text/html; charset=UTF-8");
	      request.setCharacterEncoding("UTF-8");
	        response.setCharacterEncoding("UTF-8");
		return "admin/admin_member_detail";
	}

	@RequestMapping(value = "admin_order_chk", method = RequestMethod.GET)
	public String admin_order_chk(HttpServletRequest request, HttpServletResponse response, Model model)throws Exception
	{
		response.setContentType("text/html; charset=UTF-8");
	      request.setCharacterEncoding("UTF-8");
	        response.setCharacterEncoding("UTF-8");
		return "admin/admin_order_chk";
	}


	@RequestMapping(value = "admin_order", method = RequestMethod.GET)
	public String admin_order(HttpServletRequest request, HttpServletResponse response, Model model)throws Exception
	{
		response.setContentType("text/html; charset=UTF-8");
	      request.setCharacterEncoding("UTF-8");
	        response.setCharacterEncoding("UTF-8");
		return "admin/admin_order";
	}

	

	@RequestMapping(value = "admin_login", method = RequestMethod.GET)
	public String admin_login(HttpServletRequest request, HttpServletResponse response, Model model)throws Exception
	{
		response.setContentType("text/html; charset=UTF-8");
	      request.setCharacterEncoding("UTF-8");
	        response.setCharacterEncoding("UTF-8");
		return "admin/admin_login";
	}

	
	
	

	

	@RequestMapping(value = "admin_product", method = RequestMethod.GET)
	public String admin_product(HttpServletRequest request, HttpServletResponse response, Model model)throws Exception
	{
		response.setContentType("text/html; charset=UTF-8");
	      request.setCharacterEncoding("UTF-8");
	        response.setCharacterEncoding("UTF-8");
		return "admin/admin_product";
	}
	
	

	@RequestMapping(value = "admin_registerPlace", method = RequestMethod.GET)
	public String admin_registerPlace(HttpServletRequest request, HttpServletResponse response, Model model)throws Exception
	{
		response.setContentType("text/html; charset=UTF-8");
	      request.setCharacterEncoding("UTF-8");
	        response.setCharacterEncoding("UTF-8");
		return "admin/admin_registerPlace";
	}
	

	@RequestMapping(value = "member_delete", method = RequestMethod.GET)
	public String member_delete(HttpServletRequest request, HttpServletResponse response, Model model)throws Exception
	{
		response.setContentType("text/html; charset=UTF-8");
	      request.setCharacterEncoding("UTF-8");
	        response.setCharacterEncoding("UTF-8");
		return "Info/member_delete";
	}
	
	@RequestMapping(value = "ChaBak", method = RequestMethod.GET)
	public String ChaBak(HttpServletRequest request, HttpServletResponse response, Model model)throws Exception
	{
		response.setContentType("text/html; charset=UTF-8");
	      request.setCharacterEncoding("UTF-8");
	        response.setCharacterEncoding("UTF-8");
		return "chabakplace/ChaBak";
	}
	
	
	@RequestMapping(value = "productMain", method = RequestMethod.GET)
	public String productMain(HttpServletRequest request, HttpServletResponse response, Model model)throws Exception
	{
		response.setContentType("text/html; charset=UTF-8");
	      request.setCharacterEncoding("UTF-8");
	        response.setCharacterEncoding("UTF-8");
		return "Product/productMain";
	}
	

	@RequestMapping(value = "list", method = RequestMethod.GET)
	public String list(HttpServletRequest request, HttpServletResponse response, Model model)throws Exception
	{
		response.setContentType("text/html; charset=UTF-8");
	      request.setCharacterEncoding("UTF-8");
	        response.setCharacterEncoding("UTF-8");
		return "board/list";
	}
	
	
	@RequestMapping(value = "boardList", method = RequestMethod.GET)
	public String boardList(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		return "Board/boardList";
	}
	
	@RequestMapping(value = "writeForm.do", method = RequestMethod.GET)
	public String writeForm(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		return "Board/writeForm";
	}
	
	 
	@RequestMapping(value = "viewForm", method = RequestMethod.GET)
	public String viewForm(HttpServletRequest request, HttpServletResponse response, Model model)throws Exception
	{
		response.setContentType("text/html; charset=UTF-8");
	      request.setCharacterEncoding("UTF-8");
	        response.setCharacterEncoding("UTF-8");
		return "Board/viewForm";
	}
	
	@RequestMapping(value = "contentView", method = RequestMethod.GET)
	public String contentView(HttpServletRequest request, HttpServletResponse response, Model model)throws Exception
	{
		response.setContentType("text/html; charset=UTF-8");
	      request.setCharacterEncoding("UTF-8");
	        response.setCharacterEncoding("UTF-8");
		return "Board/contentView";
	}
	
	
	
	@RequestMapping(value = "boardWrite", method = RequestMethod.GET)
	public String boardWrite(HttpServletRequest request, HttpServletResponse response, Model model)throws Exception
	{
		response.setContentType("text/html; charset=UTF-8");
	      request.setCharacterEncoding("UTF-8");
	        response.setCharacterEncoding("UTF-8");
		return "Board/boardWrite";
	}
	

	@RequestMapping(value = "replyView", method = RequestMethod.GET)
	public String replyView(HttpServletRequest request, HttpServletResponse response, Model model)throws Exception
	{
		response.setContentType("text/html; charset=UTF-8");
	      request.setCharacterEncoding("UTF-8");
	        response.setCharacterEncoding("UTF-8");
		return "Board/replyView";
	}
	

	@RequestMapping(value = "productList2", method = RequestMethod.GET)
	public String productList2(HttpServletRequest request, HttpServletResponse response, Model model)throws Exception
	{
		response.setContentType("text/html; charset=UTF-8");
	      request.setCharacterEncoding("UTF-8");
	        response.setCharacterEncoding("UTF-8");
		return "Product/productList2";
	}
	
	@RequestMapping(value = "myCart", method = RequestMethod.GET)
	public String myCart(HttpServletRequest request, HttpServletResponse response, Model model)throws Exception
	{
		response.setContentType("text/html; charset=UTF-8");
	      request.setCharacterEncoding("UTF-8");
	        response.setCharacterEncoding("UTF-8");
		return "cart/myCart";
	}

	@RequestMapping(value = "productExample", method = RequestMethod.GET)
	public String productExample(HttpServletRequest request, HttpServletResponse response, Model model)throws Exception
	{
		response.setContentType("text/html; charset=UTF-8");
	      request.setCharacterEncoding("UTF-8");
	        response.setCharacterEncoding("UTF-8");
		return "Product/productExample";
	}
}
