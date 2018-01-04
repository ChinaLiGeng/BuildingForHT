package com.BuildingForHT.entity;

public class ModelExaminePeo {

	private int merId;
	private int modelId;
	private int modifier;
	private int auditor;
	private String auditorDate;
	private String modiferDate;
	private int state;      			//0表示删除；1表示存在
	
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
		return "ModelExaminePeo [merId=" + merId + ", modelId=" + modelId + ", modifier=" + modifier + ", auditor="
				+ auditor + ", auditorDate=" + auditorDate + ", modiferDate=" + modiferDate + ", state=" + state + "]";
	}
	
}