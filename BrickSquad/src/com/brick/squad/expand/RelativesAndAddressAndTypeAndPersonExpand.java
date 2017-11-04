package com.brick.squad.expand;

import javax.validation.constraints.Pattern;

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
	@Pattern(regexp="^((13\\d{9}$)|(15[0,1,2,3,5,6,7,8,9]\\d{8}$)|(18[0,2,5,6,7,8,9]\\d{8}$)|(147\\d{8})$)",message="请您输入正确的手机号码")
	private String relphone;
	
	public String getRelphone() {
		return relphone;
	}
	public void setRelphone(String relphone) {
		this.relphone = relphone;
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
