package com.BuildingForHT.entity;

public class Power {
	
	private int powerId;
	private String powerName;
	private int powerState;//0表示删除；1表示存在
	
	public int getPowerId() {
		return powerId;
	}
	public void setPowerId(int powerId) {
		this.powerId = powerId;
	}
	public String getPowerName() {
		return powerName;
	}
	public void setPowerName(String powerName) {
		this.powerName = powerName;
	}
	public int getPowerState() {
		return powerState;
	}
	public void setPowerState(int powerState) {
		this.powerState = powerState;
	}
	@Override
	public String toString() {
		return "Power [powerId=" + powerId + ", powerName=" + powerName + ", powerState=" + powerState + "]";
	}

}
