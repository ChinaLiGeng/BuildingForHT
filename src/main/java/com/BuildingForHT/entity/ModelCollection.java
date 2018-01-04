package com.BuildingForHT.entity;

public class ModelCollection {
	
	private int collectionId;
	private int modelId;
	private int userId;
	private int state; 				//0表示删除；1表示存在
	
	public int getCollectionId() {
		return collectionId;
	}
	
	public void setCollectionId(int collectionId) {
		this.collectionId = collectionId;
	}
	
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
	
	public int getState() {
		return state;
	}

	public void setState(int state) {
		this.state = state;
	}

	@Override
	public String toString() {
		return "ModelCollection [collectionId=" + collectionId + ", modelId=" + modelId + ", userId=" + userId
				+ ", state=" + state + "]";
	}

}
