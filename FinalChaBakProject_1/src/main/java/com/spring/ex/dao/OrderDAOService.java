package com.spring.ex.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.ex.dto.Order_Dto;
import com.spring.ex.mapper.OrderMapper;


@Service("orderDAOService")
public class OrderDAOService implements OrderDAO{
	 
    @Autowired
    private SqlSession sqlSession;
    
    public List<Order_Dto> selectOrderList(Order_Dto orderVO) throws Exception {
        OrderMapper mapper = sqlSession.getMapper(OrderMapper.class);
        return mapper.selectOrderList(orderVO);
    }
 
    public void insertOrder(Order_Dto orderVO) throws Exception {
	    java.util.Date date1 = new java.util.Date();
	    java.sql.Date date2 = new java.sql.Date(date1.getTime());
		orderVO.setO_regdate(date2);
        OrderMapper mapper = sqlSession.getMapper(OrderMapper.class);
        mapper.insertOrder(orderVO);
    }
 
    public void updateOrder(Order_Dto orderVO) throws Exception {
    	System.out.println(orderVO);
        OrderMapper mapper = sqlSession.getMapper(OrderMapper.class);
        mapper.updateOrder(orderVO);
    }
 
    public void deleteOrder(Order_Dto orderVO) throws Exception {
        OrderMapper mapper = sqlSession.getMapper(OrderMapper.class);
        mapper.deleteOrder(orderVO);
    }
 
    @Override
    public Order_Dto selectOrderByCode(Order_Dto orderVO) throws Exception {
        OrderMapper mapper = sqlSession.getMapper(OrderMapper.class);
        return mapper.selectOrderByCode(orderVO);
    }
}
