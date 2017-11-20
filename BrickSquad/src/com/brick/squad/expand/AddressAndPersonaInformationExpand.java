package com.brick.squad.expand;

import com.brick.squad.pojo.Address;
import com.brick.squad.pojo.PersonalInformation;
import com.brick.squad.pojo.Relatives;

/**
 * 地址与个人信息的扩展类，
 * 
 * @author 吴文鑫 修改
 */
public class AddressAndPersonaInformationExpand {
	private Address address;
	private PersonalInformation personalInformation;
	private Relatives relatives;
	private Address rAddress;
	

	public Address getrAddress() {
		return rAddress;
	}

	public void setrAddress(Address rAddress) {
		this.rAddress = rAddress;
	}

	public Relatives getRelatives() {
		return relatives;
	}

	public void setRelatives(Relatives relatives) {
		this.relatives = relatives;
	}

	/**
	 * @return the address
	 */
	public Address getAddress() {
		return address;
	}

	/**
	 * @param address
	 *            the address to set
	 */
	public void setAddress(Address address) {
		this.address = address;
	}

	/**
	 * @return the personalInformation
	 */
	public PersonalInformation getPersonalInformation() {
		return personalInformation;
	}

	/**
	 * @param personalInformation
	 *            the personalInformation to set
	 */
	public void setPersonalInformation(PersonalInformation personalInformation) {
		this.personalInformation = personalInformation;
	}

}
