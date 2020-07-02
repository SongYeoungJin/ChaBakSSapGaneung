package com.spring.ex.Controller;

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

import com.spring.ex.Dto.AdminMemberDto;
import com.spring.ex.Service.IAdminService;
import com.spring.ex.Service.IMemberService;
import com.spring.ex.util.SessionSetting;

@Controller
public class adminController {
	
	@Autowired
	IAdminService adminSer;
	@Autowired
	IMemberService memSer;
	
	
	//로그인

	@RequestMapping(value = "/admin_login.ing", method = RequestMethod.POST)
	public void login_do(HttpServletRequest request, HttpServletResponse response, Model model, AdminMemberDto admindto)
			throws Exception {
		response.setContentType("text/html; charset=UTF-8"); 
		// id가 있는지 확인하고 해당 id에서 각종 정보를 검색합니다.
		AdminMemberDto alogin = adminSer.alogin(admindto); 
		// 아이디가 존재할 때
		try {
			if (alogin.getA_pw().equals(admindto.getA_pw())) {
				HttpSession session = request.getSession();
				session.setAttribute("userData", alogin); // 유저 정보 한꺼번에 넣음
				model.addAttribute("userData", alogin); // 유저 정보 한꺼번에 넣음
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
