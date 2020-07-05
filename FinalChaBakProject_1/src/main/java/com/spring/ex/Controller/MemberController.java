package com.spring.ex.Controller;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.ex.Dto.MemberDto;
import com.spring.ex.Service.IMemberService;

@Controller
public class MemberController {
	@Autowired
	IMemberService memSer;

	// 회원가입
	@RequestMapping(value = "signUp", method = RequestMethod.POST)
	public void signUp_ing(HttpServletRequest request, HttpServletResponse response, Model model, MemberDto memdto)
			throws Exception {
		response.setContentType("text/html; charset=UTF-8");
		try {
			memSer.userInsert(memdto);// 회원가입
			PrintWriter out = response.getWriter();
			out.println("<script>alert('" + memdto.getM_name() + "님 회원가입 완료를 축하드립니다.');</script>");
			out.flush();
		} catch (Exception e) {
			PrintWriter out = response.getWriter();
			out.println("<script>alert('회원가입 실패');</script>");
			out.flush();
		}
		PrintWriter out = response.getWriter();
		out.println("<script>location.href='login.do'</script>");
		out.flush();
	}
	/*
	 * request.setCharacterEncoding("UTF-8");
	 * response.setCharacterEncoding("UTF-8"); memSer.userInsert(dto); return
	 * "main/main";
	 */

	// 로그인
	@RequestMapping("/member_login.ing")
	public String login_ing(HttpServletRequest request, Model model, HttpServletResponse response, MemberDto memdto) {
		response.setContentType("text/html; charset=UTF-8");
		System.out.println("member_login.ing()");
		System.out.println("dto의id:" + memdto.getM_id());
		System.out.println("dto의pw:" + memdto.getM_pw());
		MemberDto mLogin = memSer.login(memdto);
		System.out.println(mLogin);
		if (mLogin != null) {
			HttpSession session = request.getSession();
			session.setAttribute("login_result", mLogin);
			System.out.println(mLogin.getM_name());
		}
		return "main/main";
	}

	// 회원정보 수정
	@RequestMapping("/member_modify.do")
	public String modify(HttpServletRequest request, HttpServletResponse response, Model model, MemberDto memdto) {
		System.out.println("member_modify()페이지");
		return "myInfo";
	}

	// 회원 수정
	@RequestMapping("/member_modify.ing")
	public String modify_ing(HttpServletRequest request, HttpServletResponse response, Model model, MemberDto memdto) {
		System.out.println("member_modify()진행");
		int result = memSer.memberUpdate(memdto);
		model.addAttribute("modify_request", result);
		if (result == 1) {
			System.out.println("회원수정 성공");
		} else {
			System.out.println("실패");
		}
		return "Info/myInfo";
	}

	// 로그아웃
	@RequestMapping("/member_logout.ing")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/main.do";
	}

	// 아이디 찾기 폼
	@RequestMapping(value = "/find_ID", method = RequestMethod.GET)
	public String find_Id() {

		return "Login/find_ID";
	}

	// 아이디 찾기
	@RequestMapping("/id")
	public String find_ID(HttpServletRequest request, Model model, HttpServletResponse response, MemberDto memdto) {

		response.setContentType("text/html; charset=UTF-8");

		System.out.println("member_find_id.ing()");
		System.out.println("dto의email:" + memdto.getM_email());

		MemberDto ID = memSer.find_id(memdto);

		System.out.println(ID);

		if (ID != null) {
			HttpSession session = request.getSession();

			session.setAttribute("login_result", ID);

			System.out.println(ID.getM_id());
			System.out.println(ID.getM_pw());
		}

		return "Login/id";
	}

	// 비밀번호 찾기 폼
	@RequestMapping(value = "/find_PW", method = RequestMethod.GET)
	public String find_PW() {

		return "Login/find_PW";
	}

	// 비밀번호 찾기
	@RequestMapping("/pw")
	public String find_PW(HttpServletRequest request, Model model, HttpServletResponse response, MemberDto memdto) {

		response.setContentType("text/html; charset=UTF-8");

		System.out.println("member_find_pw");
		System.out.println("dto의id:" + memdto.getM_id());

		MemberDto PW = memSer.find_pw(memdto);

		System.out.println(PW);

		if (PW != null) {
			HttpSession session = request.getSession();

			session.setAttribute("login_result", PW);

			System.out.println(PW.getM_id());
			System.out.println(PW.getM_pw());
		}

		return "Login/pw";
	}

	// 포인트 충전
	@RequestMapping("/buypoint.do")
	public String buypoint(HttpServletRequest request, HttpServletResponse response, Model model, MemberDto memdto) {
		System.out.println("point()진행");
		System.out.println("현재point : " + memdto.getM_point());

		return "Info/myInfo";
	}

}