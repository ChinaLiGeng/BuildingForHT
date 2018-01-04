package com.HT_building.entity;

public class Checkout {
	
	private int checkoutId;
	private int state;      //0��ʾɾ����1��ʾ����
	private int orderId;
	private int type;      //1��ʾ������2��ʾʩ������3��ʾ���ʦ
	private int fcdId;     //�����ǹ���id��ʩ����id�����ʦid
	private double firstFee;
	private double secondFee;
	public int getCheckoutId() {
		return checkoutId;
	}
	public void setCheckoutId(int checkoutId) {
		this.checkoutId = checkoutId;
	}
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
	}
	public int getOrderId() {
		return orderId;
	}
	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}
	public int getType() {
		return type;
	}
	public void setType(int type) {
		this.type = type;
	}
	public int getFcdId() {
		return fcdId;
	}
	public void setFcdId(int fcdId) {
		this.fcdId = fcdId;
	}
	public double getFirstFee() {
		return firstFee;
	}
	public void setFirstFee(double firstFee) {
		this.firstFee = firstFee;
	}
	public double getSecondFee() {
		return secondFee;
	}
	public void setSecondFee(double secondFee) {
		this.secondFee = secondFee;
	}
	@Override
	public String toString() {
		return "Checkout [checkoutId=" + checkoutId + ", state=" + state + ", orderId=" + orderId + ", type=" + type
				+ ", fcdId=" + fcdId + ", firstFee=" + firstFee + ", secondFee=" + secondFee + "]";
	}
	
}
