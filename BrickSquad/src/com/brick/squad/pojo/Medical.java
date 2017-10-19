package com.brick.squad.pojo;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

/**
 * 
 * @author 吴文鑫
 *病历表
 */
public class Medical {
	
private String id;
/**
 * 主治医师
 */
private String perId;
/**
 * 检查日期
 */
private Date inspectionDate;
/**
 * 检查类型
 */
private String typeId; 
/**
 * 检查医院
 */
private String hospital;
/**
 * 病历详情
 */
private String content;
/**
 * 主治医师
 */
private String attendingSurgeon;
/**
 * @return the id
 */
public String getId() {
	return id;
}
/**
 * @param id the id to set
 */
public void setId(String id) {
	this.id = id;
}
/**
 * @return the perId
 */
public String getPerId() {
	return perId;
}
/**
 * @param perId the perId to set
 */
public void setPerId(String perId) {
	this.perId = perId;
}
/**
 * @return the inspectionDate
 */

/**
 * @return the typeId
 */
public String getTypeId() {
	return typeId;
}
/**
 * @return the inspectionDate
 */
public Date getInspectionDate() {
	return inspectionDate;
}
/**
 * @param inspectionDate the inspectionDate to set
 */
public void setInspectionDate(Date inspectionDate) {
	this.inspectionDate = inspectionDate;
}
/**
 * @param typeId the typeId to set
 */
public void setTypeId(String typeId) {
	this.typeId = typeId;
}
/**
 * @return the hospital
 */
public String getHospital() {
	return hospital;
}
/**
 * @param hospital the hospital to set
 */
public void setHospital(String hospital) {
	this.hospital = hospital;
}
/**
 * @return the content
 */
public String getContent() {
	return content;
}
/**
 * @param content the content to set
 */
public void setContent(String content) {
	this.content = content;
}
/**
 * @return the attendingSurgeon
 */
public String getAttendingSurgeon() {
	return attendingSurgeon;
}
/**
 * @param attendingSurgeon the attendingSurgeon to set
 */
public void setAttendingSurgeon(String attendingSurgeon) {
	this.attendingSurgeon = attendingSurgeon;
}
/* (non-Javadoc)
 * @see java.lang.Object#toString()
 */
@Override
public String toString() {
	return "Medical [id=" + id + ", perId=" + perId + ", inspectionDate="
			+ inspectionDate + ", typeId=" + typeId + ", hospital=" + hospital
			+ ", content=" + content + ", attendingSurgeon=" + attendingSurgeon
			+ "]";
}

}
