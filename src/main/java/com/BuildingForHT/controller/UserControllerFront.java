package com.BuildingForHT.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.BuildingForHT.entity.User;
import com.BuildingForHT.jsonFormat.Response;
import com.BuildingForHT.service.UserServiceFront;

@Controller
@RequestMapping("/F/User")
@SuppressWarnings("finally")
public class UserControllerFront {

	@Autowired
	private UserServiceFront userInstance;
	
	
	@RequestMapping(value = "/login.final" , method = RequestMethod.POST)
	@ResponseBody
	public Response userLogin(String userAccount,String userPassword,HttpSession session ) {
		
		Response response = new Response();
		User user = null;
		
		try {
			user = userInstance.userLogin(userAccount, userPassword);
			
			if( user!= null) {
				session.setAttribute("front_user", user);
				response.success(user);
			}else {
				response.failure();
			}
		}catch (Exception e) {
			e.printStackTrace();
			response.failure("·þÎñÆ÷´íÎó");
		}finally {
			return response;
		}
	}
}
