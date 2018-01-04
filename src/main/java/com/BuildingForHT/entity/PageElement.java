package com.BuildingForHT.entity;

public class PageElement {
	
	private int elementId;
	private String elementName;
	private int elementState;  //0表示删除；1表示存在
	private int pageId;
	
	public int getElementId() {
		return elementId;
	}
	public void setElementId(int elementId) {
		this.elementId = elementId;
	}
	public String getElementName() {
		return elementName;
	}
	public void setElementName(String elementName) {
		this.elementName = elementName;
	}
	public int getElementState() {
		return elementState;
	}
	public void setElementState(int elementState) {
		this.elementState = elementState;
	}
	public int getPageId() {
		return pageId;
	}
	public void setPageId(int pageId) {
		this.pageId = pageId;
	}
	@Override
	public String toString() {
		return "PageElement [elementId=" + elementId + ", elementName=" + elementName + ", elementState=" + elementState
				+ ", pageId=" + pageId + "]";
	}
	
}
