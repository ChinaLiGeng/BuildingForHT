package com.HT_building.entity;

public class ModAsmb {
	
	private int maId;
	private int modelId;
	private int assemblyId;
	private int number;
	private int state;      //0��ʾɾ����1��ʾ����
	private int factoryId;  //������������
	private int productState; //1��ʾ�����У�2��ʾ������
	
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
