package com.brick.squad.controller;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;

import com.brick.squad.pojo.Reservation;
import com.brick.squad.service.ReservationService;
@Controller
@RequestMapping("/reservation")
public class ReservationController {
	@InitBinder
	protected void initBinder(WebDataBinder binder) {
		SimpleDateFormat dateFormat = new SimpleDateFormat(
				"yyyy-MM-dd");
		binder.registerCustomEditor(Date.class, new CustomDateEditor(
				dateFormat, true));
	}
	
	@Autowired
	@Qualifier("reservationService")
	private ReservationService reservationService;
	/**首页预约活动信息插入
	 * @throws Exception */
	@RequestMapping("/findInsertReservation")
	public String findInsertReservation(HttpServletRequest request,Reservation reservation) throws Exception{
		reservationService.insertReservation(reservation);
		return "redirect:/";
	}
	

}
