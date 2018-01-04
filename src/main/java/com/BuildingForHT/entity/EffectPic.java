package com.BuildingForHT.entity;

public class EffectPic {
	
	private int picId;
	private int modelId;
	private int modiId;
	private String pic;
	private String direction;
	private int type;  				//1表示立面图；2表示轴测图
	private int state;				//0表示删除；1表示存在
	
	public int getPicId() {
		return picId;
	}

	public void setPicId(int picId) {
		this.picId = picId;
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

	public String getPic() {
		return pic;
	}

	public void setPic(String pic) {
		this.pic = pic;
	}

	public String getDirection() {
		return direction;
	}

	public void setDirection(String direction) {
		this.direction = direction;
	}

	public int getType() {
		return type;
	}

	public void setType(int type) {
		this.type = type;
	}

	public int getState() {
		return state;
	}

	public void setState(int state) {
		this.state = state;
	}

	@Override
	public String toString() {
		return "EffectPic [picId=" + picId + ", modelId=" + modelId + ", modiId=" + modiId + ", pic=" + pic
				+ ", direction=" + direction + ", type=" + type + ", state=" + state + "]";
	}
	
}