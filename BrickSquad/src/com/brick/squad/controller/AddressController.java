package com.brick.squad.controller;

import net.sf.json.JSONObject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.brick.squad.pojo.Address;
import com.brick.squad.service.AddressService;
import com.brick.squad.util.Pagination;

@Controller
@RequestMapping("/address")
public class AddressController {
	@Autowired
	@Qualifier(value="addressService")
	private AddressService addressService;
	@RequestMapping("/toAddressList")
	public String toAddressList(){
		return "backstage_managed/jsp/address/address_list";
	}
	@RequestMapping("/toAddAddress")
	public String toAddAddress(){
		return "backstage_managed/jsp/address/add_address";
	}
	@RequestMapping(value="/getAddressList")
	@ResponseBody//返回json
	public String getAddressList(int pSize,int cPage,String keyword) throws Exception{
		Pagination pagination = new Pagination();
		pagination.setPageSize(pSize);
		pagination.setCurentPage(cPage);
		pagination.setKeyword(keyword);
		return addressService.addressPagination(pagination);
	}
	@RequestMapping(value="/inserAddress")
	public String inserAddress(Address address) throws Exception{
		addressService.insertAddress(address);
		return "backstage_managed/jsp/address/address_list";
	}
	
/*	@RequestMapping(value="findAddressById")
	@ResponseBody
	public String getfindAddressById(String id) throws Exception{
		Address address = addressService.findAddressById("2a98dcf4b35b11e78d4f5254002ec43c");
		JSONObject jsonObject = JSONObject.fromObject(address);
		String data = jsonObject.toString();
		System.out.print(data);
		return data;
	}*/
}
