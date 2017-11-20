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
import org.springframework.web.bind.annotation.ResponseBody;

import com.brick.squad.pojo.Reservation;
import com.brick.squad.service.ReservationService;
import com.brick.squad.service.TypeService;
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
	@Autowired
	@Qualifier("typeService")
	private TypeService typeService;
	/**首页预约活动信息插入
	 * @throws Exception */
	@RequestMapping("/findInsertReservation")
	public String findInsertReservation(HttpServletRequest request,Reservation reservation) throws Exception{
		reservationService.insertReservation(reservation);
		return "redirect:/";
	}
	/**区域的回显*/
	@RequestMapping("/findBranch")
	@ResponseBody
	public String findBranch(){
		//根据分店ID查找该下的分店名
		String data=typeService.findTypeByParentId("594cf09abc4c11e7aca65254002ec43c");
		return data;
	}
	

}
