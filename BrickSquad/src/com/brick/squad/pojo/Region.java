package com.brick.squad.pojo;

import java.util.List;
/**
 * 
 * @author 赵荣坤	
 *地区表
 */
public class Region {
	private String id;
	private String perantId;
	private String name;
	private int level;
	private int isleaf;
	private Region perant;
	private List<Region> children;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPerantId() {
		return perantId;
	}

	public void setPerantId(String perantId) {
		this.perantId = perantId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getLevel() {
		return level;
	}

	public void setLevel(int level) {
		this.level = level;
	}

	public int getIsleaf() {
		return isleaf;
	}

	public void setIsleaf(int isleaf) {
		this.isleaf = isleaf;
	}

	public Region getPerant() {
		return perant;
	}

	public void setPerant(Region perant) {
		this.perant = perant;
	}

	public List<Region> getChildren() {
		return children;
	}

	public void setChildren(List<Region> children) {
		this.children = children;
	}

}
