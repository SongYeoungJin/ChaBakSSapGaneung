package com.spring.ex.Controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.spring.ex.Dto.Cart3Dto;
import com.spring.ex.Service.CartService;

@Controller
//@RequestMapping("/member/cart/*")
public class CartController {

	@Autowired
	CartService cartService;

	@RequestMapping("cart/insert.do")
	// 페이지 이동시 list로 URL 변경을 원하므로 리다이렉트 사용
	// 로그인 시에만 장바구니 기능 이용할 수 있도록 로그인 정보를 담고있는 세션 객체 필요
	public String insert(@ModelAttribute Cart3Dto dto, HttpSession session) {

		// session객체의 attribute는 Object타입
		String m_id = (String) session.getAttribute("m_id");

		if (m_id == null) {
			return "redirect:/Login/login";
		}
		dto.setM_id(m_id);
		cartService.insert(dto);

		return "redirect:/shop/cart/list.do";
	}

	// 장바구니 리스트 :cartService의 listCart, sumMoney 메서드 사용
	// 장바구니 목록과 금액합계는 로그인 아이디 정보가 있어야하므로
	// 세션에서 아이디 정보를 받아낸다.
	@RequestMapping("cart/list.do")
	public ModelAndView list(ModelAndView mav, HttpSession session) {

		// 장바구니 목록, 금액 합계, 배송료, 리스트의 사이즈(주문 아이템 갯수) 등
		// dto로 표현되지 않는 여러가지 정보를 담아 뷰로 넘겨야하므로 HashMap 사용
		Map<String, Object> map = new HashMap<String, Object>();

		String m_id = (String) session.getAttribute("m_id");
		if (m_id != null) {// 로그인한 상태이면
			List<Cart3Dto> list = cartService.listCart(m_id);// 서비스단에서 장바구니 목록을 가져오고
			int sumMoney = cartService.sumMoney(m_id);// 금액 합계를 가져오고
			int fee = sumMoney >= 30000 ? 0 : 2500;// 금액 합계에 대한 배송료를 계산하고
			// 금액,배송비,총액,리스트사이즈,장바구니목록
			// 각 값들을 map에 넣어준다.
			map.put("sumMoney", sumMoney);
			map.put("fee", fee);
			map.put("sum", fee + sumMoney);
			map.put("list", list);
			map.put("count", list.size());

			mav.setViewName("cart/cart_list"); // 장바구니리스트로 뷰 설정
			mav.addObject("map", map);
			// ModelAndView 객체에 map을 담고 리스트 뷰를 설정해준 뒤 포워딩.

			return mav;

		} else {
			// 로그인하지 않은 상태이면 로그인 페이지로
			// 아무 Object도 안줘도 되나?
			mav.setViewName("Login/login");
			return mav;
		}
	}

	@RequestMapping("cart/delete.do")
	public String delete(int cart_num) {

		cartService.delete(cart_num);

		return "redirect:/market/productlist.do";
	}

	@RequestMapping("cart/deleteAll.do")
	public String deleteAll(HttpSession session) {

		// 세션에셔 유저아이디 가져오는걸 service에서 안하고 서비스에서 하나?
		// ServiceImpl에서 진행해도 되는 처리과정
		String m_id = (String) session.getAttribute("m_id");
		if (m_id != null) {
			cartService.deleteAll(m_id);
		}

		return "redirect:/market/productlist.do";
	}

	// ServiceImple의 modifyCart/delete 메서드 사용
	@RequestMapping("cart/update.do")
	public String update(int[] amount, int[] cart_num, HttpSession session) {

		String m_id = (String) session.getAttribute("m_id");

		for (int i = 0; i < cart_num.length; i++) {

			// amount가 0이면 카트아이디를 삭제
			if (amount[i] == 0) {
				cartService.delete(cart_num[i]);
			} else {
				Cart3Dto dto = new Cart3Dto();
				dto.setM_id(m_id);
				dto.setCart_num(cart_num[i]);
				dto.setAmount(amount[i]);
				cartService.modifyCart(dto);
			}
		}

		return "redirect:/market/productlist.do";
	}
}
