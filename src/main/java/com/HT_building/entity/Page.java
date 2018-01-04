package com.HT_building.entity;

public class Page {
	
	private int pageId;
	private String pageName;
	private int pageState;  //0表示删除；1表示存在
	private int powerId;
	
	public int getPageId() {
		return pageId;
	}
	public void setPageId(int pageId) {
		this.pageId = pageId;
	}
	public String getPageName() {
		return pageName;
	}
	public void setPageName(String pageName) {
		this.pageName = pageName;
	}
	public int getPageState() {
		return pageState;
	}
	public void setPageState(int pageState) {
		this.pageState = pageState;
	}
	public int getPowerId() {
		return powerId;
	}
	public void setPowerId(int powerId) {
		this.powerId = powerId;
	}
	@Override
	public String toString() {
		return "Page [pageId=" + pageId + ", pageName=" + pageName + ", pageState=" + pageState + ", powerId=" + powerId
				+ "]";
	}

}
