package com.BuildingForHT.entity;

public class OrderTable {

	private int orderId;
	private int modelId;
	private int userId;      			//�µ��˺�
	private String userPhone;
	private int orderFee;
	private int state;
	private String address;
	private String createTime;
	private int trackState;  			//ʩ��״̬��0��ʾĬ��δ֧�����״̬��1��ʾ����δ���䣻2��ʾ�����ѷ��䣬���������׶Σ�3��ʾԤԼ��װ��4��ʾ��װ�У�5��ʾ��װ��ɣ�����������6��ʾ����ȡ��
	private String userName;
	private String mainPic;
	
	
	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getMainPic() {
		return mainPic;
	}

	public void setMainPic(String mainPic) {
		this.mainPic = mainPic;
	}

	public int getOrderId() {
		return orderId;
	}

	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}

	public int getModelId() {
		return modelId;
	}

	public void setModelId(int modelId) {
		this.modelId = modelId;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public String getUserPhone() {
		return userPhone;
	}

	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}

	public int getOrderFee() {
		return orderFee;
	}

	public void setOrderFee(int orderFee) {
		this.orderFee = orderFee;
	}

	public int getState() {
		return state;
	}

	public void setState(int state) {
		this.state = state;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getCreateTime() {
		return createTime;
	}

	public void setCreateTime(String createTime) {
		this.createTime = createTime;
	}

	public int getTrackState() {
		return trackState;
	}

	public void setTrackState(int trackState) {
		this.trackState = trackState;
	}

	@Override
	public String toString() {
		return "OrderTable [orderId=" + orderId + ", modelId=" + modelId + ", userId=" + userId + ", userPhone="
				+ userPhone + ", orderFee=" + orderFee + ", state=" + state + ", address=" + address + ", createTime="
				+ createTime + ", trackState=" + trackState + ", userName=" + userName + ", mainPic=" + mainPic + "]";
	}

	
	
}