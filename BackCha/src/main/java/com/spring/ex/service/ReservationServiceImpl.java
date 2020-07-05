package com.spring.ex.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.ex.dao.ReservationDAO;
import com.spring.ex.dto.Reservation_Dto;

@Service("reservationServiceImpl")
public class ReservationServiceImpl implements ReservationService{
	 @Autowired
	    private ReservationDAO reservationDAOService;
	    
	    @Override
	    public List<Reservation_Dto> selectReservationList(Reservation_Dto reservationVO) throws Exception {
	        List<Reservation_Dto> list = null;
	        list = reservationDAOService.selectReservationList(reservationVO);
	        return list;
	    }
	 
	    @Override
	    public void insertReservation(Reservation_Dto reservationVO) throws Exception {
		    java.util.Date date1 = new java.util.Date();
		    java.sql.Date date2 = new java.sql.Date(date1.getTime());
			reservationVO.setR_date(date2);
	        reservationDAOService.insertReservation(reservationVO);
	    }
	 
	    @Override
	    public void updateReservation(Reservation_Dto reservationVO) throws Exception {
	        reservationDAOService.updateReservation(reservationVO);
	    }
	 
	    @Override
	    public void deleteReservation(Reservation_Dto reservationVO) throws Exception {
	        reservationDAOService.deleteReservation(reservationVO);
	    }
	 
	    @Override
	    public Reservation_Dto selectReservationByCode(Reservation_Dto reservationVO) throws Exception {
	        
	    	Reservation_Dto resultVO = reservationDAOService.selectReservationByCode(reservationVO);
	        
	        return resultVO; 
	    }
}
