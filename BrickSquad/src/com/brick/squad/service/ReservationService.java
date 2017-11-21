package com.brick.squad.service;

import com.brick.squad.expand.ReservationPaginationExpand;
import com.brick.squad.pojo.Reservation;

public interface ReservationService {
	/**
	 * 预约表的添加
	 * 
	 * */
	public void insertReservation(Reservation reservation) throws Exception;

	/**
	 * 后台管理分页显示数据
	 * 
	 * @param pagination
	 * @return
	 * @throws Exception
	 */
	public String ReservationPagination(ReservationPaginationExpand reservationPaginationExpand) throws Exception;
}
