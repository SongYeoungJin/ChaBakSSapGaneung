package com.spring.ex.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.ex.dao.OrderDAO;
import com.spring.ex.dto.Order_Dto;


@Service("orderServiceImpl")
public class OrderServiceImpl implements OrderService {
	  @Autowired
	    private OrderDAO orderDAOService;
	    
	    @Override
	    public List<Order_Dto> selectOrderList(Order_Dto orderVO) throws Exception {
	        List<Order_Dto> list = null;
	        list = orderDAOService.selectOrderList(orderVO);
	        return list;
	    }
	 
	    @Override
	    public void insertOrder(Order_Dto orderVO) throws Exception {
		    java.util.Date date1 = new java.util.Date();
		    java.sql.Date date2 = new java.sql.Date(date1.getTime());
			orderVO.setO_regdate(date2);
	        orderDAOService.insertOrder(orderVO);
	    }
	 
	    @Override
	    public void updateOrder(Order_Dto orderVO) throws Exception {
	        orderDAOService.updateOrder(orderVO);
	    }
	 
	    @Override
	    public void deleteOrder(Order_Dto orderVO) throws Exception {
	        orderDAOService.deleteOrder(orderVO);
	    }
	 
	    @Override
	    public Order_Dto selectOrderByCode(Order_Dto orderVO) throws Exception {
	        
	    	Order_Dto resultVO = orderDAOService.selectOrderByCode(orderVO);
	        
	        return resultVO; 
	    }
}
