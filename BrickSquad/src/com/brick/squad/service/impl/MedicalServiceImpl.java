package com.brick.squad.service.impl;

import java.util.List;

import net.sf.json.JSONArray;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.transaction.annotation.Transactional;

import com.brick.squad.mapper.MedicalMapper;
import com.brick.squad.mapper.PersonalInformationMapper;
import com.brick.squad.pojo.Medical;
import com.brick.squad.pojo.PersonalInformation;
import com.brick.squad.pojo.Region;
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
		List<Medical> medicals = medicalMapper.medicalPagination(pagination);
		int row = medicalMapper.findMedicalAllCount();
		Util<Medical> util = new Util<>();
		String data = util.SplitPage(medicals, row);
		return data;
	}

	@Override
	public int findMedicalAllCount() {
		// TODO Auto-generated method stub
		return medicalMapper.findMedicalAllCount();
	}

	@Override
	public String findAllPersonalInformationGetIdAndIdCardAndName() {
		List<PersonalInformation> allPersonalInformation =personalInformationMapper.findPerIdAndIdCard();
		JSONArray jsonArray = new JSONArray();
		String allPersonalInformationData =jsonArray.fromObject(allPersonalInformation).toString();	
		return allPersonalInformationData;
	}
}
