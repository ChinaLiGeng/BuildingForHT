package com.BuildingForHT.entity;

public class Menu {
	
	private int menuId;
	private String menuUrl;  //点击跳转的url
	private String menuName;
	private int menuState;  //0表示删除；1表示存在
	private int faMenuId;
	
	public int getMenuId() {
		return menuId;
	}
	public void setMenuId(int menuId) {
		this.menuId = menuId;
	}
	public String getMenuUrl() {
		return menuUrl;
	}
	public void setMenuUrl(String menuUrl) {
		this.menuUrl = menuUrl;
	}
	public String getMenuName() {
		return menuName;
	}
	public void setMenuName(String menuName) {
		this.menuName = menuName;
	}
	public int getMenuState() {
		return menuState;
	}
	public void setMenuState(int menuState) {
		this.menuState = menuState;
	}
	public int getFaMenuId() {
		return faMenuId;
	}
	public void setFaMenuId(int faMenuId) {
		this.faMenuId = faMenuId;
	}
	@Override
	public String toString() {
		return "Menu [menuId=" + menuId + ", menuUrl=" + menuUrl + ", menuName=" + menuName + ", menuState=" + menuState
				+ ", faMenuId=" + faMenuId + "]";
	}

}
