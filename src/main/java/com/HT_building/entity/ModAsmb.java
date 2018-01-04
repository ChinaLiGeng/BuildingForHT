package com.HT_building.entity;

public class ModAsmb {
	
	private int maId;
	private int modelId;
	private int assemblyId;
	private int number;
	private int state;      //0表示删除；1表示存在
	private int factoryId;  //构件生产工厂
	private int productState; //1表示生产中；2表示已生产
	
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
	public int getFactoryId() {
		return factoryId;
	}
	public void setFactoryId(int factoryId) {
		this.factoryId = factoryId;
	}
	public int getProductState() {
		return productState;
	}
	public void setProductState(int productState) {
		this.productState = productState;
	}
	@Override
	public String toString() {
		return "ModelAssembly [maId=" + maId + ", modelId=" + modelId + ", assemblyId=" + assemblyId + ", number="
				+ number + ", state=" + state + ", factoryId=" + factoryId + ", productState=" + productState + "]";
	}

}
