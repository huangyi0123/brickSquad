package com.brick.squad.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.objenesis.instantiator.perc.PercSerializationInstantiator;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.brick.squad.expand.RelativesAndAddressAndTypeAndPersonExpand;
import com.brick.squad.expand.RelativesAndAddressExpand;
import com.brick.squad.pojo.Address;
import com.brick.squad.pojo.PersonalInformation;
import com.brick.squad.pojo.Relatives;
import com.brick.squad.pojo.Type;
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

	@RequestMapping("/toAddRelatives")
	public String toAddRelatives(HttpServletRequest request,String id) throws Exception {
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
			request.setAttribute("url", "updateRelativesByIdExend");
		}else{
			request.setAttribute("msg", "添加");
			request.setAttribute("url", "insertRelatives");
		}
		return "backstage_managed/jsp/relatives/add_relatives";
	}

	@RequestMapping("/insertRelatives")
	public String insertRelatives(RelativesAndAddressAndTypeAndPersonExpand relativesAndAddressAndTypeAndPersonExpand,BindingResult bindingResult,
			HttpServletRequest request) {
		if( relativesAndAddressAndTypeAndPersonExpand.getRelatives()!=null){
			if(bindingResult.hasErrors()){
				List<ObjectError> errors = bindingResult.getAllErrors();
				request.setAttribute("errors", errors);
				return "backstage_managed/jsp/relatives/add_relatives";
			}
		}
		relativesService.insertRelatives(relativesAndAddressAndTypeAndPersonExpand);
		return "backstage_managed/jsp/relatives/relatives_list";
	}
	@RequestMapping("/deleteRelativesById")
	public String deleteRelativesById(String id){
		relativesService.deleteRelativesById(id);
		return "backstage_managed/jsp/relatives/relatives_list";
	}
	/**
	 * 根据拓展类id修改Relatives表
	 * @return
	 */
	@RequestMapping("updateRelativesByIdExend")
	public String updateRelativesByIdExend(RelativesAndAddressAndTypeAndPersonExpand relativesAndAddressAndTypeAndPersonExpand){
		relativesService.updateRelativesByIdExend(relativesAndAddressAndTypeAndPersonExpand);
		return "backstage_managed/jsp/relatives/relatives_list";
	}

	/**
	 * 用户完善亲属联系信息
	 * 
	 * @return
	 * @throws Exception 
	 */
	@RequestMapping("/userUpdateRelatives")
	public String userUpdateRelatives(RelativesAndAddressExpand relativesAndAddressExpand) throws Exception {
		relativesService.userUpdateRelatives(relativesAndAddressExpand);
		return "redirect:/common/toPersonal";
	}
}
