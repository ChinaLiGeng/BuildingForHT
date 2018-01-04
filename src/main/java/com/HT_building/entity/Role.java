package com.HT_building.entity;

public class Role {
	
	private int roleId;
	private String roleName;
	private int roleState;                //0表示删除；1表示存在
	private int constructionId;
	private int factoryId;
	
	public int getRoleId() {
		return roleId;
	}
	
	public void setRoleId(int roleId) {
		this.roleId = roleId;
	}
	
	public String getRoleName() {
		return roleName;
	}
	
	public void setRoleName(String roleName) {
		this.roleName = roleName;
	}
	
	public int getRoleState() {
		return roleState;
	}
	
	public void setRoleState(int roleState) {
		this.roleState = roleState;
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
		return "Role [roleId=" + roleId + ", roleName=" + roleName + ", roleState=" + roleState + ", constructionId="
				+ constructionId + ", factoryId=" + factoryId + "]";
	}
	
}
