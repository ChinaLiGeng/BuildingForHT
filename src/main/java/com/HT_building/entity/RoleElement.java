package com.HT_building.entity;

public class RoleElement {
	
	private int roleelementId;
	private int roleId;
	private int elementId;
	private int roleElementState;  //0表示删除；1表示存在
	
	public int getRoleelementId() {
		return roleelementId;
	}
	public void setRoleelementId(int roleelementId) {
		this.roleelementId = roleelementId;
	}
	public int getRoleId() {
		return roleId;
	}
	public void setRoleId(int roleId) {
		this.roleId = roleId;
	}
	public int getElementId() {
		return elementId;
	}
	public void setElementId(int elementId) {
		this.elementId = elementId;
	}
	public int getRoleElementState() {
		return roleElementState;
	}
	public void setRoleElementState(int roleElementState) {
		this.roleElementState = roleElementState;
	}
	@Override
	public String toString() {
		return "RoleElement [roleelementId=" + roleelementId + ", roleId=" + roleId + ", elementId=" + elementId
				+ ", roleElementState=" + roleElementState + "]";
	}
	
}
