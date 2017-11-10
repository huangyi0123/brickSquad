package com.brick.squad.pojo;

import javax.validation.constraints.Pattern;

import org.hibernate.validator.constraints.NotEmpty;

/**
 * 
 * @author hy 商家表
 */
public class Business {
	private String id;
	@NotEmpty(message = "姓名不能为空")
	private String name;
	@NotEmpty(message = "身份证不能为空")
	@Pattern(regexp = "^[1-9]\\d{7}((0\\d)|(1[0-2]))(([0|1|2]\\d)|3[0-1])\\d{3}$|^[1-9]\\d{5}[1-9]\\d{3}((0\\d)|(1[0-2]))(([0|1|2]\\d)|3[0-1])\\d{3}([0-9]|X)$", message = "请输入有效身份证号码")
	private String idcard;
	private String shopname;
	private String shopMaterialPath;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getIdcard() {
		return idcard;
	}

	public void setIdcard(String idcard) {
		this.idcard = idcard;
	}

	public String getShopname() {
		return shopname;
	}

	public void setShopname(String shopname) {
		this.shopname = shopname;
	}

	public String getShopMaterialPath() {
		return shopMaterialPath;
	}

	public void setShopMaterialPath(String shopMaterialPath) {
		this.shopMaterialPath = shopMaterialPath;
	}

}
