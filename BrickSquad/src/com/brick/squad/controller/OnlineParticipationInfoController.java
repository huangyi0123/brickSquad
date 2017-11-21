package com.brick.squad.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.brick.squad.pojo.OnlineParticipationInfo;
import com.brick.squad.service.OnlineParticipationInfoService;

@Controller
@RequestMapping("onlineParticipationInfo")
public class OnlineParticipationInfoController {
	@Autowired
	@Qualifier("onlineParticipationInfoService")
	private OnlineParticipationInfoService onlineParticipationInfoService;

	/**
	 * 官网在线参与信息提交
	 * 
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/userInsertOnlineParticipationInfo")
	@ResponseBody
	public String userInsertOnlineParticipationInfo(
			OnlineParticipationInfo onlineParticipationInfo) throws Exception {
		if (onlineParticipationInfo.getUserName() == null
				|| onlineParticipationInfo.getPhone() == null) {
			return "fail";
		}
		onlineParticipationInfoService
				.insertOnlineParticipationInfo(onlineParticipationInfo);
		System.out.println(onlineParticipationInfo.getId());
		return "success";
	}
}
