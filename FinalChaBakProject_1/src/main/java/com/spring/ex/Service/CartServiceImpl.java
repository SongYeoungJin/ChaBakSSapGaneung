package com.spring.ex.Service;

<<<<<<< HEAD
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
=======
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.ex.Dao.CartDAO;
import com.spring.ex.Dto.Cart_Dto;

@Service("cartServiceImpl")
public class CartServiceImpl implements CartService{
	 @Autowired
	    private CartDAO cartDAOService;

		/*
		 * @Override public List<Cart_Dto> selectCartList(Cart_Dto cartVO) throws
		 * Exception { List<Cart_Dto> list = null; list =
		 * cartDAOService.selectCartList(cartVO); return list; }
		 * 
		 * @Override public void insertCart(Cart_Dto cartVO) throws Exception {
		 * cartDAOService.insertCart(cartVO); }
		 * 
		 * public static String getRandomString() {
		 * 
		 * return UUID.randomUUID().toString().replaceAll("-", ""); }
		 * 
		 * @Override public void updateCart(Cart_Dto cartVO) throws Exception {
		 * cartDAOService.updateCart(cartVO); }
		 * 
		 * @Override public void deleteCart(Cart_Dto cartVO) throws Exception {
		 * cartDAOService.deleteCart(cartVO); }
		 */
	    @Override
	    public Cart_Dto selectCart(Cart_Dto cartVO) throws Exception {
	        
	    	Cart_Dto resultVO = cartDAOService.selectCart(cartVO);
	        
	        return resultVO; 
	    }
>>>>>>> branch 'master' of https://github.com/SongYeoungJin/ChaBakSSapGaneung.git
}
