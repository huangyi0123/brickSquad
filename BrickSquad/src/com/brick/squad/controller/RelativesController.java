package com.brick.squad.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.brick.squad.expand.RelativesAndAddressAndTypeAndPersonExpand;
import com.brick.squad.pojo.Address;
import com.brick.squad.pojo.PersonalInformation;
import com.brick.squad.pojo.Relatives;
import com.brick.squad.pojo.Type;
import com.brick.squad.pojo.User;
import com.brick.squad.service.AddressService;
import com.brick.squad.service.PersonalInformationService;
import com.brick.squad.service.RegionService;
import com.brick.squad.service.RelativesService;
import com.brick.squad.service.TypeService;
import com.brick.squad.util.Pagination;

@RequestMapping("relatives")
@Controller
public class RelativesController {
	@Autowired
	@Qualifier("relativesService")
	private RelativesService relativesService;
	@Autowired
	@Qualifier("regionService")
	private RegionService regionService;
	@Autowired
	@Qualifier("typeService")
	private TypeService typeService;
	@Autowired
	@Qualifier("addressService")
	private AddressService addressService;
	@Autowired
	@Qualifier("personalInformationService")
	private PersonalInformationService personalInformationService;
	@RequestMapping("/toRelativesList")
	public String toRelativesList() {

		return "backstage_managed/jsp/relatives/relatives_list";
	}
	@RequestMapping("/getRelativesList")
	@ResponseBody
	public String getRelativesList(int pSize, int cPage, String keyword) {
		Pagination pagination = new Pagination();
		pagination.setKeyword(keyword);
		pagination.setCurentPage(cPage);
		pagination.setPageSize(pSize);
		return relativesService.relativesPagination(pagination);

	}

	/**
	 * 普通用户查看自己的亲属联系人
	 * @param pSize
	 * @param cPage
	 * @param keyword
	 * @return
	 * @throws Exception 
	 */
	@RequestMapping("/usergetRelativesList")
	@ResponseBody
	public String usergetRelativesList(HttpServletRequest request) throws Exception {
		User user =(User) request.getSession().getAttribute("user");
		return relativesService.usergetrelativesPagination(user.getId());

	}

