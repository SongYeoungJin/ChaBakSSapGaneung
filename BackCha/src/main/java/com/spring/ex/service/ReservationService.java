package com.spring.ex.service;

import java.util.List;

import com.spring.ex.dto.Reservation_Dto;


public interface ReservationService {
	 /**
     * 게시물 리스트 조회
     * @param reservationVO
     * @return
     * @throws Exception
     */
    public List<Reservation_Dto> selectReservationList(Reservation_Dto reservationVO) throws Exception;
    
    /**
     * 게시물 작성
     * @param reservationVO
     * @throws Exception
     */
    public void insertReservation(Reservation_Dto reservationVO) throws Exception;
    
    /**
     * 게시물 수정
     * @param reservationVO
     * @throws Exception
     */
    public void updateReservation(Reservation_Dto reservationVO) throws Exception;
    
    /**
     * 게시물 삭제
     * @param reservationVO
     * @throws Exception
     */
    public void deleteReservation(Reservation_Dto reservationVO) throws Exception;
 
    /**
     * 게시글 조회
     * @param reservationVO
     * @return
     * @throws Exception
     */
    public Reservation_Dto selectReservationByCode(Reservation_Dto reservationVO) throws Exception;

}
