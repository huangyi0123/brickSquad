package com.brick.squad.pojo;

import java.util.Date;

/**
 * 
 * @author 吴文鑫
 *病历表
 */
public class Medical {
	
private String id;
private String perId;
private Date inspectionDate;
private String typeId; 
private String hospital;
private String content;
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

}
