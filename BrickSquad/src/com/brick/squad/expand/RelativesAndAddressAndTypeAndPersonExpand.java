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
	private Relatives relatives;
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
