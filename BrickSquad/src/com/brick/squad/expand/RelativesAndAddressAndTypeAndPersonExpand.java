package com.brick.squad.expand;

import com.brick.squad.pojo.Address;
import com.brick.squad.pojo.PersonalInformation;
import com.brick.squad.pojo.Relatives;
import com.brick.squad.pojo.Type;

/**
 * Relatives的AddressAndTypeAndPerson拓展类
 * @author 赵荣坤
 *
 */
public class RelativesAndAddressAndTypeAndPersonExpand{
	private Address address;
	private Type type;
	private PersonalInformation personalInformation;
	private String perName;
	private Relatives relatives;
	private String relName;
	private String tyName;
	private String relPhone;
	
	public String getTyName() {
		return tyName;
	}
	public void setTyName(String tyName) {
		this.tyName = tyName;
	}
	public String getRelPhone() {
		return relPhone;
	}
	public void setRelPhone(String relPhone) {
		this.relPhone = relPhone;
	}
	public String getRelName() {
		return relName;
	}
	public void setRelName(String relName) {
		this.relName = relName;
	}
	public String getPerName() {
		return perName;
	}
	public void setPerName(String perName) {
		this.perName = perName;
	}
	public Address getAddress() {
		return address;
	}
	public void setAddress(Address address) {
		this.address = address;
	}
	public Type getType() {
		return type;
	}
	public void setType(Type type) {
		this.type = type;
	}
	public PersonalInformation getPersonalInformation() {
		return personalInformation;
	}
	public void setPersonalInformation(PersonalInformation personalInformation) {
		this.personalInformation = personalInformation;
	}
	public Relatives getRelatives() {
		return relatives;
	}
	public void setRelatives(Relatives relatives) {
		this.relatives = relatives;
	}
	
}
