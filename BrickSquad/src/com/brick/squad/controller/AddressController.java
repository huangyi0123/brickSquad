package com.brick.squad.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.brick.squad.pojo.Address;
import com.brick.squad.pojo.Type;
import com.brick.squad.service.AddressService;
import com.brick.squad.util.Pagination;

@Controller
@RequestMapping("/address")
public class AddressController {
	@Autowired
	@Qualifier(value = "addressService")
	private AddressService addressService;

	@RequestMapping("/toAddressList")
	public String toAddressList() {
		return "backstage_managed/jsp/address/address_list";
	}

	@RequestMapping("/toAddress")
	public String toAddress(HttpServletRequest request,String id) throws Exception {
		String data=addressService.findRegionsByLevel();
		request.setAttribute("data", data);
		if (id != null) {
			request.setAttribute("msg", "修改");
			request.setAttribute("url", "updateAddressById");
			Address address = addressService.findAddressById(id);
			String regions=addressService.getAllRegion(address);
			request.setAttribute("regions", regions);
			request.setAttribute("address", address);
		} else {
			request.setAttribute("url", "inserAddress");
			request.setAttribute("address", "添加");
		}

		return "backstage_managed/jsp/address/add_address";
	}

	@RequestMapping(value = "/getAddressList")
	@ResponseBody
	// 返回json
	public String getAddressList(int pSize, int cPage, String keyword)
			throws Exception {
		Pagination pagination = new Pagination();
		pagination.setPageSize(pSize);
		pagination.setCurentPage(cPage);
		pagination.setKeyword(keyword);
		return addressService.addressPagination(pagination);
	}

	@RequestMapping(value = "/inserAddress")
	public String inserAddress(Address address) throws Exception {
		addressService.insertAddress(address);
		return "backstage_managed/jsp/address/address_list";
	}
	@RequestMapping("/findRegionsByParentId")
	@ResponseBody
	public String findRegionsByParentId(String pid) {
		return addressService.findRegionsByParentId(pid);
	}
	@RequestMapping("/updateAddressById")
	public String updateAddressById(Address address) throws Exception {
		addressService.updateAddressById(address);
		return "backstage_managed/jsp/address/address_list";
	}
	@RequestMapping("/deleteAddressById")
	@ResponseBody
	public String deleteAddressById(String id) throws Exception {
		addressService.deleteAddressById(id);
		return "success";
	}
}
