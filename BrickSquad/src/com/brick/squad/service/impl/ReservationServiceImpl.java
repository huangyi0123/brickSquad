package com.brick.squad.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.transaction.annotation.Transactional;

import com.brick.squad.mapper.ReservationMapper;
import com.brick.squad.pojo.Reservation;
import com.brick.squad.service.ReservationService;
@Transactional
public class ReservationServiceImpl implements ReservationService{
	@Autowired
	@Qualifier("reservationMapper")
	private ReservationMapper reservationMapper;
	@Override
	/**
	 * 预约表的添加
	 * 
	 * */
	public void insertReservation(Reservation reservation) throws Exception {
		reservationMapper.insertReservation(reservation);
	}
	

}
