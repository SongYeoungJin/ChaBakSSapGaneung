package com.spring.ex.service;

import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.ex.dao.CartDAO;
import com.spring.ex.dto.Cart_Dto;
import com.spring.ex.dto.Market_Dto;

@Service("cartServiceImpl")
public class CartServiceImpl implements CartService {
	@Autowired
	private CartDAO cartDAOService;

	@Override
	public List<Cart_Dto> selectCartList(Cart_Dto cartVO) throws Exception {
		List<Cart_Dto> list = null;
        list = cartDAOService.selectCartList(cartVO);
        return list;
	}

	@Override
	public void insertCart(Cart_Dto cartVO) throws Exception {
		cartDAOService.insertCart(cartVO);
	}

	@Override
	public void updateCart(Cart_Dto cartVO) throws Exception {
		cartDAOService.updateCart(cartVO);
	}

	@Override
	public void deleteCart(Cart_Dto cartVO) throws Exception {
		cartDAOService.deleteCart(cartVO);
	}

	

}
