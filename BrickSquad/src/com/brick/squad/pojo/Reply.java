package com.brick.squad.pojo;

import java.util.Date;
/**
 * 
 * @author 吴文鑫
 *回复
 */
public class Reply {
private String id;
private String ratedId;
private Date replyDate;
private String centent;
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
 * @return the ratedId
 */
public String getRatedId() {
	return ratedId;
}
/**
 * @param ratedId the ratedId to set
 */
public void setRatedId(String ratedId) {
	this.ratedId = ratedId;
}
/**
 * @return the replyDate
 */
public Date getReplyDate() {
	return replyDate;
}
/**
 * @param replyDate the replyDate to set
 */
public void setReplyDate(Date replyDate) {
	this.replyDate = replyDate;
}
/**
 * @return the centent
 */
public String getCentent() {
	return centent;
}
/**
 * @param centent the centent to set
 */
public void setCentent(String centent) {
	this.centent = centent;
}

}
