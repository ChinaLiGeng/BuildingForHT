package com.BuildingForHT.entity;

public class ModelRecord {
	
	private int modiId;
	private int modelId;
	private String objPath;
	private String mtlPath;
	private String suggestion;
	private String modifyInfo;
	private int state;                           //0表示删除；1表示存在
	private int version;							//版本
	private boolean isSatisfy;					//0表示不满意；1表示满意
	private int price;							//审计算出的价格
	private int floorNumber;
	private double buildingArea;
	private double landArea;
	private String createTime; 
	
	public int getModiId() {
		return modiId;
	}

	public void setModiId(int modiId) {
		this.modiId = modiId;
	}

	public int getModelId() {
		return modelId;
	}

	public void setModelId(int modelId) {
		this.modelId = modelId;
	}

	public String getObjPath() {
		return objPath;
	}

	public void setObjPath(String objPath) {
		this.objPath = objPath;
	}

	public String getMtlPath() {
		return mtlPath;
	}

	public void setMtlPath(String mtlPath) {
		this.mtlPath = mtlPath;
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

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}
	
	public int getFloorNumber() {
		return floorNumber;
	}

	public void setFloorNumber(int floorNumber) {
		this.floorNumber = floorNumber;
	}

	public double getBuildingArea() {
		return buildingArea;
	}

	public void setBuildingArea(double buildingArea) {
		this.buildingArea = buildingArea;
	}

	public double getLandArea() {
		return landArea;
	}

	public void setLandArea(double landArea) {
		this.landArea = landArea;
	}

	public String getCreateTime() {
		return createTime;
	}

	public void setCreateTime(String createTime) {
		this.createTime = createTime;
	}

	@Override
	public String toString() {
		return "ModelRecord [modiId=" + modiId + ", modelId=" + modelId + ", objPath=" + objPath + ", mtlPath="
				+ mtlPath + ", suggestion=" + suggestion + ", modifyInfo=" + modifyInfo + ", state=" + state
				+ ", version=" + version + ", isSatisfy=" + isSatisfy + ", price=" + price + ", floorNumber="
				+ floorNumber + ", buildingArea=" + buildingArea + ", landArea=" + landArea + ", createTime="
				+ createTime + "]";
	}
}