package com.spring.ex.dao;

import java.util.List;

import com.spring.ex.dto.Reservation_Dto;


public interface ReservationDAO {
	   /**
     * 게시물 리스트 조회
     * @param reservationVO
     * @return
     * @throws Exception
     */
    List<Reservation_Dto> selectReservationList(Reservation_Dto reservationVO) throws Exception;
 
    /**
     * 게시물 등록
     * @param reservationVO
     * @throws Exception
     */
    void insertReservation(Reservation_Dto reservationVO) throws Exception;
 
    /**
     * 게시물 수정
     * @param reservationVO
     * @throws Exception
     */
    void updateReservation(Reservation_Dto reservationVO) throws Exception;
 
    /**
     * 게시물 삭제
     * @param reservationVO
     * @throws Exception
     */
    void deleteReservation(Reservation_Dto reservationVO) throws Exception;
 
    /**
     * 게시물 조회
     * @param reservationVO
     * @return
     * @throws Exception
     */
    Reservation_Dto selectReservationByCode(Reservation_Dto reservationVO) throws Exception;
 
}
