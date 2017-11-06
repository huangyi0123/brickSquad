package com.brick.squad.pojo;

import javax.validation.constraints.Pattern;


/**
 * 
 * @author Luyujing
 * 
 *	用户表实体类
 */
public class User {
	private String id;
	private String username;
	private String password;
	@Pattern(regexp="^((13\\d{9}$)|(15[0,1,2,3,5,6,7,8,9]\\d{8}$)|(18[0,3,2,5,6,7,8,9]\\d{8}$)|(147\\d{8})$)",message="请您输入正确的手机号码")
	private String telephone;
	private String roleId;
	private String branchId;
	private String userPicPath;
	
	
	public String getUserPicPath() {
		return userPicPath;
	}
	public void setUserPicPath(String userPicPath) {
		this.userPicPath = userPicPath;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getTelephone() {
		return telephone;
	}
	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}
	public String getRoleId() {
		return roleId;
	}
	public void setRoleId(String roleId) {
		this.roleId = roleId;
	}
	public String getBranchId() {
		return branchId;
	}
	public void setBranchId(String branchId) {
		this.branchId = branchId;
	}
	@Override
	public String toString() {
		return "User [id=" + id + ", username=" + username + ", password="
				+ password + ", telephone=" + telephone + ", roleId=" + roleId
				+ ", branchId=" + branchId + ", userPicPath=" + userPicPath
				+ "]";
	}

	
}
