package com.brick.squad.pojo;

/**
 * 
 * @author 赵荣坤 地址表
 */
public class Address {
	private String id;
	private String provinceId;
	private String cityId;
	private String countyId;
	private String countryId;
	private String detailed;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getProvinceId() {
		return provinceId;
	}

	public void setProvinceId(String provinceId) {
		this.provinceId = provinceId;
	}

	public String getCityId() {
		return cityId;
	}

	public void setCityId(String cityId) {
		this.cityId = cityId;
	}

	public String getCountyId() {
		return countyId;
	}

	public void setCountyId(String countyId) {
		this.countyId = countyId;
	}

	public String getCountryId() {
		return countryId;
	}

	public void setCountryId(String countryId) {
		this.countryId = countryId;
	}

	public String getDetailed() {
		return detailed;
	}

	public void setDetailed(String detailed) {
		this.detailed = detailed;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "Address [id=" + id + ", provinceId=" + provinceId + ", cityId="
				+ cityId + ", countyId=" + countyId + ", countryId="
				+ countryId + ", detailed=" + detailed + "]";
	}

}
