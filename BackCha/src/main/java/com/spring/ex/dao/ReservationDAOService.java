package com.spring.ex.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.ex.dto.Reservation_Dto;
import com.spring.ex.mapper.ReservationMapper;


@Service("reservationDAOService")
public class ReservationDAOService implements ReservationDAO{
	@Autowired
    private SqlSession sqlSession;
    
    public List<Reservation_Dto> selectReservationList(Reservation_Dto reservationVO) throws Exception {
        ReservationMapper mapper = sqlSession.getMapper(ReservationMapper.class);
        return mapper.selectReservationList(reservationVO);
    }
 
    public void insertReservation(Reservation_Dto reservationVO) throws Exception {
	    java.util.Date date1 = new java.util.Date();
	    java.sql.Date date2 = new java.sql.Date(date1.getTime());
		reservationVO.setR_date(date2);
        ReservationMapper mapper = sqlSession.getMapper(ReservationMapper.class);
        mapper.insertReservation(reservationVO);
    }
 
    public void updateReservation(Reservation_Dto reservationVO) throws Exception {
    	System.out.println(reservationVO);
        ReservationMapper mapper = sqlSession.getMapper(ReservationMapper.class);
        mapper.updateReservation(reservationVO);
    }
 
    public void deleteReservation(Reservation_Dto reservationVO) throws Exception {
        ReservationMapper mapper = sqlSession.getMapper(ReservationMapper.class);
        mapper.deleteReservation(reservationVO);
    }
 
    public Reservation_Dto selectReservationByCode(Reservation_Dto reservationVO) throws Exception {
        ReservationMapper mapper = sqlSession.getMapper(ReservationMapper.class);
        return mapper.selectReservationByCode(reservationVO);
    }
}
