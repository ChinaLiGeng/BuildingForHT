package com.BuildingForHT.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.BuildingForHT.entity.FaMenu;
import com.BuildingForHT.entity.User;
import com.BuildingForHT.globle.Constants;
import com.BuildingForHT.jsonFormat.Response;
import com.BuildingForHT.service.UserServiceAdmin;

@Controller
@RequestMapping("/Ad/User")
public class UserAdmController {
	
	@Autowired
	private UserServiceAdmin userInstance;
	
	private final String NO_ACCOUNT = "账号不存在或密码错误";
	private final String NO_ROLE = "该账号没有相应的角色";
	
	//user login
	@RequestMapping(value = "/login.htm" , method = RequestMethod.POST)
	@ResponseBody
	public ModelAndView login(User user, ModelAndView model, HttpServletRequest request, HttpSession session,HttpServletResponse response) throws ServletException, IOException{
		
		Map<String,Object> map = new HashMap<String, Object>();
		map = userInstance.userLogin(user);
		
		if( !map.containsKey(Constants.LOGIN_MAP_ROLES) ){                 //不存在该账号
			
			model.addObject(Constants.LOGIN_ERROR, NO_ACCOUNT);
			model.setViewName("forward:../../Admin/Login/Login.jsp");
			return model;
		}
		if( ((List)map.get(Constants.LOGIN_MAP_ROLES)).size() == 0 ){      //没有对应的角色
			
			model.addObject(Constants.LOGIN_ERROR, NO_ROLE);
			model.setViewName("forward:../../Admin/Login/Login.jsp");
			return model;
		}
		
		session.setAttribute(Constants.ADMIN_USER_SESSION, map);           //将用户对象存进session
		
		model.setViewName("forward:../../Admin/Index/index.html");
		return model;
	}
	
	//to create menu dynamically
	@RequestMapping(value = "/nav.json", method = RequestMethod.POST)
	@ResponseBody
	public Response createMenu(HttpSession session){
		
		Response response = new Response();
		Map userSession = (HashMap)session.getAttribute(Constants.ADMIN_USER_SESSION);
		if( userSession == null ){
			response.failure("用户未登录");
			return response;
		}
		
		User user = (User) userSession.get(Constants.LOGIN_MAP_USER);
		if( user == null ){
			response.failure("用户未登录");
			return response;
		}
		
		try{
			List<FaMenu> menus = userInstance.getAllMenuPowers(user);
			System.out.println(menus);
			response.success(menus);
		}catch(Exception e){
			response.failure("服务器错误");
			e.printStackTrace();
		}finally {
			return response;
		}
	}
}
