package com.spring.ex.controller;

import java.io.IOException;
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
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.spring.ex.util.SHA256;
import com.spring.ex.dto.MemberDto;

import com.spring.ex.dto.adminDto;
import com.spring.ex.service.IMemberService;

@Controller
public class MemberController {

	@Autowired
	IMemberService memSer;


	// 회원가입

	@RequestMapping(value = "/signUp.ing", method = RequestMethod.POST)
	public void siginup_ing(HttpServletRequest request, HttpServletResponse response, Model model, MemberDto memdto)
			throws Exception {
		response.setContentType("text/html; charset=UTF-8");
		try {
			memSer.userInsert(memdto);// 회원가입
			memdto.getM_name();
			PrintWriter out = response.getWriter();
			out.println("<script>alert('" + memdto.getM_name() + "님 회원가입 완료를 축하드립니다.');</script>");
			out.flush();
		} catch (IOException e) {
			PrintWriter out = response.getWriter();
			out.println("<script>alert('회원가입 실패');</script>");
			out.flush();
		}
		PrintWriter out = response.getWriter();
		out.println("<script>location.href='login.do'</script>");
		out.flush();
	}

	
	
	
	
	
	

	// 로그인

	@RequestMapping(value = "/member_login.ing", method = RequestMethod.POST)
	public void login_ing(HttpServletRequest request, HttpServletResponse response, Model model, MemberDto memdto)
			throws Exception {
		response.setContentType("text/html; charset=UTF-8");
		// id가 있는지 확인하고 해당 id에서 각종 정보를 검색합니다.
		MemberDto mLogin = memSer.login(memdto);
		// 아이디가 존재할 때
		memdto.setM_pw(SHA256.getSHA256(memdto.getM_pw()));
		try {

			if (mLogin.getM_pw().equals(memdto.getM_pw())) {

				HttpSession session = request.getSession();
				session.setAttribute("userData", mLogin); // 유저 정보 한꺼번에 넣음
				model.addAttribute("userData", mLogin); // 유저 정보 한꺼번에 넣음
				session.setAttribute("login_result", mLogin);

				PrintWriter out = response.getWriter();
				out.println("<script>alert('" + memdto.getM_id() + "님 환영합니다!');</script>");
				System.out.println(mLogin.getM_name());
				out.flush();

			} else {
				System.out.println("DBPW:" + mLogin.getM_pw() + "\n" + "inputPW:" + memdto.getM_pw());
				PrintWriter out = response.getWriter();
				out.println("<script>alert('패스워드가 틀렸습니다.');</script>");
				out.println("<script>location.href='login.do'</script>");
				out.flush();
			}
		} catch (Exception e) {
			e.printStackTrace();
			PrintWriter out = response.getWriter();
			out.println("<script>alert('" + memdto.getM_id() + "는 존재하지 않는 아이디입니다.');</script>");
			out.println("<script>location.href='login.do'</script>");
			out.flush();
		} finally {
			PrintWriter out = response.getWriter();
			out.println("<script>location.href='main.do'</script>");
			out.flush();
		}
	}
	
	
	
	
	
	
	
	// 회원정보 수정

	@RequestMapping("/member_modify.do")
	public String modify(HttpServletRequest request, HttpServletResponse response, Model model, MemberDto memdto) {

		System.out.println("member_modify()페이지");

		return "myInfo";
	}

	// 회원 수정
	/*
	 * @RequestMapping("/member_modify.ing") public String
	 * modify_ing(HttpServletRequest request, HttpServletResponse response, Model
	 * model, MemberDto memdto) {
	 * 
	 * System.out.println("member_modify()진행");
	 * 
	 * int result = memSer.memberUpdate(memdto);
	 * 
	 * model.addAttribute("modify_request", result);
	 * 
	 * if (result == 1) { System.out.println("회원수정 성공"); } else {
	 * System.out.println("실패"); } return "redirect:/myInfoModify"; }
	 * 
	 * 
	 */
	
	
	
	
	
