package com.brick.squad.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.transaction.annotation.Transactional;

import com.brick.squad.expand.ReservationPaginationExpand;
import com.brick.squad.mapper.ReservationMapper;
import com.brick.squad.pojo.Reservation;
import com.brick.squad.service.ReservationService;
import com.brick.squad.util.Util;

@Transactional
public class ReservationServiceImpl implements ReservationService {
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

	/**
	 * 后台管理分页显示数据,把数据处理成页面分页框架需要的格式
	 */
	@Override
	public String ReservationPagination(ReservationPaginationExpand reservationPaginationExpand) throws Exception {
		// TODO Auto-generated method stub

		List<Reservation> listReservations = reservationMapper
				.ReservationPagination(reservationPaginationExpand);
		int row = listReservations.size();
		Util<Reservation> utilReservation = new Util<Reservation>();
		String data = utilReservation.SplitPage(listReservations, row);
		return data;
	}



}
