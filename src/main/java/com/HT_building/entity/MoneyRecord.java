package com.HT_building.entity;

public class MoneyRecord {

	private int recordId;
	private int type;     //1表示收入；2表示支出
	private String expenditure;
	private String income;
	private double money;
	private String flowTime;
	private String info;
	
	public int getRecordId() {
		return recordId;
	}
	public void setRecordId(int recordId) {
		this.recordId = recordId;
	}
	public int getType() {
		return type;
	}
	public void setType(int type) {
		this.type = type;
	}
	public String getExpenditure() {
		return expenditure;
	}
	public void setExpenditure(String expenditure) {
		this.expenditure = expenditure;
	}
	public String getIncome() {
		return income;
	}
	public void setIncome(String income) {
		this.income = income;
	}
	public double getMoney() {
		return money;
	}
	public void setMoney(double money) {
		this.money = money;
	}
	public String getFlowTime() {
		return flowTime;
	}
	public void setFlowTime(String flowTime) {
		this.flowTime = flowTime;
	}
	public String getInfo() {
		return info;
	}
	public void setInfo(String info) {
		this.info = info;
	}
	@Override
	public String toString() {
		return "MoneyRecord [recordId=" + recordId + ", type=" + type + ", expenditure=" + expenditure + ", income="
				+ income + ", money=" + money + ", flowTime=" + flowTime + ", info=" + info + "]";
	}
	
}
