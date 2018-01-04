package com.HT_building.entity;

public class PriceList {
	
	private int listId;
	private int modelId;
	private String listEach;
	private double price;
	private int state;     //0表示删除；1表示存在
	
	public int getListId() {
		return listId;
	}
	public void setListId(int listId) {
		this.listId = listId;
	}
	public int getModelId() {
		return modelId;
	}
	public void setModelId(int modelId) {
		this.modelId = modelId;
	}
	public String getListEach() {
		return listEach;
	}
	public void setListEach(String listEach) {
		this.listEach = listEach;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
	}
	@Override
	public String toString() {
		return "PriceList [listId=" + listId + ", modelId=" + modelId + ", listEach=" + listEach + ", price=" + price
				+ ", state=" + state + "]";
	}
	
}
