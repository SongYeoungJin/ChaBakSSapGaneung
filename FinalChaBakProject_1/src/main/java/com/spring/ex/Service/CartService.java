package com.spring.ex.Service;

<<<<<<< HEAD
import java.util.List;

import com.spring.ex.Dto.Cart3Dto;

public interface CartService {
	List<Cart3Dto> cartMoney(); // mapper봐도 무슨 메서드인지 모르겠다

	void insert(Cart3Dto dto); // 장바구니 추가

	List<Cart3Dto> listCart(String m_id); // 장바구니 목록

	void delete(int cart_num); // 장바구니 아이템 개별 삭제

	void deleteAll(String m_id); // 장바구니 비우기

	void update(int cart_num);

	int sumMoney(String m_id);// 장바구니 금액 합계

	int CountCart(String m_id, int mar_num);// 장바구니 상품 갯수

	void modifyCart(Cart3Dto dto);
=======
import com.spring.ex.Dto.Cart_Dto;

public interface CartService {
	/*	  *//**
			 * 게시물 리스트 조회
			 * 
			 * @param cartVO
			 * @return
			 * @throws Exception
			 */
	/*
	 * public List<Cart_Dto> selectCartList(Cart_Dto cartVO) throws Exception;
	 * 
	 *//**
		 * 게시물 작성
		 * 
		 * @param cartVO
		 * @throws Exception
		 */
	/*
	 * public void insertCart(Cart_Dto cartVO) throws Exception;
	 * 
	 *//**
		 * 게시물 수정
		 * 
		 * @param cartVO
		 * @throws Exception
		 */
	/*
	 * public void updateCart(Cart_Dto cartVO) throws Exception;
	 * 
	 *//**
		 * 게시물 삭제
		 * 
		 * @param cartVO
		 * @throws Exception
		 */
	/*
	 * public void deleteCart(Cart_Dto cartVO) throws Exception;
	 * 
	 *//**
		 * 게시글 조회
		 * 
		 * @param cartVO
		 * @return
		 * @throws Exception
		 */

	public Cart_Dto selectCart(Cart_Dto cartVO) throws Exception;
>>>>>>> branch 'master' of https://github.com/SongYeoungJin/ChaBakSSapGaneung.git
}
