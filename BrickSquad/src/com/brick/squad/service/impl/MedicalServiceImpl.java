package com.brick.squad.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.transaction.annotation.Transactional;

import com.brick.squad.mapper.MedicalMapper;
import com.brick.squad.pojo.Medical;
import com.brick.squad.service.MedicalService;
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
	public List<Medical> medicalPagination(Pagination pagination) {
		// TODO Auto-generated method stub
		return medicalMapper.medicalPagination(pagination);
	}

	@Override
	public int findMedicalAllCount() {
		// TODO Auto-generated method stub
		return medicalMapper.findMedicalAllCount();
	}

}
