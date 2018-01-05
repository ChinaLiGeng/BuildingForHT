package com.BuildingForHT.entity;

public class ModelComment {

	private int commentId;
	private int userId;
	private int modelId;
	private int state;
	private String context;
	private String createTime;
	private String userName;
	private String userPic;
	
	public int getCommentId() {
		return commentId;
	}

	public void setCommentId(int commentId) {
		this.commentId = commentId;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public int getModelId() {
		return modelId;
	}

	public void setModelId(int modelId) {
		this.modelId = modelId;
	}

	public int getState() {
		return state;
	}

	public void setState(int state) {
		this.state = state;
	}

	public String getContext() {
		return context;
	}

	public void setContext(String context) {
		this.context = context;
	}
	
	public String getCreateTime() {
		return createTime;
	}

	public void setCreateTime(String createTime) {
		this.createTime = createTime;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserPic() {
		return userPic;
	}

	public void setUserPic(String userPic) {
		this.userPic = userPic;
	}

	@Override
	public String toString() {
		return "ModelComment [commentId=" + commentId + ", userId=" + userId + ", modelId=" + modelId + ", state="
				+ state + ", context=" + context + ", createTime=" + createTime + ", userName=" + userName
				+ ", userPic=" + userPic + "]";
	}
	
}