	//정보 수정
	@RequestMapping(value = "member_modify.ing")
	public void modify_ing(HttpServletRequest request, HttpServletResponse response, Model model, MemberDto memdto) throws Exception{
		response.setContentType("text/html; charset=UTF-8");
		//id가 있는지 확인하고 해당 id에서 각종 정보를 검색합니다.
		MemberDto selectDTO = memSer.login(memdto);
		String modifyPassword = (String)request.getParameter("userPw2");
		System.out.println("변경할비밀번호"+modifyPassword);
		memdto.setM_pw(SHA256.getSHA256(memdto.getM_pw()));
		//아이디가 존재할 때
			try {
			if(selectDTO.getM_pw().equals(memdto.getM_pw())){
				PrintWriter out = response.getWriter();
				out.println("<script>alert('"+memdto.getM_id()+"님 비밀번호 인증성공');</script>");
				modifyPassword = SHA256.getSHA256(modifyPassword);
				memdto.setM_pw(modifyPassword); //변경할 비밀번호로 바꿈
				System.out.println("정보수정 실행");
				
				int result =memSer.memberUpdate(memdto); //업데이트
				System.out.println("정보수정 실행후");
				if(result == 1) {
					System.out.println("정보수정 성공");
					out.println("<script>alert('"+memdto.getM_id()+"님 정보 수정 성공');</script>");
				}else {
					System.out.println("정보수정 실패");
					out.println("<script>alert('"+memdto.getM_id()+"님 정보 수정 실패');</script>");
				}
				out.flush();
			}else {
				System.out.println("DBPW:"+selectDTO.getM_pw()+"\n"+"inputPW:"+memdto.getM_pw());
				PrintWriter out = response.getWriter();
				out.println("<script>alert('패스워드가 틀렸습니다.');</script>");
				out.flush();
			}
			}catch(Exception e) {
				e.printStackTrace();
			PrintWriter out = response.getWriter();
			out.println("<script>alert('"+memdto.getM_id()+"는 존재하지 않는 아이디입니다.');</script>");
			out.flush();
		}finally {
			PrintWriter out = response.getWriter();
			out.println("<script>location.href='login.do'</script>");
			out.flush();
		}
	}




	
	
	
	
	
	
	
	
	
	
	// 회원 삭제

	@RequestMapping("/member_delete.do")
	public String delete(HttpServletRequest request, Model model, MemberDto memdto) {

		System.out.println("member_delete()");

		return "member_delete";
	}

	@RequestMapping("/member_delete.ing")
	public String delete_ing(HttpServletRequest request, HttpServletResponse response, Model model, MemberDto memdto) throws Exception{
		response.setContentType("text/html; charset=UTF-8");
		System.out.println("member_delete()처리");

		int delete_result = memSer.memberDelete(memdto);

		if (delete_result == 1) {
			System.out.println("탈퇴성공");
			HttpSession session = request.getSession();
			session.invalidate();
			
			
			PrintWriter out = response.getWriter();
			out.println("<script>alert('탈퇴되었습니다.');</script>");
			out.flush();
		} else {
			System.out.println("탈퇴 실패");
		}
		return "main/main";

	}
	
	
	
	
	
	
	
    //관리자 페이지에서 회원조회
	
	@RequestMapping(value = "admin_member_list", method = RequestMethod.GET)
	public String list(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {

		System.out.println("list()");


		HttpSession session = request.getSession();

		try {
			MemberDto mdto = (MemberDto) session.getAttribute("login_result");
			mdto.setM_id(mdto.getM_id());
			System.out.println("mId:" + mdto.getM_id());
		} catch (Exception e) {

		}

		List<MemberDto> list = memSer.memberListAll();
		System.out.println(list.get(0).getM_name());
		model.addAttribute("list", list);

	
		return "admin/admin_member_list";

	}
	
	
	
	
	
	
	
	
	
	
	

	// 로그아웃

	@RequestMapping("/member_logout.ing")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/main.do";
	}
	
	
	

}
