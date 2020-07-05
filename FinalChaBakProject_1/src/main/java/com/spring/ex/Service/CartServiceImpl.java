package com.spring.ex.Service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Autowired;

import com.spring.ex.Dao.CartDAO;
import com.spring.ex.Dto.Cart3Dto;

public class CartServiceImpl implements CartService{
	@Autowired
    CartDAO cartDao;
    
    @Override
    public List<Cart3Dto> cartMoney() {
        return null;
    }
    @Override
    public void insert(Cart3Dto dto) {
        cartDao.insert(dto);
    }
    @Override
    public List<Cart3Dto> listCart(String m_id) {
        return cartDao.listCart(m_id);
    }
    @Override
    public void delete(int cart_num) {
        cartDao.delete(cart_num);
    }
    @Override
    public void deleteAll(String m_id) {
        cartDao.deleteAll(m_id);
    }
    @Override
    public void update(int cart_num) {
        cartDao.update(cart_num);
    }
    @Override
    public int sumMoney(String m_id) {
        return cartDao.sumMoney(m_id);
    }
	@Override
	public int CountCart(String m_id, int mar_num) {
		 return cartDao.CountCart(m_id, mar_num);
	}
	@Override
	public void modifyCart(Cart3Dto dto) {
		cartDao.modifyCart(dto);
	}
}
