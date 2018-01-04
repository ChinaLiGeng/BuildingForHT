package com.HT_building.entity;

public class OrderTable {

	private Integer orderId;
	private Integer modId;
	private Integer modiId;
	private Integer desId;
	private Integer userId;      //下单账号
	private Integer constructionId;
	private Integer managerId;
	private String orderNumber;
	private String modNumber;
	private String mainPic;
	private String userName;
	private String desName;
	private String userPhone;
	private String desPhone;
	private Integer modiLimit;
	private Integer desFee;
	private Integer consFee;
	private Integer state;
	private String address;
	private String orderTime;
	private String managerName;
    private Integer desState;
	private Integer consState;  //1表示订单未分配；2表示订单已分配，生产阶段；3表示预约安装；4表示安装中；5表示安装完成，订单结束
	private Integer basicCons;    //1表示未施工；2表示施工中；3表示施工完毕
	private boolean isPay;     //这里表示平台是否给工厂、施工方、设计师全部结账。0表示没有全部结账；1表示全部结账
	
	public Integer getOrderId() {
		return orderId;
	}
	public void setOrderId(Integer orderId) {
		this.orderId = orderId;
	}
	public Integer getModId() {
		return modId;
	}
	public void setModId(Integer modId) {
		this.modId = modId;
	}
	public Integer getModiId() {
		return modiId;
	}
	public void setModiId(Integer modiId) {
		this.modiId = modiId;
	}
	public Integer getDesId() {
		return desId;
	}
	public void setDesId(Integer desId) {
		this.desId = desId;
	}
	public Integer getUserId() {
		return userId;
	}
	public void setUserId(Integer userId) {
		this.userId = userId;
	}
	public Integer getConstructionId() {
		return constructionId;
	}
	public void setConstructionId(Integer constructionId) {
		this.constructionId = constructionId;
	}
	public Integer getManagerId() {
		return managerId;
	}
	public void setManagerId(Integer managerId) {
		this.managerId = managerId;
	}
	public String getModNumber() {
		return modNumber;
	}
	public void setModNumber(String modNumber) {
		this.modNumber = modNumber;
	}
	public String getMainPic() {
		return mainPic;
	}
	public void setMainPic(String mainPic) {
		this.mainPic = mainPic;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getDesName() {
		return desName;
	}
	public void setDesName(String desName) {
		this.desName = desName;
	}
	public String getUserPhone() {
		return userPhone;
	}
	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}
	public String getDesPhone() {
		return desPhone;
	}
	public void setDesPhone(String desPhone) {
		this.desPhone = desPhone;
	}
	public Integer getModiLimit() {
		return modiLimit;
	}
	public void setModiLimit(Integer modiLimit) {
		this.modiLimit = modiLimit;
	}
	
	public Integer getState() {
		return state;
	}
	public void setState(Integer state) {
		this.state = state;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	
	public String getManagerName() {
		return managerName;
	}
	public void setManagerName(String managerName) {
		this.managerName = managerName;
	}
	public Integer getDesState() {
		return desState;
	}
	public void setDesState(Integer desState) {
		this.desState = desState;
	}
	public Integer getConsState() {
		return consState;
	}
	public void setConsState(Integer consState) {
		this.consState = consState;
	}
	public Integer getBasicCons() {
		return basicCons;
	}
	public void setBasicCons(Integer basicCons) {
		this.basicCons = basicCons;
	}
	public boolean isPay() {
		return isPay;
	}
	public void setPay(boolean isPay) {
		this.isPay = isPay;
	}
	@Override
	public String toString() {
		return "OrderTable [orderId=" + orderId + ", modId=" + modId + ", modiId=" + modiId + ", desId=" + desId
				+ ", userId=" + userId + ", constructionId=" + constructionId + ", managerId=" + managerId
				+ ",orderNumber="+orderNumber+", modNumber=" + modNumber + ", mainPic=" + mainPic + ", userName=" + userName + ", desName="
				+ desName + ", userPhone=" + userPhone + ", desPhone=" + desPhone + ", modiLimit=" + modiLimit
				+ ", desFee=" + desFee + ",consFee="+consFee+", state=" + state + ", address=" + address + ", createTime=" + orderTime
				+ ", managerName=" + managerName + ", desState=" + desState + ", consState=" + consState
				+ ", basicCons=" + basicCons + ", isPay=" + isPay + "]";
	}
	public String getOrderNumber() {
		return orderNumber;
	}
	public void setOrderNumber(String orderNumber) {
		this.orderNumber = orderNumber;
	}
	public Integer getDesFee() {
		return desFee;
	}
	public void setDesFee(Integer desFee) {
		this.desFee = desFee;
	}
	public Integer getConsFee() {
		return consFee;
	}
	public void setConsFee(Integer consFee) {
		this.consFee = consFee;
	}
	public String getOrderTime() {
		return orderTime;
	}
	public void setOrderTime(String orderTime) {
		this.orderTime = orderTime;
	}
	
}
