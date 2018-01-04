package com.BuildingForHT.entity;

public class RoleMenu {
	
	private int roleMenuId;
	private int roleId;
	private int menuId;
	private int roleMenuState;  //0表示删除；1表示存在
	
	public int getRoleMenuId() {
		return roleMenuId;
	}
	public void setRoleMenuId(int roleMenuId) {
		this.roleMenuId = roleMenuId;
	}
	public int getRoleId() {
		return roleId;
	}
	public void setRoleId(int roleId) {
		this.roleId = roleId;
	}
	public int getMenuId() {
		return menuId;
	}
	public void setMenuId(int menuId) {
		this.menuId = menuId;
	}
	public int getRoleMenuState() {
		return roleMenuState;
	}
	public void setRoleMenuState(int roleMenuState) {
		this.roleMenuState = roleMenuState;
	}
	@Override
	public String toString() {
		return "RoleMenu [roleMenuId=" + roleMenuId + ", roleId=" + roleId + ", menuId=" + menuId + ", roleMenuState="
				+ roleMenuState + "]";
	}
	
}
