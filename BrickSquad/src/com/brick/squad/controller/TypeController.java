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

import com.brick.squad.pojo.Type;
import com.brick.squad.service.TypeService;
import com.brick.squad.util.PageBeanUtil;
import com.brick.squad.util.Pagination;

@Controller
@RequestMapping("/type")
public class TypeController {
	@Autowired
	@Qualifier("typeService")
	private TypeService typeService;

	@RequestMapping("/toType")
	public String toType() {
		return "backstage_managed/jsp/type/type_list";

	}

	@ResponseBody
	@RequestMapping("/findTypeByParentId")
	public String findTypeByParentId(String parentId) {
		return typeService.findTypeByParentId(parentId);
	}

	@RequestMapping("/getTypeList")
	@ResponseBody
	public String getTypeList(int pSize, int cPage, String keyword,HttpServletRequest request) {
		Pagination pagination = new Pagination();
		pagination.setCurentPage(cPage);
		pagination.setPageSize(pSize);
		pagination.setKeyword(keyword);
		pagination.setRoleId(request.getSession().getAttribute("roleId").toString());
		String data = typeService.typePagination(pagination);
		return data;
	}

	@RequestMapping("/toAddType")
	public String toAddType(HttpServletRequest request, String id) {
		if (id != null) {
			request.setAttribute("msg", "修改");
			request.setAttribute("url", "updateTypeById");
			Type type = typeService.findTypeById(id);
			request.setAttribute("type", type);
		} else {
			request.setAttribute("url", "insertType");
			request.setAttribute("msg", "添加");
		}

		return "backstage_managed/jsp/type/add_type";

	}

	@ResponseBody
	@RequestMapping("/findAllType")
	public String findAllType() {
		return typeService.findAllType();
	}

	@RequestMapping("/insertType")
	public String insertType(@Validated Type type, BindingResult result,
			HttpServletRequest request) {
		if (result.hasErrors()) {
			List<ObjectError> errors = result.getAllErrors();
			request.setAttribute("errors", errors);
			request.setAttribute("url", "insertType");
			request.setAttribute("msg", "添加");
			return "backstage_managed/jsp/type/add_type";
		}
		typeService.insertType(type);
		return "backstage_managed/jsp/type/type_list";

	}

	@RequestMapping("/updateTypeById")
	public String updateTypeById(Type type) {
		typeService.updateTypeById(type);
		return "backstage_managed/jsp/type/type_list";
	}

	@RequestMapping("/deleteTypeById")
	@ResponseBody
	public String deleteTypeById(String id) {
		typeService.deleteTypeById(id);
		return "success";
	}
	@RequestMapping("/searchContent")
	public String searchContent(HttpServletRequest request,String type,PageBeanUtil  pageBean) throws Exception{
		request.setAttribute("type", type);
		System.out.println("==========="+pageBean.getSearch());
		PageBeanUtil<Type> pageBean1=typeService.searchName(pageBean.getPage(), pageBean.getSearch());
		request.setAttribute("pageBean", pageBean1);
		return "offical_website/search-template";
	}
}
