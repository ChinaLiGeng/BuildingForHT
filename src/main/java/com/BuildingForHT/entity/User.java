package com.BuildingForHT.entity;

import javax.validation.constraints.NotNull;

public class User {
	
	private int userId;
	
	@NotNull(message = "�˺Ų���Ϊ��")
	private String userAccount;
	
	@NotNull(message = "���벻��Ϊ��")
	private String userPassword;
	
	private String userEmail;
	private String userPhone;
	private int userState;  //0��ʾɾ����1��ʾ��
	private String idCard;
	private String userSex;  //��/Ů
	private String userPic;
	private String address;
	private String info;
	private String userName;
	
	public String updateSql() {
		StringBuffer strb = new StringBuffer();
		strb.append("UPDATE `user` set ");
		isNull(this.userPassword, strb, "userPassword");
		isNull(this.userEmail, strb, "userEmail");
		isNull(this.userPhone, strb, "userPhone");
		isNull(this.userState, strb, "userState");
		isNull(this.idCard, strb, "idCard");
		isNull(this.userSex, strb, "userSex");
		isNull(this.userPic, strb, "userPic");
		isNull(this.address, strb, "address");
		
		strb.delete(strb.length()-3, strb.length());
		strb.append(" where userId="+this.userId);
		return strb.toString();
	}
	
	private void isNull(Object obj,StringBuffer strb,String name) {
		//1����Ϊ�� 2������Ϊ�� 3StringΪ�� 4String��Ϊ��
		int falg = 0;
		if(obj instanceof Integer)
			falg =  (int) obj==0?1:2;
		else
			falg = obj==null?3:4;
		if(falg==2)
			strb.append("`"+name+"`="+obj+" , ");
		else if(falg==4)
			strb.append("`"+name+"`='"+obj+"' , ");
	}
	
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getUserAccount() {
		return userAccount;
	}
	public void setUserAccount(String userAccount) {
		this.userAccount = userAccount;
	}
	public String getUserPassword() {
		return userPassword;
	}
	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	public String getUserPhone() {
		return userPhone;
	}
	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}
	public int getUserState() {
		return userState;
	}
	public void setUserState(int userState) {
		this.userState = userState;
	}
	public String getIdCard() {
		return idCard;
	}
	public void setIdCard(String idCard) {
		this.idCard = idCard;
	}
	public String getUserSex() {
		return userSex;
	}
	public void setUserSex(String userSex) {
		this.userSex = userSex;
	}
	public String getUserPic() {
		return userPic;
	}
	public void setUserPic(String userPic) {
		this.userPic = userPic;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	
	public String getInfo() {
		return info;
	}

	public void setInfo(String info) {
		this.info = info;
	}
	
	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	@Override
	public String toString() {
		return "User [userId=" + userId + ", userAccount=" + userAccount + ", userPassword=" + userPassword
				+ ", userEmail=" + userEmail + ", userPhone=" + userPhone + ", userState=" + userState + ", idCard="
				+ idCard + ", userSex=" + userSex + ", userPic=" + userPic + ", address=" + address + ", info=" + info
				+ ", userName=" + userName + "]";
	}
}
