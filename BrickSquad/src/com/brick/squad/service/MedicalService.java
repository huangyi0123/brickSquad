package com.brick.squad.service;

import com.brick.squad.pojo.Medical;


public interface MedicalService {
	public void insertMedical(Medical medical);

	public void deleteMedicalById(String id);

	public void updateMedicalById(Medical medical);

	public Medical findMedicalById(String id);
}
