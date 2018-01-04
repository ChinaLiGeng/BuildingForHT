package com.BuildingForHT.jsonFormat;

public class Meta {

	private boolean isSuccess;         //�ɹ���־
	private String message;            //������Ϣ
	
	Meta( boolean isSuccess ){                   //�ɹ�
		this.isSuccess = isSuccess;
	}
	
	Meta( boolean isSuccess,String message ){    //ʧ��
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
