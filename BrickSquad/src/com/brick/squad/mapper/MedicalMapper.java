package com.brick.squad.mapper;

import com.brick.squad.pojo.Medical;

public interface MedicalMapper {
	public void insertMedical(Medical medical);

	public void deleteMedicalById(String id);

	public void updateMedicalById(Medical medical);

	public Medical findMedicalById(String id);
}
