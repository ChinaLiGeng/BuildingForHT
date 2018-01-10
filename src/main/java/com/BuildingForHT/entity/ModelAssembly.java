package com.BuildingForHT.entity;

public class ModelAssembly {
	
	private int maId;
	private int modelId;
	private int modiId;
	private int assemblyId;
	private int number;
	private int state;      			//0表示删除；1表示存在
	private String name;             //构件名称
	private String numberId;         //构件编号
	private double width;
	private double heigth;
	private String reinforcingBars;
	private double length;
	
	public int getMaId() {
		return maId;
	}

	public void setMaId(int maId) {
		this.maId = maId;
	}

	public int getModelId() {
		return modelId;
	}

	public void setModelId(int modelId) {
		this.modelId = modelId;
	}

	public int getModiId() {
		return modiId;
	}

	public void setModiId(int modiId) {
		this.modiId = modiId;
	}

	public int getAssemblyId() {
		return assemblyId;
	}

	public void setAssemblyId(int assemblyId) {
		this.assemblyId = assemblyId;
	}

	public int getNumber() {
		return number;
	}

	public void setNumber(int number) {
		this.number = number;
	}

	public int getState() {
		return state;
	}

	public void setState(int state) {
		this.state = state;
	}
	
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getNumberId() {
		return numberId;
	}

	public void setNumberId(String numberId) {
		this.numberId = numberId;
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
		return "ModelAssembly [maId=" + maId + ", modelId=" + modelId + ", modiId=" + modiId + ", assemblyId="
				+ assemblyId + ", number=" + number + ", state=" + state + ", name=" + name + ", numberId=" + numberId
				+ ", width=" + width + ", heigth=" + heigth + ", reinforcingBars=" + reinforcingBars + ", length="
				+ length + "]";
	}

}