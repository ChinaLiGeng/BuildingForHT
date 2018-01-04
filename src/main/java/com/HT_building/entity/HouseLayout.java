package com.HT_building.entity;

public class HouseLayout {
	
	private int layoutId;
	private int  modelId;
	private String pic;
	private int state;   //0表示删除；1表示存在
	private int floor;
	private double floorHeight;
	private String layoutJson;
	private double acreage;
	
	public int getLayoutId() {
		return layoutId;
	}
	public void setLayoutId(int layoutId) {
		this.layoutId = layoutId;
	}
	public int getModelId() {
		return modelId;
	}
	public void setModelId(int modelId) {
		this.modelId = modelId;
	}
	public String getPic() {
		return pic;
	}
	public void setPic(String pic) {
		this.pic = pic;
	}
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
	}
	public int getFloor() {
		return floor;
	}
	public void setFloor(int floor) {
		this.floor = floor;
	}
	public double getFloorHeight() {
		return floorHeight;
	}
	public void setFloorHeight(double floorHeight) {
		this.floorHeight = floorHeight;
	}
	public String getLayoutJson() {
		return layoutJson;
	}
	public void setLayoutJson(String layoutJson) {
		this.layoutJson = layoutJson;
	}
	public double getAcreage() {
		return acreage;
	}
	public void setAcreage(double acreage) {
		this.acreage = acreage;
	}
	@Override
	public String toString() {
		return "HouseLayout [layoutId=" + layoutId + ", modelId=" + modelId + ", pic=" + pic + ", state=" + state
				+ ", floor=" + floor + ", floorHeight=" + floorHeight + ", layoutJson=" + layoutJson + ", acreage="
				+ acreage + "]";
	}
	
}
