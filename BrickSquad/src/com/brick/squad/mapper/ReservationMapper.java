package com.brick.squad.mapper;

import com.brick.squad.pojo.Reservation;

public interface ReservationMapper {
	/**
	 * 预约表的添加
	 * */
	public void insertReservation(Reservation reservation);
}
