package com.brick.squad.controller;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.brick.squad.pojo.OnlineParticipationInfo;
import com.brick.squad.service.OnlineParticipationInfoService;
import com.brick.squad.util.Pagination;

@Controller
@RequestMapping("onlineParticipationInfo")
public class OnlineParticipationInfoController {
	@Autowired
	@Qualifier("onlineParticipationInfoService")
	private OnlineParticipationInfoService onlineParticipationInfoService;

	@RequestMapping("/toOnlineParticipationInfoList")
	public String toOnlineParticipationInfoList() {
		return "backstage_managed/jsp/onlineParticipationInfo/onlineParticipationInfo_list";
	}

	@RequestMapping("/getOnlineParticipationInfoList")
	@ResponseBody
	public String getOnlineParticipationInfoList(int pSize, int cPage,
			String keyword) throws Exception {
		Pagination pagination = new Pagination();
		pagination.setKeyword(keyword);
		pagination.setPageSize(pSize);
		pagination.setCurentPage(cPage);
		return onlineParticipationInfoService
				.findOnlineParticipationInfoPagination(pagination);
	}

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
		String regex = "^((13[0-9])|(14[5|7])|(15([0-3]|[5-9]))|(17[013678])|(18[0,5-9]))\\d{8}$";
		Pattern p = Pattern.compile(regex);
		Matcher m = p.matcher(onlineParticipationInfo.getPhone());
		boolean isMatch = m.matches();
		if (onlineParticipationInfo.getUserName() == null
				|| onlineParticipationInfo.getPhone() == null || !(isMatch)) {
			return "fail";
		}
		onlineParticipationInfoService
				.insertOnlineParticipationInfo(onlineParticipationInfo);
		return "success";
	}
}
