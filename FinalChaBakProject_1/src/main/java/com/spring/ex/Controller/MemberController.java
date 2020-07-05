package com.spring.ex.Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.ex.Dto.Cart_Dto;
import com.spring.ex.Dto.Community_Board_Dto;
import com.spring.ex.Dto.MemberDto;
import com.spring.ex.Service.BoardService;
import com.spring.ex.Service.CartService;
import com.spring.ex.Service.IMemberService;
import com.spring.ex.util.SHA256;


@Controller
public class MemberController {
	@Autowired
	IMemberService memSer;
    @Autowired
    private CartService cartServiceImpl;
    @Autowired
    private BoardService boardServiceImpl;

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

		MemberDto mLogin = memSer.login(memdto);
		// 아이디가 존재할 때
		memdto.setM_pw(SHA256.getSHA256(memdto.getM_pw()));
		try {

			if (mLogin.getM_pw().equals(memdto.getM_pw())) {

				HttpSession session = request.getSession();
				session.setAttribute("userData", mLogin); 
				model.addAttribute("userData", mLogin);
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

	

	//정보 수정
	@RequestMapping(value = "member_modify.ing")
	public void modify_ing(HttpServletRequest request, HttpServletResponse response, Model model, MemberDto memdto) throws Exception{
		response.setContentType("text/html; charset=UTF-8");
		
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
	
	
	//아이디 찾기 폼
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
	//비밀번호 찾기 폼
	@RequestMapping(value = "/find_PW", method = RequestMethod.GET)
	public String find_PW() {
		
		return "Login/find_PW";
	}
	//비밀번호 찾기
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
	
	
	//관리자 -> 회원상세정보
	  @RequestMapping(value="admin_member_detail.do", method = RequestMethod.POST)
	    public String memberView(
	    		@ModelAttribute("CartVO") Cart_Dto Cart_Dto,
	    		@ModelAttribute("MemberDto") MemberDto dto, 
	    		@ModelAttribute("boardVO") Community_Board_Dto boardVO,
	    		Model model, HttpServletRequest request) throws Exception{
	        
	    	request.setCharacterEncoding("UTF-8");
	        int m_num = Integer.parseInt(request.getParameter("m_num"));
	        dto.setM_num(m_num);
	        Cart_Dto.setM_num(m_num);
	        boardVO.setM_num(m_num);
	        Community_Board_Dto board = boardServiceImpl.selectBoardMember(boardVO);
	        MemberDto resultVO = memSer.selectMember(dto);
	        Cart_Dto cart = cartServiceImpl.selectCart(Cart_Dto);
	        model.addAttribute("result", resultVO);
	        model.addAttribute("cart", cart);
	        model.addAttribute("board", board);
	        
	        return "admin/admin_member_detail";
	        
	        
	    }

	 
		
}