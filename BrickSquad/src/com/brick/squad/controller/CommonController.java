package com.brick.squad.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.brick.squad.expand.AddressAndPersonaInformationExpand;
import com.brick.squad.expand.PersonalInfofmationAndHealthRecordsExpand;
import com.brick.squad.expand.RelativesAndAddressAndTypeExpand;
import com.brick.squad.pojo.Address;
import com.brick.squad.pojo.HealthRecords;
import com.brick.squad.pojo.Limits;
import com.brick.squad.pojo.PersonalInformation;
import com.brick.squad.pojo.Relatives;
import com.brick.squad.pojo.Type;
import com.brick.squad.pojo.User;
import com.brick.squad.service.AddressService;
import com.brick.squad.service.HealthRecordsService;
import com.brick.squad.service.LimitsService;
import com.brick.squad.service.PersonalInformationService;
import com.brick.squad.service.RegionService;
import com.brick.squad.service.RelativesService;
import com.brick.squad.service.TypeService;
import com.brick.squad.util.UpLoadFile;

@Controller
@RequestMapping("/common")
public class CommonController {
	@Autowired
	@Qualifier("limitsService")
	private LimitsService limitsService;
	@RequestMapping("/toFrame")
	public String toFrame(HttpServletRequest request) {
		//begin 通过权限id查询权限
		String roleId=((User)(request.getSession().getAttribute("user"))).getRoleId();
		Map<String, Limits> limits=limitsService.findAllLimitsByRoleId(roleId);
		request.getSession().setAttribute("limiterole", limits);
		//end
		return "backstage_managed/jsp/frame";
	}

	@RequestMapping("/toIndex")
	public String toIndex() {
		return "redirect:/";
	}

	@RequestMapping("/toIndexModal")
	public String toIndexModal(HttpServletRequest request) {
		request.setAttribute("indexFlag", "userLogin");
		request.setAttribute("url", "common/toIndex");
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

	@RequestMapping("/indexBusiness")
	public String businessIndex() {
		return "frontEnd_manage/business/indexBusiness";
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
	@Autowired
	@Qualifier("typeService")
	private TypeService typeService;
	@Autowired
	@Qualifier("healthRecordsService")
	private HealthRecordsService healthRecordsService;


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
			
			//start 查询personalinformation和healthrecords 个人身体数据显示用
			PersonalInfofmationAndHealthRecordsExpand personalInfofmationAndHealthRecordsExpand = new PersonalInfofmationAndHealthRecordsExpand();
			if (personalInformation!=null) {
				personalInfofmationAndHealthRecordsExpand.setPersonalInformation(personalInformation);
				//根据personalInformation的NationId查询type表的记录，获取民族名
				Type type =typeService.findTypeById(personalInformation.getNationId());
				if (type!=null) {
					//获取民族名 存在personalInfofmationAndHealthRecordsExpand扩展类 中 
					personalInfofmationAndHealthRecordsExpand.setNationName(type.getName());
				}
				
				//根据personalInfofmation的ID查询healthRecords的数据 
			HealthRecords healthRecords =healthRecordsService.findHealthRecordsByPerId(personalInformation.getId());
			if (healthRecords!=null) {
				personalInfofmationAndHealthRecordsExpand.setHealthRecords(healthRecords);
				//如果healthRecords不为空，根据healthRecords中的DiseaseId查询Type中的疾病名
				Type typeDiseaseName =typeService.findTypeById(healthRecords.getDiseaseId());
			if (typeDiseaseName!=null) {
				//如果typeDiseaseName有值，把对应疾病名存入 personalInfofmationAndHealthRecordsExpand扩展类 中 
				personalInfofmationAndHealthRecordsExpand.setDiseaseName(typeDiseaseName.getName());
			}
			}
			}
			
			request.setAttribute("personalInfofmationAndHealthRecordsExpand", personalInfofmationAndHealthRecordsExpand);
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
	
	@RequestMapping("/toContactUs")
	public String toContactUs() {
		return "frontEnd_manage/front_bootstrap/contact_us";
	}
	
	@RequestMapping("/toWishlist")
	public String toWishlist() {
		return "frontEnd_manage/front_bootstrap/wishlist";
	}
	@RequestMapping("/tosimple_product")
	public String tosimple_product() {
		return "frontEnd_manage/front_bootstrap/simple_product";
	}
	@RequestMapping("/toabout_us")
	public String toabout_us() {
		return "frontEnd_manage/front_bootstrap/about_us";
	}
	@RequestMapping("/todeals")
	public String deals() {
		return "frontEnd_manage/front_bootstrap/deals";
	}
	@RequestMapping("/toShop_right_sidebar")
	public String toShop_right_sidebar() {

		return "frontEnd_manage/front_bootstrap/shop_right_sidebar";
	}
	
	@RequestMapping("/toShop_left_sidebar")
	public String toShop_left_sidebar() {
		return "frontEnd_manage/front_bootstrap/shop_left_sidebar";
		
	}

	@RequestMapping("/toCart")
	public String toCart() {
		return "frontEnd_manage/front_bootstrap/cart";
		
	}
}

