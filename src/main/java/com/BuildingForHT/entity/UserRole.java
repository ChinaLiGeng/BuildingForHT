package com.BuildingForHT.entity;

public class UserRole {
	
	private int userRoleId;
	private int userId;
	private int roleId;
	private int userRoleState;   //0表示删除；1表示存在
	
	public int getUserRoleId() {
		return userRoleId;
	}
	
	public void setUserRoleId(int userRoleId) {
		this.userRoleId = userRoleId;
	}
	
	public int getUserId() {
		return userId;
	}
	
	public void setUserId(int userId) {
		this.userId = userId;
	}
	
	public int getRoleId() {
		return roleId;
	}
	
	public void setRoleId(int roleId) {
		this.roleId = roleId;
	}
	
	public int getUserRoleState() {
		return userRoleState;
	}
	
	public void setUserRoleState(int userRoleState) {
		this.userRoleState = userRoleState;
	}

	@Override
	public String toString() {
		return "UserRole [userRoleId=" + userRoleId + ", userId=" + userId + ", roleId=" + roleId + ", userRoleState="
				+ userRoleState + "]";
	}
}
