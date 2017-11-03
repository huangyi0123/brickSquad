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
import com.brick.squad.pojo.Business;
import com.brick.squad.pojo.Medical;
import com.brick.squad.pojo.PersonalInformation;
import com.brick.squad.pojo.Region;
import com.brick.squad.pojo.Type;
import com.brick.squad.service.MedicalService;
import com.brick.squad.util.GridManagerList;
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
		List<MedicalExpand> medicals = medicalMapper.medicalPagination(pagination);
		int row = medicalMapper.findMedicalAllCount(pagination);
		Util<MedicalExpand> util = new Util<>();
		String data = util.SplitPage(medicals, row);
		return data;
	}

	/*@Override
	public int findMedicalAllCount() {
		// TODO Auto-generated method stub
		return medicalMapper.findMedicalAllCount();
	}*/

	@Override
	public String findAllPersonalInformationGetIdAndIdCardAndName() {
		List<PersonalInformation> allPersonalInformation =personalInformationMapper.findPerIdAndIdCard();
		JSONArray jsonArray = new JSONArray();
		String allPersonalInformationData =jsonArray.fromObject(allPersonalInformation).toString();	
		return allPersonalInformationData;
	}

	@Override
	public String findAllPersonalInformationAndType() {
		List<PersonalInformation> personalInformation=personalInformationMapper.findAllPersonalInformations();
		List<Type> type =typeMapper.findAllType();
		Map<String, List> map=new HashMap<String, List>();
		map.put("personalInformation", personalInformation);
		map.put("type", type);
		JSONArray jsonArray=new JSONArray();
		String data=jsonArray.fromObject(map).toString();
		return data;
	}

	@Override
	public MedicalExpand findPersonalInformationAndType(String id) {
		MedicalExpand medicalExpand = medicalMapper.findPersonalInformationAndType(id);
		return medicalExpand;
	}

	
}
