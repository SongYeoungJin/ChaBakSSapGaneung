package com.spring.ex.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.ex.dto.placeDTO;
import com.spring.ex.service.IMemberService;
import com.spring.ex.service.placeService;

@Controller
public class PlaceController {
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	@Autowired
	IMemberService memSer;
	
	@Autowired
	placeService plSer;
	



	

	@RequestMapping(value = "chabakplace", method = RequestMethod.GET)
	public String place(HttpServletRequest request, HttpServletResponse response, Model model, placeDTO dto)
			throws Exception {
		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		
	

		HttpSession session = request.getSession();

		try {
			placeDTO pdto = (placeDTO) session.getAttribute("login_result");
			pdto.setP_name(pdto.getP_name());
			System.out.println("pname:" + pdto.getP_name());
		} catch (Exception e) {

		}

		List<placeDTO> list = plSer.placeAll();
		System.out.println(list.get(0).getP_name());
		model.addAttribute("list", list);
	
		return "chabakplace/chabakplace";

	}
	
		
	
	
	
	@RequestMapping(value = "place", method = RequestMethod.GET)
	public String list12(HttpServletRequest request, HttpServletResponse response, Model model,  placeDTO dto) throws Exception {
		plSer.userInsert(dto);
		System.out.println("list()");
		HttpSession session = request.getSession();

		try {
			placeDTO pdto = (placeDTO) session.getAttribute("login_result");
			pdto.setP_name(pdto.getP_name());
			System.out.println("pname:" + pdto.getP_name());
		} catch (Exception e) {

		}

		List<placeDTO> list = plSer.placeAll();
		System.out.println(list.get(0).getP_name());
		model.addAttribute("list", list);
	
		return "chabakplace/place";

	}
	
	

	
}
