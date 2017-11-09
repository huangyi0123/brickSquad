package com.brick.squad.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.brick.squad.expand.AddressAndBuyersExpand;
import com.brick.squad.pojo.Address;
import com.brick.squad.pojo.Buyers;
import com.brick.squad.pojo.PersonalInformation;
import com.brick.squad.service.AddressService;
import com.brick.squad.service.BuyersService;
import com.brick.squad.service.PersonalInformationService;
import com.brick.squad.service.RegionService;
import com.brick.squad.service.TypeService;
import com.brick.squad.util.Pagination;

@Controller
@RequestMapping(value="buyers")
public class BuyersController {
	@Autowired
	@Qualifier("buyersService")
	private BuyersService buyersService;
	@Autowired
	@Qualifier("addressService")
	private AddressService addressService;
	@Autowired
	@Qualifier("personalInformationService")
	private PersonalInformationService personalInformationService;
	@Autowired
	@Qualifier("regionService")
	private RegionService regionService;
	@Autowired
	@Qualifier("typeService")
	private TypeService typeService;
	@RequestMapping(value="/toBuyersList")
	public String toBuyersList(){
		return "backstage_managed/jsp/buyers/buyers_list";
	}
	@RequestMapping("/toAddBuyers")
	public String toAddBuyers(HttpServletRequest request,String id) throws Exception{
		String regionDataString = buyersService.findRegionsByLevel();
		request.setAttribute("regionDataString", regionDataString);
		String data=typeService.findTypeByParentId("hyjb");
		request.setAttribute("typeData", data);
		if(id!=null){
			Buyers buyers = buyersService.findBuyersByUUID(id);
			Address address = addressService.findAddressById(buyers.getDeliveryAddressId());
			AddressAndBuyersExpand addressAndBuyersExpand=new AddressAndBuyersExpand();
			addressAndBuyersExpand.setAddress(address);
			addressAndBuyersExpand.setBuyers(buyers);
			request.setAttribute("addressAndBuyersExpand",addressAndBuyersExpand );
			String allRegionResultById = addressService.getAllRegion(address);
			request.setAttribute("allRegionResultById", allRegionResultById);
			request.setAttribute("Grade",addressAndBuyersExpand.getBuyers().getGrade());
			request.setAttribute("msg","修改");
			request.setAttribute("url", "updateBuyersById");
			return "backstage_managed/jsp/buyers/add_buyers";
		}else {
			request.setAttribute("msg", "添加");
			request.setAttribute("url", "insertBuyres");
			return "backstage_managed/jsp/buyers/add_buyers";
		}
			
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
	public String insertBuyres(AddressAndBuyersExpand addressAndBuyersExpand) throws Exception{
		buyersService.insertBuyers(addressAndBuyersExpand);
		return "backstage_managed/jsp/buyers/buyers_list";
	}
	@RequestMapping("/deleteBuyersById")
	public String deleteBuyersById(String id ) throws Exception{
		buyersService.deleteBuyersById(id);
		return "backstage_managed/jsp/buyers/buyers_list";
	}
	@RequestMapping("/updateBuyersById")
	public String updateBuyers(AddressAndBuyersExpand addressAndBuyersExpand) throws Exception{
		System.out.println(addressAndBuyersExpand.getBuyers().getId()+"11111111111");
		buyersService.updateBuyersById(addressAndBuyersExpand);
		return "backstage_managed/jsp/buyers/buyers_list";
	}
	@RequestMapping("/findBuyersByIdString")
	public String findBuyersByIdString(HttpServletRequest request,String id) throws Exception{

		Buyers buyers = buyersService.findBuyersByUUID(id);
		PersonalInformation personalInformation=personalInformationService.findPersonalInformationById(buyers.getId());
		String perString = personalInformation.getName();
		request.setAttribute("perString", perString);
		String address = addressService.findByIdAllAddress(buyers.getDeliveryAddressId());
		AddressAndBuyersExpand addressAndBuyersExpand=new AddressAndBuyersExpand();
		request.setAttribute("address", address);
		addressAndBuyersExpand.setBuyers(buyers);
		request.setAttribute("addressAndBuyersExpand",addressAndBuyersExpand );

		return "backstage_managed/jsp/buyers/search_buyers";
	}
}
