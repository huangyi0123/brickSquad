package com.brick.squad.expand;

import com.brick.squad.pojo.Address;
import com.brick.squad.pojo.Relatives;
import com.brick.squad.pojo.Type;

/**
 * 扩展类用于用户登录后，查看自己的亲属人信息 ，将查询到的亲属信息集合存在这个扩展类中，方便页面显示
 * @author 吴文鑫
 * 
 */
public class RelativesAndAddressAndTypeExpand {
	private Type type;
	private Relatives relatives;
	private Address address;
	/**
	 * 亲属关系类别名 
	 */
	private String relativesName;
	/**
	 * 亲属联系人地址,详细名，不是region的ID
	 */
	private String relativesPeopleAddressName;
	/**
	 * 亲属姓名
	 */
	private String relativesPeopleName;
	/**
	 * 亲属联系电话
	 */
	private String relativesTelephone;
	public Type getType() {
		return type;
	}
	public void setType(Type type) {
		this.type = type;
	}
	public Relatives getRelatives() {
		return relatives;
	}
	public void setRelatives(Relatives relatives) {
		this.relatives = relatives;
	}
	public Address getAddress() {
		return address;
	}
	public void setAddress(Address address) {
		this.address = address;
	}
	public String getRelativesName() {
		return relativesName;
	}
	public void setRelativesName(String relativesName) {
		this.relativesName = relativesName;
	}
	public String getRelativesPeopleAddressName() {
		return relativesPeopleAddressName;
	}
	public void setRelativesPeopleAddressName(String relativesPeopleAddressName) {
		this.relativesPeopleAddressName = relativesPeopleAddressName;
	}
	public String getRelativesPeopleName() {
		return relativesPeopleName;
	}
	public void setRelativesPeopleName(String relativesPeopleName) {
		this.relativesPeopleName = relativesPeopleName;
	}
	public String getRelativesTelephone() {
		return relativesTelephone;
	}
	public void setRelativesTelephone(String relativesTelephone) {
		this.relativesTelephone = relativesTelephone;
	}
	@Override
	public String toString() {
		return "RelativesAndAddressAndTypeExpand [type=" + type
				+ ", relatives=" + relatives + ", address=" + address
				+ ", relativesName=" + relativesName
				+ ", relativesPeopleAddressName=" + relativesPeopleAddressName
				+ ", relativesPeopleName=" + relativesPeopleName
				+ ", relativesTelephone=" + relativesTelephone + "]";
	}

}
