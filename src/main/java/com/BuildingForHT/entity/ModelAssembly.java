package com.BuildingForHT.entity;

public class ModelAssembly {
	
	private int maId;
	private int modelId;
	private int modiId;
	private int assemblyId;
	private int number;
	private int state;      			//0表示删除；1表示存在
	
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

	@Override
	public String toString() {
		return "ModelAssembly [maId=" + maId + ", modelId=" + modelId + ", modiId=" + modiId + ", assemblyId="
				+ assemblyId + ", number=" + number + ", state=" + state + "]";
	}
	
}