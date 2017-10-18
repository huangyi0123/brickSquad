package com.brick.squad.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.brick.squad.service.BuyersService;
import com.brick.squad.util.Pagination;

@Controller
@RequestMapping(value="/buyers")
public class BuyersController {
	@Autowired
	@Qualifier("buyersService")
	private BuyersService buyersService;
	@RequestMapping(value="/toBuyersList")
	public String toBuyersList(){
		return "backstage_managed/jsp/buyers/buyers_list";
	}
	@RequestMapping(value="/getBuyersList")
	@ResponseBody
	public String getBuyersList(int pSize,int cPage,String keyword) throws Exception{
		Pagination pagination = new Pagination();
		pagination.setPageSize(pSize);
		pagination.setCurentPage(cPage);
		pagination.setKeyword(keyword);
		return buyersService.buyersPagination(pagination);
	}
}
