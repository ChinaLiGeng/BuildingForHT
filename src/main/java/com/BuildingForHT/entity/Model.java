package com.BuildingForHT.entity;

import java.util.List;

public class Model {
	
	private int modelId;
	private int userId;
	private int beType;   			//1表示管理员录入；2表示用户
	private int state;     			//0表示删除；1表示存在
	private int floorNumber;
	private double buildingArea;
	private double landArea;
	private String createTime; 
	private String objPath;
	private String mtlPath;
	private int quoteModel;   		//引用的方案
	private String suggestion;
	private int designFee; 			//普通用户设计的没有设计费
	private String mainPic;
	private int designState;        //1表示待审核；2表示专业团队修改完毕；3表示审计计算完毕；4表示同意下单；5表示否决
	private List<EffectPic> effectPic;
	private List<HouseLayout> houseLayout;
	private List<ModelAssembly> modelAss;
	
	public int getModelId() {
		return modelId;
	}
	
	public void setModelId(int modelId) {
		this.modelId = modelId;
	}
	
	public int getUserId() {
		return userId;
	}
	
	public void setUserId(int userId) {
		this.userId = userId;
	}
	
	public int getBeType() {
		return beType;
	}
	
	public void setBeType(int beType) {
		this.beType = beType;
	}
	
	public int getState() {
		return state;
	}
	
	public void setState(int state) {
		this.state = state;
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
	
	public int getQuoteModel() {
		return quoteModel;
	}
	
	public void setQuoteModel(int quoteModel) {
		this.quoteModel = quoteModel;
	}
	
	public String getSuggestion() {
		return suggestion;
	}
	
	public void setSuggestion(String suggestion) {
		this.suggestion = suggestion;
	}
	
	public int getDesignFee() {
		return designFee;
	}
	
	public void setDesignFee(int designFee) {
		this.designFee = designFee;
	}
	
	public String getMainPic() {
		return mainPic;
	}
	
	public void setMainPic(String mainPic) {
		this.mainPic = mainPic;
	}
	
	public int getDesignState() {
		return designState;
	}
	
	public void setDesignState(int designState) {
		this.designState = designState;
	}
	
	public List<EffectPic> getEffectPic() {
		return effectPic;
	}
	
	public void setEffectPic(List<EffectPic> effectPic) {
		this.effectPic = effectPic;
	}
	
	public List<HouseLayout> getHouseLayout() {
		return houseLayout;
	}
	
	public void setHouseLayout(List<HouseLayout> houseLayout) {
		this.houseLayout = houseLayout;
	}
	
	public List<ModelAssembly> getModelAss() {
		return modelAss;
	}

	public void setModelAss(List<ModelAssembly> modelAss) {
		this.modelAss = modelAss;
	}

	@Override
	public String toString() {
		return "Model [modelId=" + modelId + ", userId=" + userId + ", beType=" + beType + ", state=" + state
				+ ", floorNumber=" + floorNumber + ", buildingArea=" + buildingArea + ", landArea=" + landArea
				+ ", createTime=" + createTime + ", objPath=" + objPath + ", mtlPath=" + mtlPath + ", quoteModel="
				+ quoteModel + ", suggestion=" + suggestion + ", designFee=" + designFee + ", mainPic=" + mainPic
				+ ", designState=" + designState + ", effectPic=" + effectPic + ", houseLayout=" + houseLayout
				+ ", modelAss=" + modelAss + "]";
	}
}