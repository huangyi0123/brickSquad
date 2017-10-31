package com.brick.squad.expand;

import com.brick.squad.pojo.Address;
import com.brick.squad.pojo.Relatives;

/**
 * 
 * @author 吴文鑫
 *
 */
public class RelativesAndAddressExpand {
private Relatives relatives;
private Address address;
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
@Override
public String toString() {
	return "RelativesAndAddressExpand [relatives=" + relatives + ", address="
			+ address + "]";
}

}
