package com.HT_building.entity;

public class UserRole {
	
	private int userRoleId;
	private int userId;
	private int roleId;
	private int userRoleState;   //0表示删除；1表示存在
	private int constructionId;
	private int factoryId;
	
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
	
	public int getConstructionId() {
		return constructionId;
	}
	
	public void setConstructionId(int constructionId) {
		this.constructionId = constructionId;
	}
	
	public int getFactoryId() {
		return factoryId;
	}
	
	public void setFactoryId(int factoryId) {
		this.factoryId = factoryId;
	}

	@Override
	public String toString() {
		return "UserRole [userRoleId=" + userRoleId + ", userId=" + userId + ", roleId=" + roleId + ", userRoleState="
				+ userRoleState + ", constructionId=" + constructionId + ", factoryId=" + factoryId + "]";
	}
	
}
