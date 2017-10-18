package com.brick.squad.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.brick.squad.service.TypeService;
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
  
  @RequestMapping("/getTypeList")
  @ResponseBody
  public String getTypeList(int pSize,int cPage,String keyword) {
	Pagination pagination=new Pagination();
	pagination.setCurentPage(cPage);
	pagination.setPageSize(pSize);
	String data=typeService.typePagination(pagination);
	return data;
}
}
