package com.brick.squad.controller;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

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
import org.springframework.web.multipart.MultipartFile;

import com.brick.squad.expand.ActivitiesExpand;
import com.brick.squad.pojo.Activities;
import com.brick.squad.pojo.ShopActivities;
import com.brick.squad.service.ActivitiesService;
import com.brick.squad.util.PageBeanUtil;
import com.brick.squad.util.Pagination;

@RequestMapping("/activities")
@Controller
public class ActivitiesController {

	@Autowired
	@Qualifier("activitiesService")
	private ActivitiesService activitiesService;

	@RequestMapping("/toActivitiesList")
	public String toActivitiesList() {
		return "backstage_managed/jsp/activities/activities_list";

	}

	@RequestMapping("/getActivitiesList")
	@ResponseBody
	public String getActivitiesList(int pSize, int cPage, String keyword) {
		Pagination pagination = new Pagination();
		pagination.setCurentPage(cPage);
		pagination.setPageSize(pSize);
		pagination.setKeyword(keyword);
		return activitiesService.activitiesPagination(pagination);
	}

	@RequestMapping("/toAddActivities")
	public String toAddActivities(HttpServletRequest request, String id)
			throws Exception {
		if (id != null) {
			request.setAttribute("msg", "修改");
			request.setAttribute("url", "updateActivitiesById");

			Activities activities = activitiesService.findActivitiesById(id);
			request.setAttribute("activities", activities);
		} else {
			request.setAttribute("url", "addActivities");
			request.setAttribute("msg", "添加");
		}

		return "backstage_managed/jsp/activities/add_activities";

	}

	// 验证
	@RequestMapping("/addActivities")
	public String addActivities(@Validated Activities activities,
			BindingResult result, HttpServletRequest request,
			MultipartFile files) throws Exception {
		if (result.hasErrors()) {
			List<ObjectError> errors = result.getAllErrors();
			request.setAttribute("errors", errors);
			request.setAttribute("url", "addActivities");
			request.setAttribute("msg", "添加");
			return "backstage_managed/jsp/activities/add_activities";
		}
		if (files != null) {
			// 获取图片要保存的到的服务器路径
			String realPath = "resource/movie/activities/";
			String path = request.getSession().getServletContext()
					.getRealPath(realPath);
			// 获取当前文件名
			String filName = files.getOriginalFilename();
			// 获取当前文件的后缀名
			String fileSuffixName = filName.substring(filName.lastIndexOf("."));
			// 如果后缀名为mp4、mpg、avi、f4v,才允许上传
			if (fileSuffixName.equals(".mp4") || fileSuffixName.equals(".mpg")
					|| fileSuffixName.equals(".avi")
					|| fileSuffixName.equals(".f4v")
					|| fileSuffixName.equals(".MP4") ) {
				
				//  创建文件类型对象: 
				File file = new File(path, filName);
				if (!file.exists()) {
					file.mkdirs();
				}
				files.transferTo(file);
				activities.setMovie(filName);
				
			} else {
				List<ObjectError> errors = result.getAllErrors();
				request.setAttribute("errors", errors);
				request.setAttribute("url", "addActivities");
				request.setAttribute("msg", "添加");
				return "backstage_managed/jsp/activities/add_activities";
			}
		} else {
			List<ObjectError> errors = result.getAllErrors();
			request.setAttribute("errors", errors);
			request.setAttribute("url", "addActivities");
			request.setAttribute("msg", "添加");
			return "backstage_managed/jsp/activities/add_activities";
		}
		 activitiesService.insertActivitiesById(activities); 
		 System.out.println(activities.getMovie());
		return "backstage_managed/jsp/activities/activities_list";
	}

	@InitBinder
	protected void initBinder(WebDataBinder binder) {
		SimpleDateFormat dateFormat = new SimpleDateFormat(
				"yyyy-MM-dd HH:mm:ss");
		binder.registerCustomEditor(Date.class, new CustomDateEditor(
				dateFormat, true));
	}

	@RequestMapping("/deleteActivitiesById")
	@ResponseBody
	public String deleteActivitiesById(String id) throws Exception {
		activitiesService.deleteActivitiesById(id);
		return "success";
	}

	@RequestMapping("/findAllActivities")
	@ResponseBody
	public String findAllActivities() {
		return activitiesService.findAllActivities();
	}

	@RequestMapping("/updateActivitiesById")
	public String updateActivitiesById(@Validated Activities activities,
			BindingResult result, HttpServletRequest request) throws Exception {
		if (result.hasErrors()) {
			List<ObjectError> errors = result.getAllErrors();
			request.setAttribute("errors", errors);
			request.setAttribute("url", "updateActivitiesById");
			request.setAttribute("msg", "修改");
			return "backstage_managed/jsp/activities/add_activities";
		}
		activitiesService.updateActivitiesById(activities);
		return "backstage_managed/jsp/activities/activities_list";

	}

	@RequestMapping("/findActivitiesById")
	public String findActivitiesById(HttpServletRequest request, String id) {
		ActivitiesExpand activitiesExpand = activitiesService
				.findActivitiesAndTpyeAndUser(id);
		request.setAttribute("activitiesExpand", activitiesExpand);
		return "backstage_managed/jsp/activities/search_activities";

	}

	/*
	 * 获取活动id和所有活动名称
	 */
	@RequestMapping("/findAllActivitiesIdAndName")
	@ResponseBody
	public String findAllActivitiesIdAndName() {
		return activitiesService.findAllActivitiesIdAndName();
	}

	@RequestMapping("/findAllTypeAndUser")
	@ResponseBody
	public String findAllTypeAndUser() {
		return activitiesService.findAllTypeAndUser();
	}
	/**
	 * 根据关键字模糊查询活动名称
	 * @throws Exception 
	 * */
	@RequestMapping("/findActivitesName")
	public String findActivitesName(HttpServletRequest request,PageBeanUtil pageBean) throws Exception{
		String type="aboutus-intro";
		int page=pageBean.getPage();
		String search=pageBean.getSearch();
		PageBeanUtil<Activities> paBean= activitiesService.findActivitesName(page, search);
		request.setAttribute("pageBean", paBean);
		request.setAttribute("type", type);
		request.setAttribute("findActivitesName", "findActivitesName");
		return "offical_website/search-template";
	}

}