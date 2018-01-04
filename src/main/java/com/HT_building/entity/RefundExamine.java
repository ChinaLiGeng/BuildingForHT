package com.HT_building.entity;

public class RefundExamine {
	
	private int reId;
	private int orderId;
	private int state;     //0��ʾɾ����1��ʾ����
	private String refundReason;
	private int examineState;  //0��ʾδ��ˣ�1��ʾ���ͨ����2��ʾ���δͨ��
	private double refundFee;
	private int userId;
	
	public int getReId() {
		return reId;
	}
	public void setReId(int reId) {
		this.reId = reId;
	}
	public int getOrderId() {
		return orderId;
	}
	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
	}
	public String getRefundReason() {
		return refundReason;
	}
	public void setRefundReason(String refundReason) {
		this.refundReason = refundReason;
	}
	public int getExamineState() {
		return examineState;
	}
	public void setExamineState(int examineState) {
		this.examineState = examineState;
	}
	public double getRefundFee() {
		return refundFee;
	}
	public void setRefundFee(double refundFee) {
		this.refundFee = refundFee;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	@Override
	public String toString() {
		return "RefundExamine [reId=" + reId + ", orderId=" + orderId + ", state=" + state + ", refundReason="
				+ refundReason + ", examineState=" + examineState + ", refundFee=" + refundFee + ", userId=" + userId
				+ "]";
	}
	
}
