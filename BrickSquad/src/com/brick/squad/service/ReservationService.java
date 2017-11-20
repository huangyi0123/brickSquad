package com.brick.squad.service;

import com.brick.squad.pojo.Reservation;

public interface ReservationService {
	/**
	 * 预约表的添加
	 * 
	 * */
	public void insertReservation(Reservation reservation)throws Exception;
}
