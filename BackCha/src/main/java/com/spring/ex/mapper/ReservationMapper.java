package com.spring.ex.mapper;

import java.util.List;

import com.spring.ex.dto.Reservation_Dto;


public interface ReservationMapper {

    // 게시물 리스트 조회
    public List<Reservation_Dto> selectReservationList(Reservation_Dto reservationVO) throws Exception;
    
    // 게시물 등록
    public void insertReservation(Reservation_Dto reservationVO) throws Exception;
    
    // 게시물 수정
    public void updateReservation(Reservation_Dto reservationVO) throws Exception;
    
    // 게시물 삭제
    public void deleteReservation(Reservation_Dto reservationVO) throws Exception;
 
    // 게시물 조회
    public Reservation_Dto selectReservationByCode(Reservation_Dto reservationVO) throws Exception;
    
}
