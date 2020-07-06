package com.spring.ex.mapper;

import java.util.List;

import com.spring.ex.dto.Cart_Dto;


public interface CartMapper {
	
    public Cart_Dto selectCart(Cart_Dto cartVO) throws Exception;
}




/*
 * package com.spring.ex.mapper;
 * 
 * import java.util.List;
 * 
 * import com.spring.ex.dto.Cart_Dto;
 * 
 * 
 * public interface CartMapper { // 게시물 리스트 조회 public List<Cart_Dto>
 * selectCartList(Cart_Dto cartVO) throws Exception;
 * 
 * // 게시물 등록 public void insertCart(Cart_Dto cartVO) throws Exception;
 * 
 * // 게시물 수정 public void updateCart(Cart_Dto cartVO) throws Exception;
 * 
 * // 게시물 삭제 public void deleteCart(Cart_Dto cartVO) throws Exception;
 * 
 * // 게시물 조회 public Cart_Dto selectCartByCode(Cart_Dto cartVO) throws Exception;
 * }
 */