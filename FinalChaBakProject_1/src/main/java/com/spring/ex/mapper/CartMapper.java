package com.spring.ex.mapper;

import java.util.List;

import com.spring.ex.dto.Cart_Dto;


public interface CartMapper {
	 List<Cart_Dto> selectCartList(Cart_Dto cartVO) throws Exception;
	 public void insertCart(Cart_Dto cartVO) throws Exception;
	 public void updateCart(Cart_Dto cartVO) throws Exception;
	 public void deleteCart(Cart_Dto cartVO) throws Exception;
	 public Cart_Dto selectCartByCode(Cart_Dto cartVO) throws Exception;
     public Cart_Dto selectCart(Cart_Dto cartVO) throws Exception;
}
