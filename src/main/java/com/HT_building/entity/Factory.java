package com.HT_building.entity;

public class Factory {
	
	private int factoryId;
	private String name;
	private double lng;
	private double lat;
	private String address;
	private String phone;
	private String mainPic;
	private int state;       //0表示删除；1表示存在
	private String bankAccount;
	
	public int getFactoryId() {
		return factoryId;
	}
	public void setFactoryId(int factoryId) {
		this.factoryId = factoryId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public double getLng() {
		return lng;
	}
	public void setLng(double lng) {
		this.lng = lng;
	}
	public double getLat() {
		return lat;
	}
	public void setLat(double lat) {
		this.lat = lat;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getMainPic() {
		return mainPic;
	}
	public void setMainPic(String mainPic) {
		this.mainPic = mainPic;
	}
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
	}
	public String getBankAccount() {
		return bankAccount;
	}
	public void setBankAccount(String bankAccount) {
		this.bankAccount = bankAccount;
	}
	@Override
	public String toString() {
		return "Factory [factoryId=" + factoryId + ", name=" + name + ", lng=" + lng + ", lat=" + lat + ", address="
				+ address + ", phone=" + phone + ", mainPic=" + mainPic + ", state=" + state + ", bankAccount="
				+ bankAccount + "]";
	}
	
}
