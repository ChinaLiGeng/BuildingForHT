package com.BuildingForHT.jsonFormat;

public class Meta {

	private boolean isSuccess;         //成功标志
	private String message;            //错误信息
	
	Meta( boolean isSuccess ){                   //成功
		this.isSuccess = isSuccess;
	}
	
	Meta( boolean isSuccess,String message ){    //失败
		this.isSuccess = isSuccess;
		this.message = message;
	}

	public boolean isSuccess() {
		return isSuccess;
	}

	public String getMessage() {
		return message;
	}

	@Override
	public String toString() {
		return "Meta [isSuccess=" + isSuccess + ", message=" + message + "]";
	}
}
