package com.brick.squad.mapper;

import java.util.List;

import com.brick.squad.expand.ReservationPaginationExpand;
import com.brick.squad.pojo.Reservation;

public interface ReservationMapper {
	/**
	 * 预约表的添加
	 * */
	public void insertReservation(Reservation reservation);

	/**
	 * 后台管理分页显示数据
	 * 
	 * @param pagination
	 * @return
	 */
	public List<Reservation> ReservationPagination(ReservationPaginationExpand reservationPaginationExpand);
}
