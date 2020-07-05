package com.spring.ex.Dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;

import com.spring.ex.Dto.Cart3Dto;

public class CartDAOImpl implements CartDAO{
	 	@Inject
	    SqlSession sqlSession; //root-context에 빈으로 등록한 mybatis객체
	    
	    //DB 접근해서 가져온 데이터를 쓰는 곳이 없다
	    @Override
	    public List<Cart3Dto> cartMoney() {
	        return null;
	    }
	    @Override
	    public void insert(Cart3Dto dto) {
	        sqlSession.insert("cart.insert",dto);
	    }                 
	    @Override
	    public List<Cart3Dto> listCart(String m_id) {
	        
	        return sqlSession.selectList("cart.listCart",m_id);
	    }
	    @Override
	    public void delete(int cart_num) {
	        sqlSession.delete("cart.delete", cart_num);
	    }
	 
	    @Override
	    public void deleteAll(String m_id) {
	        sqlSession.delete("cart.deleteAll", m_id);
	    }
	 
	    @Override
	    public void update(int cart_num) {
	        sqlSession.update("cart.update", cart_num);
	    }
	 
	    @Override
	    public int sumMoney(String userid) {
	        return sqlSession.selectOne("cart.sumMoney", userid);
	    }
		@Override
		public int CountCart(String m_id, int mar_num) {
			return 0;
		}
		@Override
		public void modifyCart(Cart3Dto dto) {
			sqlSession.update("cart.modifyCart", dto);
		}
}
