package com.HT_building.entity;

import java.util.List;

public class Model {
	private int modId;
	private int userId;
	private int stdChargeId;
	private String modNumber;
	private int beType;   //1表示普通用户，2表示在线设计师，3表示管理员录入
	private int style;
	private int state;     //0表示删除；1表示上架（审核通过）；2表示未上架（审核未通过）；3表示审核中   
	private String ownerName;
	private int floorNumber;
	private double buildingArea;
	private double landArea;
	private String createTime; 
	private String rvtPath;
	private String jsonPath;
	private Integer quoteCount;
	private int quoteMod;
	private String address;
	private int designFee; //普通用户设计的没有设计费
	private String mainPic;

	private List<EffectPic> effectPic;
	private List<HouseLayout> houseLayout;
	private List<ModAsmb> modAsmb;
	public int getModId() {
		return modId;
	}
	public void setModId(int modId) {
		this.modId = modId;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public int getStdChargeId() {
		return stdChargeId;
	}
	public void setStdChargeId(int stdChargeId) {
		this.stdChargeId = stdChargeId;
	}
	public String getModNumber() {
		return modNumber;
	}
	public void setModNumber(String modNumber) {
		this.modNumber = modNumber;
	}
	public int getBeType() {
		return beType;
	}
	public void setBeType(int beType) {
		this.beType = beType;
	}
	public int getStyle() {
		return style;
	}
	public void setStyle(int style) {
		this.style = style;
	}
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
	}
	public String getOwnerName() {
		return ownerName;
	}
	public void setOwnerName(String ownerName) {
		this.ownerName = ownerName;
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
	public String getRvtPath() {
		return rvtPath;
	}
	public void setRvtPath(String rvtPath) {
		this.rvtPath = rvtPath;
	}
	public String getJsonPath() {
		return jsonPath;
	}
	public void setJsonPath(String jsonPath) {
		this.jsonPath = jsonPath;
	}
	public Integer getQuoteCount() {
		return quoteCount;
	}
	public void setQuoteCount(Integer quoteCount) {
		this.quoteCount = quoteCount;
	}
	public int getQuoteMod() {
		return quoteMod;
	}
	public void setQuoteMod(int quoteMod) {
		this.quoteMod = quoteMod;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
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
	public List<ModAsmb> getModAsmb() {
		return modAsmb;
	}
	public void setModAsmb(List<ModAsmb> modAsmb) {
		this.modAsmb = modAsmb;
	}
	@Override
	public String toString() {
		return "Mod [modId=" + modId + ", userId=" + userId + ", stdChargeId=" + stdChargeId + ", modNumber="
				+ modNumber + ", beType=" + beType + ", style=" + style + ", state=" + state + ", ownerName="
				+ ownerName + ", floorNumber=" + floorNumber + ", buildingArea=" + buildingArea + ", landArea="
				+ landArea + ", createTime=" + createTime + ", rvtPath=" + rvtPath + ", jsonPath=" + jsonPath
				+ ", quoteCount=" + quoteCount + ", quoteMod=" + quoteMod + ", address=" + address + ", designFee="
				+ designFee + ", mainPic=" + mainPic + ", effectPic=" + effectPic + ", houseLayout=" + houseLayout
				+ ", modAsmb=" + modAsmb + "]";
	}
	
}