	@RequestMapping("/searchRelatives")
	public String searchRelatives(HttpServletRequest request,String id) throws Exception{
				//查询出Type中的所有亲属关系
				Relatives relatives = relativesService.findRelativesById(id);
				Type type = typeService.findTypeById(relatives.getRelationshipId());
				String dataType = type.getName();
				request.setAttribute("dataType", dataType);
				//先将relatives中的所有信息查询出来
				
				//优先获取relatives中的AddressId,再执行Address中的查询，这样就能实现通过AddressId查询地址信息用于回显
				String address = addressService.findByIdAllAddress(relatives.getAddressId());
				request.setAttribute("address", address);
				//同理type表
			
				//同理person表
				PersonalInformation personalInformation=personalInformationService.findPersonalInformationById(relatives.getPerId());
				String perString = personalInformation.getName();
				request.setAttribute("perString", perString);
				RelativesAndAddressAndTypeAndPersonExpand relaAddressTypePerson
				= new RelativesAndAddressAndTypeAndPersonExpand();
				relaAddressTypePerson.setRelatives(relatives);
				//将对象放入request中传入jsp
				request.setAttribute("relaAddressTypePerson", relaAddressTypePerson);
				//查询出所有省信息用于回显
		return "backstage_managed/jsp/relatives/search_relatives";
	}
	/**
	 * 普通用户去添加或者修改页面
	 * @param request
	 * @param id
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/userToAddRelatives")
	public String userToAddRelatives(HttpServletRequest request,String id) throws Exception {
		//查询出region中的所有省份
		String dataRegion = regionService.findRegionByLevel(1);
		request.setAttribute("dataRegion", dataRegion);
		//查询出Type中的所有亲属关系
		String dataType = typeService.findTypeByParentId("qinshuguanxi");
		request.setAttribute("dataType", dataType);
		if (id!=null) {
			//先将relatives中的所有信息查询出来
			Relatives relatives = relativesService.findRelativesById(id);
			//优先获取relatives中的AddressId,再执行Address中的查询，这样就能实现通过AddressId查询地址信息用于回显
			Address address = addressService.findAddressById(relatives.getAddressId());
			//同理type表
			Type type = typeService.findTypeById(relatives.getRelationshipId());
			//同理person表
			PersonalInformation personalInformation=personalInformationService.findPersonalInformationById(relatives.getPerId());
			RelativesAndAddressAndTypeAndPersonExpand relaAddressTypePerson
			= new RelativesAndAddressAndTypeAndPersonExpand();
			//将上述查询出来的信息设置到拓展对象中
			relaAddressTypePerson.setAddress(address);
			relaAddressTypePerson.setPersonalInformation(personalInformation);
			relaAddressTypePerson.setRelatives(relatives);
			relaAddressTypePerson.setType(type);
			//将对象放入request中传入jsp
			request.setAttribute("relaAddressTypePerson", relaAddressTypePerson);
			//查询出所有省信息用于回显
			String allRegionResultById = addressService.getAllRegion(address);
			request.setAttribute("allRegionResultById", allRegionResultById);
			request.setAttribute("msg", "修改");
			request.setAttribute("url", "userUpdateRelativesByIdExend");
		}else{
			request.setAttribute("msg", "添加");
			request.setAttribute("url", "userInsertRelatives");
		}
		return "frontEnd_manage/person_information/user_add_relatives";
	}

	@RequestMapping("/toAddRelatives")
	public String toAddRelatives(RelativesAndAddressAndTypeAndPersonExpand relaAddressTypePerson,HttpServletRequest request,String id) throws Exception {
		//查询出region中的所有省份
		String dataRegion = regionService.findRegionByLevel(1);
		request.setAttribute("dataRegion", dataRegion);
		//查询出Type中的所有亲属关系
		String dataType = typeService.findTypeByParentId("qinshuguanxi");
		request.setAttribute("dataType", dataType);
		if (id!=null) {
			//先将relatives中的所有信息查询出来
			Relatives relatives = relativesService.findRelativesById(id);
			//优先获取relatives中的AddressId,再执行Address中的查询，这样就能实现通过AddressId查询地址信息用于回显
			Address address = addressService.findAddressById(relatives.getAddressId());
			//同理type表
			Type type = typeService.findTypeById(relatives.getRelationshipId());
			//同理person表
			PersonalInformation personalInformation=personalInformationService.findPersonalInformationById(relatives.getPerId());
			String perData = personalInformation.getName();
			request.setAttribute("perData", perData);
			//将上述查询出来的信息设置到拓展对象中
			relaAddressTypePerson.setAddress(address);
			relaAddressTypePerson.setPersonalInformation(personalInformation);
			relaAddressTypePerson.setRelatives(relatives);
			relaAddressTypePerson.setType(type);
			//将对象放入request中传入jsp
			request.setAttribute("relaAddressTypePerson", relaAddressTypePerson);
			//查询出所有省信息用于回显
			String allRegionResultById = addressService.getAllRegion(address);
			request.setAttribute("allRegionResultById", allRegionResultById);
			request.setAttribute("msg", "修改");
			request.setAttribute("url", "updateRelativesByIdExend");
		
		}else{
			request.setAttribute("msg", "添加");
			request.setAttribute("url", "insertRelatives");
		}
		return "backstage_managed/jsp/relatives/add_relatives";
	}

	@RequestMapping("/insertRelatives")
	public String insertRelatives(@Validated RelativesAndAddressAndTypeAndPersonExpand relativesAndAddressAndTypeAndPersonExpand,BindingResult bindingResult,
			HttpServletRequest request) {
			if(bindingResult.hasErrors()){
				List<ObjectError> errors = bindingResult.getAllErrors();
				request.setAttribute("errors", errors);
				//查询出region中的所有省份
				String dataRegion = regionService.findRegionByLevel(1);
				request.setAttribute("dataRegion", dataRegion);
				//查询出Type中的所有亲属关系
				String dataType = typeService.findTypeByParentId("qinshuguanxi");
				request.setAttribute("dataType", dataType);
				request.setAttribute("msg", "添加");
				request.setAttribute("url", "insertRelatives");
				return "backstage_managed/jsp/relatives/add_relatives";
			}
		relativesService.insertRelatives(relativesAndAddressAndTypeAndPersonExpand);
		return "backstage_managed/jsp/relatives/relatives_list";
	}
	/**
	 * 普通用户添加亲属联系人
	 * @param relativesAndAddressAndTypeAndPersonExpand
	 * @param bindingResult
	 * @param request
	 * @return
	 */
	@RequestMapping("/userInsertRelatives")
	public String userInsertRelatives(@Validated RelativesAndAddressAndTypeAndPersonExpand relativesAndAddressAndTypeAndPersonExpand,BindingResult bindingResult,
			HttpServletRequest request) {
			if(bindingResult.hasErrors()){
				List<ObjectError> errors = bindingResult.getAllErrors();
				request.setAttribute("errors", errors);
				//查询出region中的所有省份
				String dataRegion = regionService.findRegionByLevel(1);
				request.setAttribute("dataRegion", dataRegion);
				//查询出Type中的所有亲属关系
				String dataType = typeService.findTypeByParentId("qinshuguanxi");
				request.setAttribute("dataType", dataType);
				request.setAttribute("msg", "添加");
				request.setAttribute("url", "userInsertRelatives");
				return "frontEnd_manage/person_information/user_add_relatives";
			}
		relativesService.insertRelatives(relativesAndAddressAndTypeAndPersonExpand);
		request.setAttribute("tabflag", "2");
		request.setAttribute("url", "common/toPersonal");
		return "frontEnd_manage/util/turn";
	}
	/**
	 * 普通用户根据拓展类id修改Relatives表
	 * @return
	 * @throws Exception 
	 */
	@RequestMapping("userUpdateRelativesByIdExend")
	public String userUpdateRelativesByIdExend(HttpServletRequest request,@Validated RelativesAndAddressAndTypeAndPersonExpand relativesAndAddressAndTypeAndPersonExpand,BindingResult bindingResult) throws Exception{
		
		if(bindingResult.hasErrors()){
			List<ObjectError> errors = bindingResult.getAllErrors();
			request.setAttribute("errors", errors);
			String id =relativesAndAddressAndTypeAndPersonExpand.getRelatives().getId();
			if (id!=null) {
				//先将relatives中的所有信息查询出来
				Relatives relatives = relativesService.findRelativesById(id);
				//优先获取relatives中的AddressId,再执行Address中的查询，这样就能实现通过AddressId查询地址信息用于回显
				Address address = addressService.findAddressById(relatives.getAddressId());
				//同理type表
				Type type = typeService.findTypeById(relatives.getRelationshipId());
				//同理person表
				PersonalInformation personalInformation=personalInformationService.findPersonalInformationById(relatives.getPerId());
				RelativesAndAddressAndTypeAndPersonExpand relaAddressTypePerson
				= new RelativesAndAddressAndTypeAndPersonExpand();
				//将上述查询出来的信息设置到拓展对象中
				relaAddressTypePerson.setAddress(address);
				relaAddressTypePerson.setPersonalInformation(personalInformation);
				relaAddressTypePerson.setRelatives(relatives);
				relaAddressTypePerson.setType(type);
				//将对象放入request中传入jsp
				request.setAttribute("relaAddressTypePerson", relaAddressTypePerson);
				//查询出所有省信息用于回显
				String allRegionResultById = addressService.getAllRegion(address);
				request.setAttribute("allRegionResultById", allRegionResultById);
				request.setAttribute("msg", "修改");
				request.setAttribute("url", "userUpdateRelativesByIdExend");
			}else{
				request.setAttribute("msg", "添加");
				request.setAttribute("url", "userInsertRelatives");
			}
			return "frontEnd_manage/person_information/user_add_relatives";
		}
		relativesService.updateRelativesByIdExend(relativesAndAddressAndTypeAndPersonExpand);
		
		request.setAttribute("tabflag", 2);
		request.setAttribute("url", "common/toPersonal");
		return "frontEnd_manage/util/turn";
	}
	@RequestMapping("/deleteRelativesById")
	public String deleteRelativesById(String id){
		relativesService.userDeleteRelativesById(id);
		return "backstage_managed/jsp/relatives/relatives_list";
	}
	/**
	 * 普通用户删除亲属联系人
	 * @param id
	 * @return
	 */
	@RequestMapping("/userDeleteRelativesById")
	@ResponseBody
	public String userDeleteRelativesById(String id){
		relativesService.userDeleteRelativesById(id);
		return "suc";
	} 
	
