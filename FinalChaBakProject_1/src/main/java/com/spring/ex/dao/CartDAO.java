package com.spring.ex.dao;

import java.util.List;

import com.spring.ex.dto.Cart_Dto;

public interface CartDAO {

	List<Cart_Dto> selectCartList(Cart_Dto cartVO) throws Exception;

	void insertCart(Cart_Dto cartVO) throws Exception;

	void updateCart(Cart_Dto cartVO) throws Exception;

	void deleteCart(Cart_Dto cartVO) throws Exception;

}
