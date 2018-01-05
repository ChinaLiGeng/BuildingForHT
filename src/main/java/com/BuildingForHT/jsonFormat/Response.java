package com.BuildingForHT.jsonFormat;

/**
 * json统一格式
 * {
		"meta": {
			"success": true/false,
			"message":...
		},
		"data": ...
		"number":...
	}
 *
 */

public class Response {
	
	private Meta meta;  
	private Object data;  
	private int number;
    public Response success() {  
        this.meta = new Meta(true);  
        return this;  
    }  
	  
    public Response success(Object data) {  
        this.meta = new Meta(true);  
        this.data = data;
        return this;  
    } 
    
    public Response success(Object data,int number) {  
        this.meta = new Meta(true);  
        this.data = data;
        this.number = number;
        return this;  
    } 
    
    public Response failure() {  
        this.meta = new Meta(false);  
        return this;  
    }
    
    public Response failure(String message) {  
        this.meta = new Meta(false,message);  
        return this;  
    }
  
    public Meta getMeta() {  
        return meta;  
    }  
  
    public Object getData() {  
        return data;  
    }
    
	public int getNumber() {
		return number;
	}

	public void setNumber(int number) {
		this.number = number;
	}

	@Override
	public String toString() {
		return "Response [meta=" + meta + ", data=" + data + ", number=" + number + "]";
	}

	

	
}

