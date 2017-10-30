package com.brick.squad.controller;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import net.sf.json.JSONObject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.brick.squad.expand.AddressAndPersonaInformationExpand;
import com.brick.squad.pojo.Address;
import com.brick.squad.pojo.Medical;
import com.brick.squad.pojo.PersonalInformation;
import com.brick.squad.service.AddressService;
import com.brick.squad.service.PersonalInformationService;
import com.brick.squad.util.Pagination;

/**
 * 个人信息controller
 * 
 * @author 吴文鑫
 * 
 */
@Controller
@RequestMapping("/personalInformation")
public class PersonalInformationController {
	@Autowired
	@Qualifier("personalInformationService")
	private PersonalInformationService personalInformationService;
	@Autowired
	@Qualifier("addressService")
	private AddressService addressService;

	/**
	 * 跳转到分页显示页
	 * 
	 * @return
	 */
	@RequestMapping("/toPersonalInformation")
	public String toPersonalInformation() {
		return "backstage_managed/jsp/personal_Information/personal_Information_list";
	}

	/**
	 * 分页查询
	 * 
	 * @param pSize
	 *            页面大小
	 * @param cPage
	 *            当前页
	 * @param keyword
	 *            关键字
	 * @return 页面分页需要的参数
	 */
	@RequestMapping("/getPersonalInformationList")
	@ResponseBody
	public String getPersonalInformationList(int pSize, int cPage,
			String keyword) {
		Pagination pagination = new Pagination();
		pagination.setKeyword(keyword);
		pagination.setCurentPage(cPage);
		pagination.setPageSize(pSize);
		String data = personalInformationService
				.personalInformationPagination(pagination);
		return data;
	}

	/**
	 * 跳转去修改PersonalInformation页面
	 * 
	 * @param request
	 *            存放修改需要的一些参数 省份 民族 地址 个人信息
	 * @param id
	 *            页面需要修改传来的ID
	 * @return 修改PersonalInformation页面
	 * @throws Exception
	 */
	@RequestMapping("/toUpdatePersonalInformation")
	public String toUpdatePersonalInformation(HttpServletRequest request,
			String id) throws Exception {
		String provinceData = personalInformationService.findRegionsByLevel();
		request.setAttribute("provinceData", provinceData);
		String nationData = personalInformationService.findTypesByParentId();
		request.setAttribute("nationData", nationData);
		if (id != null) {
			request.setAttribute("msg", "修改");
			request.setAttribute("url", "updatePersonalInformationById");
			PersonalInformation personalInformation = personalInformationService
					.findPersonalInformationById(id);
			request.setAttribute("personalInformation", personalInformation);
			Address address = personalInformationService
					.findAddressById(personalInformation.getAddressId());
			request.setAttribute("address", address);
			String allRegionResultById = addressService.getAllRegion(address);
			request.setAttribute("allRegionResultById", allRegionResultById);

		} else {
			return "backstage_managed/jsp/personal_Information/add_personal_Information";
		}

		return "backstage_managed/jsp/personal_Information/update_personal_Information";
	}

	/**
	 * 跳转到新增页面
	 * 
	 * @param request
	 *            页面需要的参数 民族 地址信息等
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/toAddPersonalInformation")
	public String toAddPersonalInformation(HttpServletRequest request)
			throws Exception {

		String provinceData = personalInformationService.findRegionsByLevel();
		request.setAttribute("provinceData", provinceData);
		String nationData = personalInformationService.findTypesByParentId();
		request.setAttribute("nationData", nationData);
		return "backstage_managed/jsp/personal_Information/add_personal_Information";
	}

	/**
	 * 处理页面传来的日期格式
	 * 
	 * @param binder
	 */
	@InitBinder
	protected void initBinder(WebDataBinder binder) {
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		binder.registerCustomEditor(Date.class, new CustomDateEditor(
				dateFormat, true));
	}
/**
 * 新增个人信息
 * @param address 地址
 * @param personalInformation 个人信息
 * @return 分页显示页面
 */
	@RequestMapping("/addPersonalInformation")
	public String addPersonalInformation(AddressAndPersonaInformationExpand addressAndPersonaInformationExpand) {
		personalInformationService.insertPersonalInformation(addressAndPersonaInformationExpand);
		return "backstage_managed/jsp/personal_Information/personal_Information_list";
	}

	@RequestMapping("/findAllPersonalInformation")
	@ResponseBody
	public String findAllPersonalInformation() {
		return personalInformationService.findAllPersonalInformation();
	}

	/**
	 * 修改PersonalInformation
	 * 
	 * @param addressAndPersonaInformationExpand
	 *            扩展类
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/updatePersonalInformationById")
	public String updatePersonalInformation(
			AddressAndPersonaInformationExpand addressAndPersonaInformationExpand)
			throws Exception {
		// 先修改地址信息
		addressService.updateAddressById(addressAndPersonaInformationExpand
				.getAddress());

		personalInformationService
				.updatePersonalInformationById(addressAndPersonaInformationExpand
						.getPersonalInformation());
		return "backstage_managed/jsp/personal_Information/personal_Information_list";
	}
/**
 * 删除PersonalInformation
 * @param PersonalInformation的id
 * @return 状态参数
 */
	@RequestMapping("/deletePersonalInformationById")
	@ResponseBody
	public String deletePersonalInformationById(String id) {
		personalInformationService.deletePersonalInformationById(id);
		return "success";
	}

}
