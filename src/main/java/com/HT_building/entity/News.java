package com.HT_building.entity;

public class News {
	
	private int newsId;
	private String title;
	private String info;
	private String newsTime;
	private String mainPic;
	public int getNewsId() {
		return newsId;
	}
	public void setNewsId(int newsId) {
		this.newsId = newsId;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getInfo() {
		return info;
	}
	public void setInfo(String info) {
		this.info = info;
	}
	public String getNewsTime() {
		return newsTime;
	}
	public void setNewsTime(String newsTime) {
		this.newsTime = newsTime;
	}
	public String getMainPic() {
		return mainPic;
	}
	public void setMainPic(String mainPic) {
		this.mainPic = mainPic;
	}
	@Override
	public String toString() {
		return "News [newsId=" + newsId + ", title=" + title + ", info=" + info + ", newsTime=" + newsTime
				+ ", mainPic=" + mainPic + "]";
	}
	
}
