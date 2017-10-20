package com.brick.squad.pojo;

import java.util.Date;
/*import com.fasterxml.jackson.annotation.JsonFormat;*/
/*import org.springframework.format.annotation.DateTimeFormat;*/

/**
 * 
 * @author Administrator
 *	指导表
 */
public class Guidance {
	private String id;
	private Date guidanceDate;
	/*@DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")*/
	/*@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone="GMT+8")*/
	private String disease;
	private String assessment;
	private String suggest;
	private String perId;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public Date getGuidanceDate() {
		return guidanceDate;
	}
	public void setGuidanceDate(Date guidanceDate) {
		this.guidanceDate = guidanceDate;
	}
	public String getDisease() {
		return disease;
	}
	public void setDisease(String disease) {
		this.disease = disease;
	}
	public String getAssessment() {
		return assessment;
	}
	public void setAssessment(String assessment) {
		this.assessment = assessment;
	}
	public String getSuggest() {
		return suggest;
	}
	public void setSuggest(String suggest) {
		this.suggest = suggest;
	}
	public String getPerId() {
		return perId;
	}
	public void setPerId(String perId) {
		this.perId = perId;
	}
	@Override
	public String toString() {
		return "Guidance [id=" + id + ", guidanceDate=" + guidanceDate
				+ ", disease=" + disease + ", assessment=" + assessment
				+ ", suggest=" + suggest + ", perId=" + perId + "]";
	}
}
