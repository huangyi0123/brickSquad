package com.brick.squad.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import net.sf.json.JSONArray;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.transaction.annotation.Transactional;

import com.brick.squad.expand.MedicalExpand;
import com.brick.squad.mapper.MedicalMapper;
import com.brick.squad.mapper.PersonalInformationMapper;
import com.brick.squad.mapper.TypeMapper;
import com.brick.squad.pojo.Activities;
import com.brick.squad.pojo.Business;
import com.brick.squad.pojo.Medical;
import com.brick.squad.pojo.PersonalInformation;
import com.brick.squad.pojo.Region;
import com.brick.squad.pojo.Type;
import com.brick.squad.service.MedicalService;
import com.brick.squad.util.GridManagerList;
import com.brick.squad.util.PageBeanUtil;
import com.brick.squad.util.Pagination;
import com.brick.squad.util.Util;

@Transactional
/**
 * 
 * @author 吴文鑫
 *
 */
public class MedicalServiceImpl implements MedicalService {
	@Autowired
	@Qualifier("medicalMapper")
	private MedicalMapper medicalMapper;
	@Autowired
	@Qualifier("personalInformationMapper")
	private PersonalInformationMapper personalInformationMapper;
	@Autowired
	@Qualifier("typeMapper")
	private TypeMapper typeMapper;

	@Override
	public void insertMedical(Medical medical) {
		medicalMapper.insertMedical(medical);

	}

	@Override
	public void deleteMedicalById(String id) {
		medicalMapper.deleteMedicalById(id);

	}

	@Override
	public void updateMedicalById(Medical medical) {
		medicalMapper.updateMedicalCententById(medical);

	}

	@Override
	public Medical findMedicalById(String id) {
		return medicalMapper.findMedicalById(id);
	}

	@Override
	public String medicalPagination(Pagination pagination) {
		List<MedicalExpand> medicals = medicalMapper
				.medicalPagination(pagination);
		int row = medicalMapper.findMedicalAllCount(pagination);
		Util<MedicalExpand> util = new Util<>();
		String data = util.SplitPage(medicals, row);
		return data;
	}

	/*
	 * @Override public int findMedicalAllCount() { // TODO Auto-generated
	 * method stub return medicalMapper.findMedicalAllCount(); }
	 */

	@Override
	public String findAllPersonalInformationGetIdAndIdCardAndName() {
		List<PersonalInformation> allPersonalInformation = personalInformationMapper
				.findPerIdAndIdCard();
		JSONArray jsonArray = new JSONArray();
		String allPersonalInformationData = jsonArray.fromObject(
				allPersonalInformation).toString();
		return allPersonalInformationData;
	}

	@Override
	public String findAllPersonalInformationAndType() {
		List<PersonalInformation> personalInformation = personalInformationMapper
				.findAllPersonalInformations();
		List<Type> type = typeMapper.findAllType();
		Map<String, List> map = new HashMap<String, List>();
		map.put("personalInformation", personalInformation);
		map.put("type", type);
		JSONArray jsonArray = new JSONArray();
		String data = jsonArray.fromObject(map).toString();
		return data;
	}

	@Override
	public MedicalExpand findPersonalInformationAndType(String id) {
		MedicalExpand medicalExpand = medicalMapper
				.findPersonalInformationAndType(id);
		return medicalExpand;
	}

	@Override
	/**查看用户检查病历史*/
	public PageBeanUtil<MedicalExpand> findMedicalByUser(int page1, String pId)
			throws Exception {
		PageBeanUtil<MedicalExpand> pageBean = new PageBeanUtil<MedicalExpand>();
		pageBean.setpId(pId);
		if (page1 == 0) {
			page1 = 1;
			// 设置当前页数:
			pageBean.setPage1(page1);

			// 设置每页显示记录数:
			int limit = 3;
			pageBean.setLimitPage1(limit);
			// 设置总记录数:
			int totalCount = 0;
			totalCount = medicalMapper.findCountMedicalByUser(pageBean);

			pageBean.setTotalCount1(totalCount);
			// 设置总页数:
			int totalPage = 0;
			// Math.ceil(totalCount / limit);
			if (totalCount % limit == 0) {
				totalPage = totalCount / limit;
			} else {
				totalPage = totalCount / limit + 1;
			}
			pageBean.setTotalPage1(totalPage);
			// 每页显示的数据集合:
			// 从哪开始:
			int begin = (page1 - 1) * limit;
			pageBean.setBegin1(begin);
			List<MedicalExpand> list = medicalMapper
					.findMedicalByUser(pageBean);
			pageBean.setList(list);
		} else {
			// 设置当前页数:
			pageBean.setPage1(page1);
			// 设置每页显示记录数:
			int limit = 3;
			pageBean.setLimitPage1(limit);
			// 设置总记录数:
			int totalCount = 0;
			totalCount = medicalMapper.findCountMedicalByUser(pageBean);
			pageBean.setTotalCount1(totalCount);
			// 设置总页数:
			int totalPage = 0;
			// Math.ceil(totalCount / limit);
			if (totalCount % limit == 0) {
				totalPage = totalCount / limit;
			} else {
				totalPage = totalCount / limit + 1;
			}
			pageBean.setTotalPage1(totalPage);
			// 每页显示的数据集合:
			// 从哪开始:
			int begin = (page1 - 1) * limit;
			pageBean.setBegin1(begin);
			List<MedicalExpand> list = medicalMapper
					.findMedicalByUser(pageBean);
			pageBean.setList(list);
		}
		return pageBean;
	}

	@Override
	/**查看用户检查病历史记录数*/
	public int findCountMedicalByUser(PageBeanUtil pageBeanUtil)
			throws Exception {
		int count = medicalMapper.findCountMedicalByUser(pageBeanUtil);
		return count;
	}

	@Override
	/** 根据ID查找详细信息 */
	public MedicalExpand findViewInformation(String id) throws Exception {
		MedicalExpand medicalExpand = medicalMapper.findViewInformation(id);
		return medicalExpand;
	}

	@Override
	public String findEchartsByType(Map<String, Object> map) {
		List<Map<String, Object>> maps = medicalMapper.findEchartsByType(map);
		JSONArray jsonArray = JSONArray.fromObject(maps);
		return jsonArray.toString();
	}
}
