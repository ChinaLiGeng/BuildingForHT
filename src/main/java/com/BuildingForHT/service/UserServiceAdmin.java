package com.BuildingForHT.service;

import java.util.List;
import java.util.Map;

import com.BuildingForHTadminBase.ServiceBase;
import com.BuildingForHT.entity.FaMenu;
import com.BuildingForHT.entity.User;

public interface UserServiceAdmin extends ServiceBase<User>{
	
	/*****************************************�û�********************************************/
	
	/** 
	 * @Method: userLogin 
	 * @Description: �û���¼��������Ҫ�ж��û�����û������û���Ȼ���ٴ��û���ɫ���в�����û�и��û���Ӧ�Ľ�ɫ��
	 * @author ZHM  
	 * @date 2017��11��10�� ����4:29:33 
	 * @return Map<String,Object>   
	*/
	Map<String, Object> userLogin(User user);
	
	/*****************************************��ɫ********************************************/
	
	/*****************************************Ȩ��********************************************/
	
	/** 
	 * @Method: getAllMenuPowers 
	 * @Description: ��ȡ����û������еĲ˵�Ȩ��
	 * @author ZHM  
	 * @date 2017��11��10�� ����4:45:49 
	 * @return List<FaMenu>   
	*/
	List<FaMenu> getAllMenuPowers(User user);
}
