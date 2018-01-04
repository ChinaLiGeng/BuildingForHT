package com.HT_building.entity;

public class ModiRecord {
	
	private int modifyId;
	private int orderId;
	private int modelId;
	private String Path;
	private String suggestion;
	private String modifyInfo;
	private int state;
	private String modifyTime;
	private int version;
	private boolean isSatisfy;
	private int designerId;
	private int userId;
	public int getModifyId() {
		return modifyId;
	}
	public void setModifyId(int modifyId) {
		this.modifyId = modifyId;
	}
	public int getOrderId() {
		return orderId;
	}
	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}
	public int getModelId() {
		return modelId;
	}
	public void setModelId(int modelId) {
		this.modelId = modelId;
	}
	public String getPath() {
		return Path;
	}
	public void setPath(String Path) {
		this.Path = Path;
	}
	public String getSuggestion() {
		return suggestion;
	}
	public void setSuggestion(String suggestion) {
		this.suggestion = suggestion;
	}
	public String getModifyInfo() {
		return modifyInfo;
	}
	public void setModifyInfo(String modifyInfo) {
		this.modifyInfo = modifyInfo;
	}
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
	}
	public String getModifyTime() {
		return modifyTime;
	}
	public void setModifyTime(String modifyTime) {
		this.modifyTime = modifyTime;
	}
	public int getVersion() {
		return version;
	}
	public void setVersion(int version) {
		this.version = version;
	}
	public boolean isSatisfy() {
		return isSatisfy;
	}
	public void setSatisfy(boolean isSatisfy) {
		this.isSatisfy = isSatisfy;
	}
	public int getDesignerId() {
		return designerId;
	}
	public void setDesignerId(int designerId) {
		this.designerId = designerId;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	@Override
	public String toString() {
		return "ModiRecord [modifyId=" + modifyId + ", orderId=" + orderId + ", modelId=" + modelId + ", Path=" + Path
				+ ", suggestion=" + suggestion + ", modifyInfo=" + modifyInfo + ", state=" + state + ", modifyTime="
				+ modifyTime + ", version=" + version + ", isSatisfy=" + isSatisfy + ", designerId=" + designerId
				+ ", userId=" + userId + "]";
	}
	
}
