package com.spring.ex.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring.ex.dto.Cart_Dto;
import com.spring.ex.dto.Market_Dto;
import com.spring.ex.service.CartService;
import com.spring.ex.service.MarketService;

@Controller
public class CartController {
	@Autowired
    private CartService cartServiceImpl;
	
	/**
     * 게시판 조회
     */
    @RequestMapping(value="/cartList.do")
    public String cartList(@ModelAttribute("cartVO") Cart_Dto cartVO, Model model) throws Exception{
                
        List<Cart_Dto> list = cartServiceImpl.selectCartList(cartVO);
        
        model.addAttribute("list", list);
        
        return "cart/cartList";
    }
}
