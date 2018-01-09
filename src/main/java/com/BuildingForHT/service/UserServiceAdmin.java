package com.BuildingForHT.service;

import java.util.List;
import java.util.Map;

import com.BuildingForHTadminBase.ServiceBase;
import com.BuildingForHT.entity.FaMenu;
import com.BuildingForHT.entity.User;

public interface UserServiceAdmin extends ServiceBase<User>{
	
	/*****************************************用户********************************************/
	
	/** 
	 * @Method: userLogin 
	 * @Description: 用户登录（首先需要判断用户表有没有这个用户，然后再从用户角色表中查找有没有该用户对应的角色）
	 * @author ZHM  
	 * @date 2017年11月10日 下午4:29:33 
	 * @return Map<String,Object>   
	*/
	Map<String, Object> userLogin(User user);
	
	/*****************************************角色********************************************/
	
	/*****************************************权限********************************************/
	
	/** 
	 * @Method: getAllMenuPowers 
	 * @Description: 获取这个用户所具有的菜单权限
	 * @author ZHM  
	 * @date 2017年11月10日 下午4:45:49 
	 * @return List<FaMenu>   
	*/
	List<FaMenu> getAllMenuPowers(User user);
}
