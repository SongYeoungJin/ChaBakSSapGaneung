package com.spring.ex.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MarketController {
	//상품상세
	@RequestMapping("/market.do")
	public String market() {
		return "Market/market";
	}
	
	//상품리스트첫화면
	@RequestMapping("/marketList.do")
	public String marketList() {
		return "Market/marketList";
	}
	
	//상품리스트상세
	/*	
	@RequestMapping("marketList1")
	public String productList1() {
		return "Market/marketList1";
	}
	*/
}
