package com.HT_building.entity;

public class Charge {
	
	private int chargeLevel;
	private double minArea;
	private double maxArea;
	private double cost;
	public int getChargeLevel() {
		return chargeLevel;
	}
	public void setChargeLevel(int chargeLevel) {
		this.chargeLevel = chargeLevel;
	}
	public double getMinArea() {
		return minArea;
	}
	public void setMinArea(double minArea) {
		this.minArea = minArea;
	}
	public double getMaxArea() {
		return maxArea;
	}
	public void setMaxArea(double maxArea) {
		this.maxArea = maxArea;
	}
	public double getCost() {
		return cost;
	}
	public void setCost(double cost) {
		this.cost = cost;
	}
	@Override
	public String toString() {
		return "Charge [chargeLevel=" + chargeLevel + ", minArea=" + minArea + ", maxArea=" + maxArea + ", cost=" + cost
				+ "]";
	}
	
}
