package com.HT_building.entity;

import java.util.List;

public class FaMenu {

	private int faMenuId;
	private String faMenuName;
	private int faMenuState;                //0表示删除；1表示存在
	private int powerId;
	private List<Menu> menus;               //子类菜单
	
	public int getFaMenuId() {
		return faMenuId;
	}
	
	public void setFaMenuId(int faMenuId) {
		this.faMenuId = faMenuId;
	}
	
	public String getFaMenuName() {
		return faMenuName;
	}
	
	public void setFaMenuName(String faMenuName) {
		this.faMenuName = faMenuName;
	}
	
	public int getFaMenuState() {
		return faMenuState;
	}
	
	public void setFaMenuState(int faMenuState) {
		this.faMenuState = faMenuState;
	}
	
	public int getPowerId() {
		return powerId;
	}
	
	public void setPowerId(int powerId) {
		this.powerId = powerId;
	}
	
	public List<Menu> getMenus() {
		return menus;
	}
	
	public void setMenus(List<Menu> menus) {
		this.menus = menus;
	}

	@Override
	public String toString() {
		return "FaMenu [faMenuId=" + faMenuId + ", faMenuName=" + faMenuName + ", faMenuState=" + faMenuState
				+ ", powerId=" + powerId + ", menus=" + menus + "]";
	}
}
