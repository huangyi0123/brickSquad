package com.brick.squad.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.brick.squad.expand.AddressAndPersonaInformationExpand;
import com.brick.squad.expand.RelativesAndAddressExpand;
import com.brick.squad.pojo.Address;
import com.brick.squad.pojo.PersonalInformation;
import com.brick.squad.pojo.Relatives;
import com.brick.squad.pojo.User;
import com.brick.squad.service.AddressService;
import com.brick.squad.service.PersonalInformationService;
import com.brick.squad.service.RegionService;
import com.brick.squad.service.RelativesService;
import com.brick.squad.util.UpLoadFile;

@Controller
@RequestMapping("/common")
public class CommonController {
	@RequestMapping("/toFrame")
	public String toFrame() {
		return "backstage_managed/jsp/frame";
	}

	@RequestMapping("/toIndex")
	public String toIndex() {
		return "redirect:/";
	}

	@RequestMapping("/toIndexModal")
	public String toIndexModal() {
		return "frontEnd_manage/util/turn";
	}

	@RequestMapping("/uploadImg")
	@ResponseBody
	public String uploadImg(MultipartFile file, HttpServletRequest request) {
		UpLoadFile upLoadFile = new UpLoadFile();
		List<String> list = new ArrayList<String>();
		String realPath = "resource/image/news/";
		String path = request.getSession().getServletContext()
				.getRealPath(realPath);
		String name = file.getOriginalFilename();
		String pix = name.substring(name.lastIndexOf("."));
		String fileName = new Date().getTime() + pix;
		list.add(realPath + fileName);
		upLoadFile.setData(list);
		File file1 = new File(path, fileName);
		if (!file1.exists()) {
			file1.mkdirs();
		}
		try {
			file.transferTo(file1);
			upLoadFile.setErrno(0);
		} catch (IllegalStateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return upLoadFile.toJson();
	}

	@RequestMapping("/businessIndex")
	public String businessIndex() {
		return "frontEnd_manage/business/business";
	}

	@Autowired
	@Qualifier("regionService")
	private RegionService regionService;
	@Autowired
	@Qualifier("personalInformationService")
	private PersonalInformationService personalInformationService;
	@Autowired
	@Qualifier("addressService")
	private AddressService addressService;
	@Autowired
	@Qualifier("relativesService")
	private RelativesService relativesService;

	@RequestMapping("/toPersonal")
	public String toPersonal(HttpServletRequest request) throws Exception {
		User user = (User) request.getSession().getAttribute("user");
		if (user != null) {
			// 进入用户个人信息页面前，先查询region中的所有省份，省份下拉框要用
			String provinceData = personalInformationService
					.findRegionsByLevel();
			request.setAttribute("provinceData", provinceData);
			// 获得当前用户ID
			String id = user.getId();
			// 实例化AddressAndPersonaInformationExpand扩展类
			AddressAndPersonaInformationExpand addressAndPersonaInformationExpand = new AddressAndPersonaInformationExpand();

			// 根据ID查询personalInformation，放在addressAndPersonaInformationExpand
			PersonalInformation personalInformation = personalInformationService
					.findPersonalInformationById(id);
			addressAndPersonaInformationExpand
					.setPersonalInformation(personalInformation);
			if (personalInformation.getAddressId() != null&&personalInformation.getAddressId().length()>0) {
				// start
				// 根据ID查询信息，得到信息中的地址ID，再根据ID查询address，分别用address中存的ID去region中查询相对应的地区，封装成json字符串，用页面地址回填
				Address address = personalInformationService
						.findAddressById(personalInformation.getAddressId());
				addressAndPersonaInformationExpand.setAddress(address);
				String allRegionResultById = addressService
						.getAllRegion(address);
				request.setAttribute("allRegionResultById", allRegionResultById);
				// end
				
			}

			request.setAttribute("addressAndPersonaInformationExpand",
					addressAndPersonaInformationExpand);
			
			//start 查询亲属信息放在request，回填用
			RelativesAndAddressExpand relativesAndAddressExpand =new RelativesAndAddressExpand();
			//查询用户是否已经填写了亲属
			Relatives relatives =relativesService.selectRelativesByPerId(id);
			if (relatives!=null) {
				relativesAndAddressExpand.setRelatives(relatives);
				if (relatives.getAddressId()!=null&&relatives.getAddressId().length()>0) {
					Address address = addressService.findAddressById(relatives.getAddressId());
					if (address!=null) {
						relativesAndAddressExpand.setAddress(address);
						String relativesallRegionResultById = addressService
								.getAllRegion(address);
						request.setAttribute("relativesallRegionResultById", relativesallRegionResultById);
					}
				
					
				}
			}
			request.setAttribute("relativesAndAddressExpand", relativesAndAddressExpand);
			//end
			return "frontEnd_manage/person_information/Personal";
		}else{
			return "redirect:/";
		}

		

	}

	@RequestMapping("/toProductDetails")
	public String toProductDetails() {
		return "frontEnd_manage/shop/ProductDetails";

	}

	@RequestMapping("/toPersonalInformation")
	public String toPersonalInformation() {

		return "frontEnd_manage/person_information/PersonalInformation";
	}
	@RequestMapping("/toLimits")
	public String toLimits() {

		return "backstage_managed/jsp/role/limits";
	}
	
	@RequestMapping("/toShop")
	public String toShop() {
		return "frontEnd_manage/front_bootstrap/index";
		
	}
}
