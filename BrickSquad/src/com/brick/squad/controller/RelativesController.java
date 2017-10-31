package com.brick.squad.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.brick.squad.expand.RelativesAndAddressExpand;
import com.brick.squad.pojo.Relatives;
import com.brick.squad.service.RelativesService;
import com.brick.squad.util.Pagination;

@RequestMapping("/relatives")
@Controller
public class RelativesController {
	@Autowired
	@Qualifier("relativesService")
	private RelativesService relativesService;

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
	public String toAddRelatives() {
		return "backstage_managed/jsp/relatives/add_relatives";
	}

	@RequestMapping("/AddRelatives")
	public String AddRelatives(Relatives relatives) {
		relativesService.insertRelatives(relatives);
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
