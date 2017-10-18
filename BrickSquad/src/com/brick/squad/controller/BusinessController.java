package com.brick.squad.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.brick.squad.service.BusinessService;
import com.brick.squad.util.Pagination;

@Controller
@RequestMapping("/business")
public class BusinessController {
   @Autowired
   @Qualifier("businessService")
   private BusinessService businessService;
   
   @RequestMapping("/toBusiness")
   public String toBusiness(){
	   return "backstage_managed/jsp/Business/business_list";
   }
   
   @RequestMapping("/getbusinessList")
   @ResponseBody
   public String getbusinessList(int pSize,int cPage,String keyword) {
	Pagination pagination=new Pagination();
	pagination.setCurentPage(cPage);
	pagination.setPageSize(pSize);
	String data=businessService.businessPagination(pagination);
	return data;
}
}