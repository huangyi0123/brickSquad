package com.brick.squad.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.brick.squad.pojo.Address;
import com.brick.squad.pojo.Buyers;
import com.brick.squad.service.AddressService;
import com.brick.squad.service.BuyersService;
import com.brick.squad.service.RegionService;
import com.brick.squad.util.Pagination;

@Controller
@RequestMapping(value="/buyers")
public class BuyersController {
	@Autowired
	@Qualifier("buyersService")
	private BuyersService buyersService;
	@Autowired
	@Qualifier("addressService")
	private AddressService addressService;
	@Autowired
	@Qualifier("regionService")
	private RegionService regionService;
	@RequestMapping(value="/toBuyersList")
	public String toBuyersList(){
		return "backstage_managed/jsp/buyers/buyers_list";
	}
	@RequestMapping(value="/toAddBuyers")
	public String toAddBuyers(HttpServletRequest request){
		String regionDataString = buyersService.findRegionsByLevel();
		request.setAttribute("regionDataString", regionDataString);
		
		return "backstage_managed/jsp/buyers/add_buyers";
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
	@RequestMapping(value="/insertBuyres")
	public String insertBuyres(Address address,Buyers buyers) throws Exception{
		buyersService.insertBuyers(address,buyers);
		return "backstage_managed/jsp/buyers/buyers_list";
	}
	@RequestMapping("/deleteBuyersById")
	public String deleteBuyersById(String id ) throws Exception{
		buyersService.deleteBuyersById(id);
		System.out.print(buyersService);
		return "backstage_managed/jsp/buyers/buyers_list";
	}
}
