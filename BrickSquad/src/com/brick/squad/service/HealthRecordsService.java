package com.brick.squad.service;

import com.brick.squad.pojo.HealthRecords;
import com.brick.squad.util.Pagination;
/**
 * 
 * @author 吴文鑫
 *
 */
public interface HealthRecordsService {
	/**
	 * 查询全部的PersonalInformation返回id IDcard name
	 * 
	 * @return json字符串
	 */
	public String findAllPersonalInformationGetIdAndIdCardAndName();
	public void insertHealthRecords(HealthRecords healthRecords);

	public HealthRecords findHealthRecordsById(String id);

	public void deleteHealthRecordsById(String id);

	public void updateHealthRecordsById(HealthRecords healthRecords);
	public String healthRecordsPagination(Pagination pagination);
	public int findHealthRecordsAllCount();
}
