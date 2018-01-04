package com.HT_building.entity;

public class FactoryType {
	
	private int ftId;
	private int factoryId;
	private int typeId;
	private int state;  //0表示删除；1表示存在
	
	public int getFtId() {
		return ftId;
	}
	public void setFtId(int ftId) {
		this.ftId = ftId;
	}
	public int getFactoryId() {
		return factoryId;
	}
	public void setFactoryId(int factoryId) {
		this.factoryId = factoryId;
	}
	public int getTypeId() {
		return typeId;
	}
	public void setTypeId(int typeId) {
		this.typeId = typeId;
	}
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
	}
	@Override
	public String toString() {
		return "FactoryType [ftId=" + ftId + ", factoryId=" + factoryId + ", typeId=" + typeId + ", state=" + state
				+ "]";
	}

}