	/**
	 * 根据拓展类id修改Relatives表
	 * @return
	 */
	@RequestMapping("updateRelativesByIdExend")
	public String updateRelativesByIdExend(@Validated RelativesAndAddressAndTypeAndPersonExpand relaAddressTypePerson,
			BindingResult bindingResult,HttpServletRequest request) throws Exception{
		if(bindingResult.hasErrors()){
			List<ObjectError> errors = bindingResult.getAllErrors();
			request.setAttribute("errors", errors);
			String id =relaAddressTypePerson.getRelatives().getId();
			String dataRegion = regionService.findRegionByLevel(1);
			request.setAttribute("dataRegion", dataRegion);
			//查询出Type中的所有亲属关系
			String dataType = typeService.findTypeByParentId("qinshuguanxi");
			request.setAttribute("dataType", dataType);
			if (id!=null) {
				//先将relatives中的所有信息查询出来
				Relatives relatives = relativesService.findRelativesById(id);
				//优先获取relatives中的AddressId,再执行Address中的查询，这样就能实现通过AddressId查询地址信息用于回显
				Address address = addressService.findAddressById(relatives.getAddressId());
				//同理type表
				Type type = typeService.findTypeById(relatives.getRelationshipId());
				//同理person表
				PersonalInformation personalInformation=personalInformationService.findPersonalInformationById(relatives.getPerId());
				String perData = personalInformation.getName();
				request.setAttribute("perData", perData);
				//将上述查询出来的信息设置到拓展对象中
				relaAddressTypePerson.setAddress(address);
				relaAddressTypePerson.setPersonalInformation(personalInformation);
				relaAddressTypePerson.setRelatives(relatives);
				relaAddressTypePerson.setType(type);
				//将对象放入request中传入jsp
				request.setAttribute("relaAddressTypePerson", relaAddressTypePerson);
				//查询出所有省信息用于回显
				String allRegionResultById = addressService.getAllRegion(address);
				request.setAttribute("allRegionResultById", allRegionResultById);
				request.setAttribute("msg", "修改");
				request.setAttribute("url", "updateRelativesByIdExend");
			
			}else{
				request.setAttribute("msg", "添加");
				request.setAttribute("url", "insertRelatives");
			}
			return "backstage_managed/jsp/relatives/add_relatives";
		}
		relativesService.updateRelativesByIdExend(relaAddressTypePerson);
		return "backstage_managed/jsp/relatives/relatives_list";
	}



}
