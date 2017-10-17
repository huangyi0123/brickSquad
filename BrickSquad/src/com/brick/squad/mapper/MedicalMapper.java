package com.brick.squad.mapper;

import java.util.List;

import com.brick.squad.pojo.Medical;
import com.brick.squad.util.Pagination;

public interface MedicalMapper {
	public void insertMedical(Medical medical);

	public void deleteMedicalById(String id);

	public void updateMedicalCententById(Medical medical);

	public Medical findMedicalById(String id);
	
	public List<Medical> medicalPagination(Pagination pagination);
}
