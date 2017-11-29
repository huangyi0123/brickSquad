package com.brick.squad.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.brick.squad.pojo.Type;
import com.brick.squad.service.ArticleService;
import com.brick.squad.service.PersonalInformationService;
import com.brick.squad.service.TypeService;

@Controller
@RequestMapping("/echarts")
public class EchartsController {
	@Autowired
	@Qualifier("personalInformationService")
	private PersonalInformationService personalInformationService;
	@Autowired
	@Qualifier("articleService")
	private ArticleService articleService;
	@Autowired
	@Qualifier("typeService")
	private TypeService typeService;

	/**
	 * 老年人年龄结构数据
	 * 
	 * @param typeId
	 *            分店id
	 * @return 老年人年龄数据
	 */
	@RequestMapping("/getPerAge")
	@ResponseBody
	public String getPerAge(String typeId) {
		return personalInformationService.findPerByAge(typeId);
	}

	/**
	 * 统计老人消费情况
	 * 
	 * @param type
	 *            区域
	 * @return 老人消费情况
	 */
	@RequestMapping("/consumptionSituation")
	@ResponseBody
	public String consumptionSituation(Type type) {
		return personalInformationService.consumptionSituation(type);
	}

	/**
	 * 根据商家及区域统计商品类别数量
	 * 
	 * @return 数据
	 */
	@RequestMapping("/findEchartsAreac")
	@ResponseBody
	public String findEchartsAreac(String typeId, String bid) {
		Map<String, Object> map = new HashMap<String, Object>();
		if (typeId == null || typeId.trim().equals("")) {
			map.put("branchId", "");
		} else {
			map.put("branchId", typeId);
		}
		if (bid == null || bid.trim().equals("")) {
			map.put("bId", "");
		} else {
			map.put("bId", bid);
		}
		return articleService.findEchartsAreac(map);
	}

	@RequestMapping("/toBunessEcharts")
	public String toBunessEcharts(HttpServletRequest request) throws Exception {
		List<Type> types = typeService
				.findAllTypeByParentId("594cf09abc4c11e7aca65254002ec43c");
		request.setAttribute("region", types);
		return "backstage_managed/jsp/home-data/buss-data-analysis";
	}
}
