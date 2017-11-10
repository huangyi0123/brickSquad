package com.brick.squad.util;

import java.util.List;

public class ZTree {
	private String name;
	private String id;
	private boolean checked = false;
	private String value;
	private List<ZTree> children;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public boolean isChecked() {
		return checked;
	}

	public void setChecked(boolean checked) {
		this.checked = checked;
	}

	public List<ZTree> getChildren() {
		return children;
	}

	public void setChildren(List<ZTree> children) {
		this.children = children;
	}

	public String getValue() {
		return value;
	}

	public void setValue(String value) {
		this.value = value;
	}
}
