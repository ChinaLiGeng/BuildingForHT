package com.HT_building.entity;

public class AssemblyType {
	
	private int typeId;
	private String name;
	private int state;  //0表示删除；1表示存在
	
	public int getTypeId() {
		return typeId;
	}
	public void setTypeId(int typeId) {
		this.typeId = typeId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
	}
	@Override
	public String toString() {
		return "AssemblyType [typeId=" + typeId + ", name=" + name + ", state=" + state + "]";
	}
	
}
