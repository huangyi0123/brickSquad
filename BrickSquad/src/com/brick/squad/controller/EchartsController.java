package com.brick.squad.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.brick.squad.pojo.Type;
import com.brick.squad.service.PersonalInformationService;

@Controller
@RequestMapping("/echarts")
public class EchartsController {
	@Autowired
	@Qualifier("personalInformationService")
	private PersonalInformationService personalInformationService;

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
}
