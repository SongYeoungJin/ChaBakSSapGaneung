package com.spring.ex.Dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.ex.Dto.Cart_Dto;
import com.spring.ex.mapper.CartMapper;


@Service("cartDAOService")
public class CartDAOService implements CartDAO{
	 
    @Autowired
    private SqlSession sqlSession;
    


	public Cart_Dto selectCart(Cart_Dto cartVO) throws Exception {
        CartMapper mapper = sqlSession.getMapper(CartMapper.class);
        return mapper.selectCart(cartVO);
    }

}
