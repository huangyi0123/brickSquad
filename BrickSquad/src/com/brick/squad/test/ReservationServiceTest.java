package com.brick.squad.test;

import java.util.Date;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.test.context.ContextConfiguration;

import com.brick.squad.pojo.Reservation;
import com.brick.squad.service.ReservationService;
import com.brick.squad.util.JunitClassRunner;

@RunWith(JunitClassRunner.class)
@ContextConfiguration(locations = "classpath:com/brick/squad/config/applicationContext.xml")
public class ReservationServiceTest {
	@Autowired
	@Qualifier("reservationService")
	private ReservationService reservationService;
	@Test
	public void insertReservation() throws Exception{
		Reservation reservation=new Reservation();
		reservation.setRname("xuebiao");
		reservation.setTelephone("18302612864");
		reservation.setReservationDate(new Date());
		reservation.setRemarks("xuebiao专属");
		reservation.setBranchId("544212154645881");
		reservationService.insertReservation(reservation);
	}
}
