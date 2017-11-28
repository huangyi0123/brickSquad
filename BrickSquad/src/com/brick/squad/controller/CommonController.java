package com.brick.squad.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.brick.squad.expand.ActivitiesAndPaginationExtend;
import com.brick.squad.expand.AddressAndPersonaInformationExpand;
import com.brick.squad.expand.PersonalInfofmationAndHealthRecordsExpand;
import com.brick.squad.expand.TypeExpand;
import com.brick.squad.pojo.Activities;
import com.brick.squad.pojo.Address;
import com.brick.squad.pojo.Article;
import com.brick.squad.pojo.Business;
import com.brick.squad.pojo.HealthRecords;
import com.brick.squad.pojo.Limits;
import com.brick.squad.pojo.News;
import com.brick.squad.pojo.PersonalInformation;
import com.brick.squad.pojo.Relatives;
import com.brick.squad.pojo.Type;
import com.brick.squad.pojo.User;
import com.brick.squad.service.ActivitiesService;
import com.brick.squad.service.AddressService;
import com.brick.squad.service.ArticleService;
import com.brick.squad.service.BusinessService;
import com.brick.squad.service.HealthRecordsService;
import com.brick.squad.service.LimitsService;
import com.brick.squad.service.NewsService;
import com.brick.squad.service.PersonalInformationService;
import com.brick.squad.service.RegionService;
import com.brick.squad.service.RelativesService;
import com.brick.squad.service.ShoppingCarService;
import com.brick.squad.service.TypeService;
import com.brick.squad.util.COS;
import com.brick.squad.util.UpLoadFile;

@Controller
@RequestMapping("/common")
public class CommonController {
	@Autowired
	@Qualifier("limitsService")
	private LimitsService limitsService;
	@Autowired
	@Qualifier("shoppingCarService")
	private ShoppingCarService shoppingCarService;
	@Autowired
	@Qualifier("businessService")
	private BusinessService businessService;
	@Autowired
	@Qualifier("typeService")
	private TypeService typeService;
	@Autowired
	@Qualifier("newsService")
	private NewsService newsService;

	@RequestMapping("/toWebsiteTemplate")
	public String toWebsiteTemplate(String type, HttpServletRequest request) {
		request.setAttribute("type", type);
		return "offical_website/website-template";

	}

	@RequestMapping("/toFrame")
	public String toFrame(HttpServletRequest request) {
		User user = (User) request.getSession().getAttribute("user");
		// begin 通过权限id查询权限
		String roleId = user.getRoleId();
		Map<String, Limits> limits = limitsService
				.findAllLimitsByRoleId(roleId);
		request.getSession().setAttribute("limiterole", limits);

		// end
		Business business = businessService.findBusiness(user.getId());
		request.getSession().setAttribute("business", business);
		return "backstage_managed/jsp/frame";
	}

	@RequestMapping("/toIndex")
	public String toIndex() {
		return "redirect:/";
	}

	@RequestMapping("/toIndexModal")
	public String toIndexModal(HttpServletRequest request) {
		request.setAttribute("url", "common/toIndex");

		return "frontEnd_manage/util/turn";
	}

