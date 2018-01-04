package com.HT_building.entity;

public class Assembly {
	
	private int assemblyId;
	private int typeId;
	private String assemblyJson;
	private String number;
	private int state;    //0表示删除；1表示存在
	private double width;
	private double heigth;
	private double weight;
	private String reinforcingBars;
	private double length;
	
	public int getAssemblyId() {
		return assemblyId;
	}
	public void setAssemblyId(int assemblyId) {
		this.assemblyId = assemblyId;
	}
	public int getTypeId() {
		return typeId;
	}
	public void setTypeId(int typeId) {
		this.typeId = typeId;
	}
	public String getAssemblyJson() {
		return assemblyJson;
	}
	public void setAssemblyJson(String assemblyJson) {
		this.assemblyJson = assemblyJson;
	}
	public String getNumber() {
		return number;
	}
	public void setNumber(String number) {
		this.number = number;
	}
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
	}
	public double getWidth() {
		return width;
	}
	public void setWidth(double width) {
		this.width = width;
	}
	public double getHeigth() {
		return heigth;
	}
	public void setHeigth(double heigth) {
		this.heigth = heigth;
	}
	public double getWeight() {
		return weight;
	}
	public void setWeight(double weight) {
		this.weight = weight;
	}
	public String getReinforcingBars() {
		return reinforcingBars;
	}
	public void setReinforcingBars(String reinforcingBars) {
		this.reinforcingBars = reinforcingBars;
	}
	public double getLength() {
		return length;
	}
	public void setLength(double length) {
		this.length = length;
	}
	@Override
	public String toString() {
		return "Assembly [assemblyId=" + assemblyId + ", typeId=" + typeId + ", assemblyJson=" + assemblyJson
				+ ", number=" + number + ", state=" + state + ", width=" + width + ", heigth=" + heigth + ", weight="
				+ weight + ", reinforcingBars=" + reinforcingBars + ", length=" + length + "]";
	}

}
