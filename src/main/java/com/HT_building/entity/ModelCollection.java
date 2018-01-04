package com.HT_building.entity;

public class ModelCollection {
	
	private int collectionId;
	private int modelId;
	private int userId;
	
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
	@Override
	public String toString() {
		return "ModelCollection [collectionId=" + collectionId + ", modelId=" + modelId + ", userId=" + userId + "]";
	}
	
}
