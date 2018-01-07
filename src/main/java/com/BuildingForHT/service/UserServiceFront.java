package com.BuildingForHT.service;

import com.BuildingForHT.entity.User;

public interface UserServiceFront {

	/**
	 * 
	 * @Method：userLogin
	 * @Description：user login
	 * @author：Snail
	 * @date：2018年1月7日 下午3:25:43
	 * @return：User
	 */
	User userLogin(String userAccount,String userPassword);
}
