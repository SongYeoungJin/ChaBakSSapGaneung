package com.spring.ex.mapper;

import com.spring.ex.Dto.Cart_Dto;


public interface CartMapper {
	
    public Cart_Dto selectCart(Cart_Dto cartVO) throws Exception;
}
	