package com.HT_building.entity;

public class ModelExamineRecord {

	private int merId;
	private int modelId;
	private String modelNumber;
	private int modifier;
	private int auditor;
	private String auditorDate;
	private String modiferDate;
	private int state;      //0表示删除；1表示存在
	
	public int getMerId() {
		return merId;
	}
	public void setMerId(int merId) {
		this.merId = merId;
	}
	public int getModelId() {
		return modelId;
	}
	public void setModelId(int modelId) {
		this.modelId = modelId;
	}
	public String getModelNumber() {
		return modelNumber;
	}
	public void setModelNumber(String modelNumber) {
		this.modelNumber = modelNumber;
	}
	public int getModifier() {
		return modifier;
	}
	public void setModifier(int modifier) {
		this.modifier = modifier;
	}
	public int getAuditor() {
		return auditor;
	}
	public void setAuditor(int auditor) {
		this.auditor = auditor;
	}
	public String getAuditorDate() {
		return auditorDate;
	}
	public void setAuditorDate(String auditorDate) {
		this.auditorDate = auditorDate;
	}
	public String getModiferDate() {
		return modiferDate;
	}
	public void setModiferDate(String modiferDate) {
		this.modiferDate = modiferDate;
	}
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
	}
	@Override
	public String toString() {
		return "ModelExamineRecord [merId=" + merId + ", modelId=" + modelId + ", modelNumber=" + modelNumber
				+ ", modifier=" + modifier + ", auditor=" + auditor + ", auditorDate=" + auditorDate + ", modiferDate="
				+ modiferDate + ", state=" + state + "]";
	}
	
}
