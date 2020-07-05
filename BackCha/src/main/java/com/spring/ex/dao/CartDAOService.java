package com.spring.ex.dao;

import java.util.List;
import java.util.UUID;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.ex.dto.Cart_Dto;
import com.spring.ex.mapper.CartMapper;


@Service("cartDAOService")
public class CartDAOService implements CartDAO{
	 
    @Autowired
    private SqlSession sqlSession;
    
    public List<Cart_Dto> selectCartList(Cart_Dto cartVO) throws Exception {
        CartMapper mapper = sqlSession.getMapper(CartMapper.class);
        return mapper.selectCartList(cartVO);
    }
 
    public void insertCart(Cart_Dto cartVO) throws Exception {
        CartMapper mapper = sqlSession.getMapper(CartMapper.class);
        mapper.insertCart(cartVO);
    }
 
    public void updateCart(Cart_Dto cartVO) throws Exception {
    	System.out.println(cartVO);
        CartMapper mapper = sqlSession.getMapper(CartMapper.class);
        mapper.updateCart(cartVO);
    }
 
    public void deleteCart(Cart_Dto cartVO) throws Exception {
        CartMapper mapper = sqlSession.getMapper(CartMapper.class);
        mapper.deleteCart(cartVO);
    }

	public Cart_Dto selectCartByCode(Cart_Dto cartVO) throws Exception {
        CartMapper mapper = sqlSession.getMapper(CartMapper.class);
        return mapper.selectCartByCode(cartVO);
    }
	
    public static String getRandomString() {
   	 
        return UUID.randomUUID().toString().replaceAll("-", "");
    }
}