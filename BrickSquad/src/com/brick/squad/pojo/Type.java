package com.brick.squad.pojo;

import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

/**
 * 
 * @author hy
 *  类型表
 */
public class Type {
	private String id;
	private String parentId;
	@Size(min=3,max=6,message="长度")
	@Pattern(regexp="^((13[0-9])|(15[^4])|(18[0,2,3,5-9])|(17[0-8])|(147))\\d{8}$",message="非法手机号")
	private String name;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getParentId() {
		return parentId;
	}
	public void setParentId(String parentId) {
		this.parentId = parentId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	

}
