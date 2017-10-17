package com.brick.squad.service.impl;

import java.util.List;

import net.sf.json.JSONArray;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.transaction.annotation.Transactional;

import com.brick.squad.mapper.MedicalMapper;
import com.brick.squad.pojo.Medical;
import com.brick.squad.pojo.Region;
import com.brick.squad.service.MedicalService;
import com.brick.squad.util.GridManagerList;
import com.brick.squad.util.Pagination;
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
		GridManagerList<Medical> gridManagerList=new GridManagerList<Medical>();
		List<Medical> medicals=medicalMapper.medicalPagination(pagination);
		System.out.println(medicals.toString());
		gridManagerList.setStatus("success");
		gridManagerList.setData(medicals);
		gridManagerList.setTotals(medicalMapper.findMedicalAllCount());
		JSONArray jsonArray=JSONArray.fromObject(gridManagerList);
		String data=jsonArray.toString();
		data=data.substring(1,data.length()-1);
		return data;
	}

	@Override
	public int findMedicalAllCount() {
		// TODO Auto-generated method stub
		return medicalMapper.findMedicalAllCount();
	}

}
