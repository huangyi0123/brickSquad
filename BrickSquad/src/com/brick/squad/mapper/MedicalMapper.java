package com.brick.squad.mapper;

import java.util.List;
import java.util.Map;

import com.brick.squad.expand.MedicalExpand;
import com.brick.squad.pojo.Medical;
import com.brick.squad.util.PageBeanUtil;
import com.brick.squad.util.Pagination;

public interface MedicalMapper {
	public void insertMedical(Medical medical);

	public void deleteMedicalById(String id);

	public void updateMedicalCententById(Medical medical);

	public Medical findMedicalById(String id);

	public List<MedicalExpand> medicalPagination(Pagination pagination);

	public int findMedicalAllCount(Pagination pagination);

	public String findAllPersonalInformationAndType();

	public MedicalExpand findPersonalInformationAndType(String id);

	public void deleteMedicalByPerId(String perId);

	/** 查看用户检查病历史 */
	public List<MedicalExpand> findMedicalByUser(PageBeanUtil pageBeanUtil);

	/** 查看用户检查病历史记录数 */
	public int findCountMedicalByUser(PageBeanUtil pageBeanUtil);

	/** 根据ID查找详细信息 */
	public MedicalExpand findViewInformation(String id);

	/**
	 * 统计老人病历列表
	 * 
	 * @param map 
	 * @return
	 */
	public List<Map<String, Object>> findEchartsByType(Map<String, Object> map);
}