	@RequestMapping("/uploadImg")
	@ResponseBody
	public String uploadImg(MultipartFile file, HttpServletRequest request,
			String imgPath) {
		UpLoadFile upLoadFile = new UpLoadFile();
		List<String> list = new ArrayList<String>();
		String realPath = "resource/image/" + imgPath + "/";
		String path = request.getSession().getServletContext()
				.getRealPath(realPath);
		String name = file.getOriginalFilename();
		String pix = name.substring(name.lastIndexOf("."));
		String fileName = new Date().getTime() + pix;
	
		
		upLoadFile.setData(list);
		File file1 = new File(path, fileName);
		if (!file1.exists()) {
			file1.mkdirs();
		}
		try {
			file.transferTo(file1);
			
			COS cos=new COS();
			cos.setBucketName("bricksquad");
			cos.setRegion("sh");
			String paths=cos.upLoadImageToCOS(file1.getAbsolutePath(), "/news/"+fileName);
			System.out.println(paths);
			JSONObject jsonObject=JSONObject.fromObject(paths);
			jsonObject=JSONObject.fromObject(jsonObject.get("data"));
			paths=jsonObject.get("access_url").toString();
			list.add(paths);
			file1.delete();
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
	@Qualifier("healthRecordsService")
	private HealthRecordsService healthRecordsService;
	@Autowired
	@Qualifier("articleService")
	private ArticleService articleService;

	@RequestMapping("/toPersonal")
	public String toPersonal(HttpServletRequest request) throws Exception {
		User user = (User) request.getSession().getAttribute("user");
		if (user != null) {
			String id = user.getId();
			// 实例化AddressAndPersonaInformationExpand扩展类
			AddressAndPersonaInformationExpand addressAndPersonaInformationExpand = new AddressAndPersonaInformationExpand();

			// 根据ID查询personalInformation，放在addressAndPersonaInformationExpand
			PersonalInformation personalInformation = personalInformationService
					.findPersonalInformationById(id);
			addressAndPersonaInformationExpand
					.setPersonalInformation(personalInformation);
			// 根据老人id查询亲属关系
			Relatives relatives = relativesService.findRelativesByPerId(user
					.getId());
			if (relatives != null && relatives.getAddressId() != null) {
				Address rAddress = addressService.findAddressById(relatives
						.getAddressId());
				addressAndPersonaInformationExpand.setrAddress(rAddress);
				String radderss = addressService.findByIdAllAddress(relatives
						.getAddressId());
				request.setAttribute("raddress", radderss);
			}
			addressAndPersonaInformationExpand.setRelatives(relatives);
			if (relatives != null) {
				Type type = typeService.findTypeById(relatives
						.getRelationshipId());
				request.setAttribute("relationship", type);
			}
			if (personalInformation.getAddressId() != null
					&& personalInformation.getAddressId().length() > 0) {
				String addres = addressService
						.findByIdAllAddress(personalInformation.getAddressId());
				request.setAttribute("address", addres);
				// start
				// 根据ID查询信息，得到信息中的地址ID，再根据ID查询address，分别用address中存的ID去region中查询相对应的地区，封装成json字符串，用页面地址回填
				Address address = personalInformationService
						.findAddressById(personalInformation.getAddressId());
				addressAndPersonaInformationExpand.setAddress(address);
				// end

			}

			request.setAttribute("addressAndPersonaInformationExpand",
					addressAndPersonaInformationExpand);

			// start 查询personalinformation和healthrecords 个人身体数据显示用
			PersonalInfofmationAndHealthRecordsExpand personalInfofmationAndHealthRecordsExpand = new PersonalInfofmationAndHealthRecordsExpand();
			if (personalInformation != null) {
				personalInfofmationAndHealthRecordsExpand
						.setPersonalInformation(personalInformation);
				// 根据personalInformation的NationId查询type表的记录，获取民族名
				Type type = typeService.findTypeById(personalInformation
						.getNationId());
				if (type != null) {
					// 获取民族名 存在personalInfofmationAndHealthRecordsExpand扩展类 中
					personalInfofmationAndHealthRecordsExpand
							.setNationName(type.getName());
				}

				// 根据personalInfofmation的ID查询healthRecords的数据
				HealthRecords healthRecords = healthRecordsService
						.findHealthRecordsByPerId(personalInformation.getId());
				if (healthRecords != null) {
					personalInfofmationAndHealthRecordsExpand
							.setHealthRecords(healthRecords);
					// 如果healthRecords不为空，根据healthRecords中的DiseaseId查询Type中的疾病名
					Type typeDiseaseName = typeService
							.findTypeById(healthRecords.getDiseaseId());
					if (typeDiseaseName != null) {
						// 如果typeDiseaseName有值，把对应疾病名存入
						// personalInfofmationAndHealthRecordsExpand扩展类 中
						personalInfofmationAndHealthRecordsExpand
								.setDiseaseName(typeDiseaseName.getName());
					}
				}
			}
			request.setAttribute("personalInfofmationAndHealthRecordsExpand",
					personalInfofmationAndHealthRecordsExpand);
			// end
			return "frontEnd_manage/person_information/Personal";
		} else {
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
	public String toShop(HttpServletRequest request) {

		return "frontEnd_manage/front_bootstrap/index";
	}

	/**
	 * 首页下拉框删除购物车
	 * 
	 */
	@RequestMapping("/toShopDeleteShoppingCar")
	public String IndexDeleteShoppingCar(String id) throws Exception {
		shoppingCarService.deleteShoppingCarById(id);
		return "redirect:/common/toShop";
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
	public String toabout_us(HttpServletRequest request) throws Exception {
		// 加载商品所有类型,搜索框
		List<Type> listType = typeService.findAllTypeByParentId("splb");
		request.setAttribute("listType", listType);
		return "frontEnd_manage/front_bootstrap/about_us";
	}

	@RequestMapping("/toShop_right_sidebar")
	public String toShop_right_sidebar() {

		return "frontEnd_manage/front_bootstrap/shop_right_sidebar";
	}

	@RequestMapping("/toWebsite_template")
	public String toWebsite_template() {
		return "offical_website/website-template";
	}

	/***
	 * 医疗器械页面controller
	 * 
	 * @throws Exception
	 */
	@RequestMapping("/toShop_left_sidebar")
	public String toShop_left_sidebar(HttpServletRequest request)
			throws Exception {
		/** 医疗器械一级分类查询 */
		List<TypeExpand> listType = typeService
				.findIdAndTypeNmae("yiliaoqixie");
		request.setAttribute("listType", listType);
		/** 医疗器械查询商品图片和商品名称 */
		List<Article> listArticle = articleService
				.findArticleImgAndName("laorenjianfuyongpin");
		List<String> imgPath = new ArrayList<String>();
		for (Article article : listArticle) {
			String path = request
					.getSession()
					.getServletContext()
					.getRealPath(
							"resource/image/articleImg/" + article.getImage());
			imgPath.add(path);
			String p;
			for (String realPath : imgPath) {
				File file = new File(realPath);
				if (file.exists()) {
					File[] files = file.listFiles();
					if (files.length == 0) {
					} else {
						for (File file2 : files) {
							if (file2.isDirectory()) {

							} else {
								p = file2.getName();
								article.setImage(article.getImage() + "/" + p);
								break;
							}
						}
					}
				}
			}

		}
		request.setAttribute("listArticle", listArticle);
		return "frontEnd_manage/front_bootstrap/shop_left_sidebar";
	}

	@RequestMapping("/toCart")
	public String toCart() {
		return "frontEnd_manage/front_bootstrap/cart";

	}

	@RequestMapping("/toVariable_product")
	public String toVariable_product() {
		return "frontEnd_manage/front_bootstrap/variable_product";
	}

	@RequestMapping("/toCoupon")
	public String toCoupon() {
		return "frontEnd_manage/front_bootstrap/coupon";

	}

	@RequestMapping("/toApply_coupon")
	public String toApply_coupon() {
		return "frontEnd_manage/front_bootstrap/apply_coupon";

	}

	@Autowired
	@Qualifier("activitiesService")
	private ActivitiesService activitiesService;

	@RequestMapping("/toActivity_carousel")
	public String toActivity_carousel(String type, HttpServletRequest request)
			throws Exception {
		request.setAttribute("type", type);
		return "offical_website/activity";
	}

	@RequestMapping("/toVedio_Details")
	public String toVedio_Details(String id, HttpServletRequest request)
			throws Exception {
		Activities activitiesMoviePAth = activitiesService
				.findActivitiesById(id);
		// 每次给视频点击量+1
		activitiesService.updateClickAmountById(id);
		request.setAttribute("activitiesMoviePAth", activitiesMoviePAth);
		// 热播视频
		List<Activities> listacActivitiesClickAmount = activitiesService
				.findActivitiesMovieClickAmountByTypeId(activitiesMoviePAth);
		request.setAttribute("listacActivitiesClickAmount",
				listacActivitiesClickAmount);
		// 相关推荐
		List<Activities> relatedRecommendation = activitiesService
				.findActivitiesMovieClickAmountByRegexp(activitiesMoviePAth);
		for (Activities activities : relatedRecommendation) {
			System.out.println(activities.toString());
		}
		request.setAttribute("relatedRecommendation", relatedRecommendation);
		// 相关推荐等查询都为空的时候去根据类型查询几条填充内容
		ActivitiesAndPaginationExtend activitiesAndPaginationExtend = new ActivitiesAndPaginationExtend();
		activitiesAndPaginationExtend.setMovieTypeId(activitiesMoviePAth
				.getTypeId());
		activitiesAndPaginationExtend.setCurentPage(1);
		activitiesAndPaginationExtend.setPageSize(3);
		List<Activities> listMovie = activitiesService
				.findActivitiesMovieByTypeId(activitiesAndPaginationExtend);

		request.setAttribute("listMovie", listMovie);

		return "offical_website/vedio-details";
	}

	@RequestMapping("/toLife")
	public String toLife(HttpServletRequest request, String type) {
		request.setAttribute("type", type);

		return "offical_website/life";
	}

	@RequestMapping("/toHome_Data_Analysis")
	public String toHome_Data_Analysis(HttpServletRequest request)
			throws Exception {
		List<Type> types = typeService
				.findAllTypeByParentId("594cf09abc4c11e7aca65254002ec43c");
		request.setAttribute("region", types);
		return "backstage_managed/jsp/home-data/home-data-analysis";
	}
}
