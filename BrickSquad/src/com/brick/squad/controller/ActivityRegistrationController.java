package com.brick.squad.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import net.sf.json.JSONArray;

import org.apache.commons.collections.map.HashedMap;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.brick.squad.expand.ActivityRegistrationExpand;
import com.brick.squad.pojo.ActivityRegistration;
import com.brick.squad.pojo.User;
import com.brick.squad.service.ActivitiesService;
import com.brick.squad.service.ActivityRegistrationService;
import com.brick.squad.service.PersonalInformationService;
import com.brick.squad.service.TypeService;
import com.brick.squad.service.UserService;
import com.brick.squad.util.Pagination;

@Controller
@RequestMapping("/activityRegistration")
public class ActivityRegistrationController {
	@Autowired
	@Qualifier("activityRegistrationService")
	private ActivityRegistrationService activityRegistrationService;
	@Autowired
	@Qualifier("personalInformationService")
	private PersonalInformationService personalInformationService;
	@Autowired
	@Qualifier("userService")
	private UserService userService;
	@Autowired
	@Qualifier("activitiesService")
	private ActivitiesService activitiesService;
	@Autowired
	@Qualifier("typeService")
	private TypeService typeService;

	@RequestMapping("/toActivityRegistration")
	public String toActivityRegistration() {
		return "backstage_managed/jsp/activityRegistration/activityRegistration_list";
	}

	@RequestMapping("/getActivityRegistrationList")
	@ResponseBody
	public String getActivityRegistrationList(int pSize, int cPage,
			String keyword) {
		Pagination pagination = new Pagination();
		pagination.setCurentPage(cPage);
		pagination.setPageSize(pSize);
		pagination.setKeyword(keyword);
		String data = activityRegistrationService
				.activityRegistrationPagination(pagination);
		return data;
	}

	@RequestMapping("/toAddActivityRegistration")
	public String toAddActivityRegistration(HttpServletRequest request,
			String id) throws Exception {
		if (id != null) {
			ActivityRegistration activityRegistration = activityRegistrationService
					.findActivityRegistrationById(id);
			request.setAttribute("activityRegistration", activityRegistration);
			request.setAttribute("msg", "修改");
			request.setAttribute("url", "updateActivityRegistrationById");
		} else {
			request.setAttribute("url", "insertActivityRegistration");
			request.setAttribute("msg", "添加");
		}
		return "backstage_managed/jsp/activityRegistration/add_activityRegistration";

	}

	@InitBinder
	protected void initBinder(WebDataBinder binder) {
		SimpleDateFormat dateFormat = new SimpleDateFormat(
				"yyyy-MM-dd");
		binder.registerCustomEditor(Date.class, new CustomDateEditor(
				dateFormat, true));
	}

	@RequestMapping("/insertActivityRegistration")
	public String insertActivityRegistration(
			@Validated ActivityRegistration activityRegistration,
			BindingResult result, HttpServletRequest request) {

		if (result.hasErrors()) {

			List<ObjectError> errors = result.getAllErrors();
			request.setAttribute("errors", errors);
			request.setAttribute("url", "insertActivityRegistration");
			request.setAttribute("msg", "添加");
			return "backstage_managed/jsp/activityRegistration/add_activityRegistration";

		}
		activityRegistrationService
				.insertActivityRegistration(activityRegistration);
		return "backstage_managed/jsp/activityRegistration/activityRegistration_list";

	}

	@RequestMapping("/updateActivityRegistrationById")
	public String updateActivityRegistrationById(
			ActivityRegistration activityRegistration) {
		activityRegistrationService
				.updateActivityRegistrationById(activityRegistration);
		return "backstage_managed/jsp/activityRegistration/activityRegistration_list";
	}

	@RequestMapping("/deleteActivityRegistrationById")
	@ResponseBody
	public String deleteActivityRegistrationById(String id) {
		activityRegistrationService.deleteActivityRegistrationById(id);
		return "success";

	}

	@RequestMapping("/findActivityRegistrationById")
	public String findActivityRegistrationById(HttpServletRequest request,
			String id) {
		ActivityRegistrationExpand activityRegistrationExpand = activityRegistrationService
				.findActivityRegistrationAndPersonalInformationAndActivities(id);
		request.setAttribute("activityRegistrationExpand",
				activityRegistrationExpand);
		return "backstage_managed/jsp/activityRegistration/search_activityRegistration";
	}
	/**
	 * 报名活动名称的回显
	 * @throws Exception 
	 * */
	@RequestMapping("/findActivityName")
	@ResponseBody
	public String findActivityName() throws Exception{
		String articleName=activitiesService.findActivityName();
		String branchData=typeService.findTypeByParentId("594cf09abc4c11e7aca65254002ec43c");
		Map<String,String> map=new HashedMap();
		map.put("articleName", articleName);
		map.put("branchData", branchData);
		String data=JSONArray.fromObject(map).toString();
		return data;
	}
	/**
	 * 报名活动数据的插入
	 * */
	@RequestMapping("/insertActivitiesInformation")
	public String insertActivitiesInformation(HttpServletRequest request,ActivityRegistrationExpand activityRegistrationExpand){
		User user=(User)request.getSession().getAttribute("user");
		String perId=user.getId();
		String telephone1=user.getTelephone();
		String telephone2=activityRegistrationExpand.getTelephone();
		if(telephone1.equals(telephone2)){
			user.setTelephone(telephone2);
			userService.updateUserById(user);
		}
		String activitiesId=activityRegistrationExpand.getActivitiesId();
		String remarks=activityRegistrationExpand.getRemarks();
		Date reservationDate=activityRegistrationExpand.getReservationDate();
		ActivityRegistration activityRegistration=new ActivityRegistration();
		activityRegistration.setPerId(perId);
		activityRegistration.setActivitiesId(activitiesId);
		activityRegistration.setRegistrationDate(new Date());
		activityRegistration.setRemarks(remarks);
		activityRegistration.setReservationDate(reservationDate);
		activityRegistrationService.insertActivityRegistration(activityRegistration);
		return "redirect:/";
	}
}
