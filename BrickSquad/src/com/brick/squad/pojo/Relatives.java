package com.brick.squad.pojo;

/**
 * 老人亲属关系
 * 
 * @author 梁城月
 * 
 */
public class Relatives {
	private String id;
	private String perId;
	private String name;
	private String telephone;
	private String addressId;
	private String relationshipId;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPerId() {
		return perId;
	}

	public void setPerId(String perId) {
		this.perId = perId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getTelephone() {
		return telephone;
	}

	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}

	public String getAddressId() {
		return addressId;
	}

	public void setAddressId(String addressId) {
		this.addressId = addressId;
	}

	public String getRelationshipId() {
		return relationshipId;
	}

	public void setRelationshipId(String relationshipId) {
		this.relationshipId = relationshipId;
	}

	@Override
	public String toString() {
		return "Relatives [id=" + id + ", perId=" + perId + ", name=" + name
				+ ", telephone=" + telephone + ", addressId=" + addressId
				+ ", relationshipId=" + relationshipId + "]";
	}

}
