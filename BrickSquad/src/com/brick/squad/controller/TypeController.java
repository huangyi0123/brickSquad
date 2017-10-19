package com.brick.squad.controller;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.brick.squad.pojo.Type;
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
  @RequestMapping("/toAddType")
  public String toAddType() {
	return "backstage_managed/jsp/type/add_type";
	
}
  
  @ResponseBody
  @RequestMapping("/findAllType")
  public String findAllType() {
	  return typeService.findAllType();
}
  
  @RequestMapping("/insertType")
  public String insertType(Type type,Date da) {
	  System.out.println(da);
	 // typeService.insertType(type);
	  return "backstage_managed/jsp/type/type_list";
	
}
}
