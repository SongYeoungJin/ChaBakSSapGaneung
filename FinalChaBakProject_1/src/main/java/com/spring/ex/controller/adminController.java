package com.spring.ex.controller;

import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.ex.dto.MemberDto;
import com.spring.ex.dto.adminDto;
import com.spring.ex.service.IMemberService;
import com.spring.ex.service.IadminService;
import com.spring.ex.util.SessionSetting;

@Controller
public class adminController {
	
	@Autowired
	IadminService adminSer;
	@Autowired
	IMemberService memSer;
	
	
	//로그인

	@RequestMapping(value = "/admin_login.ing", method = RequestMethod.POST)
	public void login_do(HttpServletRequest request, HttpServletResponse response, Model model, adminDto admindto)
			throws Exception {
		response.setContentType("text/html; charset=UTF-8"); 
		adminDto alogin = adminSer.alogin(admindto); 
		
		try {
			
			if (alogin.getA_pw().equals(admindto.getA_pw())) {
				
				
				HttpSession session = request.getSession();
				session.setAttribute("userData", alogin); 
				model.addAttribute("userData", alogin); 
				session.setAttribute("login_result1", alogin);
				
				PrintWriter out = response.getWriter();
				out.println("<script>alert('" + admindto.getA_id() + "님 로그인 성공');</script>");
				 System.out.println(alogin.getA_name());
				out.flush();
				
				
				
			} 
			
			else 
			
			{
				System.out.println("DBPW:" + alogin.getA_pw() + "\n" + "inputPW:" + admindto.getA_pw());
				PrintWriter out = response.getWriter();
				out.println("<script>alert('패스워드가 틀렸습니다.');</script>");
				out.println("<script>location.href='admin_login'</script>");
				out.flush();
			}
		} catch (Exception e) {
			PrintWriter out = response.getWriter();
			out.println("<script>alert('" + admindto.getA_id() + "는 존재하지 않는 아이디입니다.');</script>");
			out.println("<script>location.href='admin_login'</script>");
			out.flush();
		} finally {
			PrintWriter out = response.getWriter();
			out.println("<script>location.href='adminMain.do'</script>");
			out.flush();
		}
	}
	 
	
	
	
	
	// 로그아웃

	@RequestMapping("/admin_logout.ing")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/adminMain.do";
	}

	
	
}
