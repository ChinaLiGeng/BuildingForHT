package com.BuildingForHT.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.BuildingForHT.dao.UserDaoFront;
import com.BuildingForHT.entity.User;
import com.BuildingForHT.service.UserServiceFront;

@Service
public class UserServiceImplFront implements UserServiceFront {

	@Autowired
	private UserDaoFront userInstance;

	@Override
	public User userLogin(String userAccount,String userPassword) {
		User result = userInstance.userLogin(userAccount, userPassword);
		return result;
	}
}
