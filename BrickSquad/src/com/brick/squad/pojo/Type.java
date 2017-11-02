package com.brick.squad.pojo;

import org.hibernate.validator.constraints.NotBlank;

/**
 * 
 * @author hy
 *  类型表
 */
public class Type {
	private String id;
	private String parentId;
	@NotBlank(message="类型名称不能为空")
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
