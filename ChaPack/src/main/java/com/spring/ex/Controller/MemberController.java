package com.spring.ex.Controller;

import java.lang.reflect.Member;

import javax.annotation.Resource;
import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.ex.Service.MemberService;
import com.spring.ex.Dto.MemberDto;


@Controller
@RequestMapping("/member/*")
public class MemberController {

	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	@Inject
	@Resource(name = "MemberService")
	MemberService service;
	
	// 회원가입 get
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public void getRegister() throws Exception {
		logger.info("get register");
	}
	
	// 회원가입 post
	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public void postRegister(Member vo) throws Exception {
		logger.info("post register");
	}
	
	
}














