package com.BuildingForHT.dao;

import java.util.List;

import com.BuildingForHTadminBase.DaoBase;
import com.BuildingForHT.entity.FaMenu;
import com.BuildingForHT.entity.Menu;
import com.BuildingForHT.entity.Role;
import com.BuildingForHT.entity.User;

public interface UserDaoAdmin extends DaoBase<User> {

/*****************************************�û�********************************************/
	
	/**
	 * 
	 * @Method: isExitUser 
	 * @Description: �ж��Ƿ���ڸ��˺�
	 * @author ZHM  
	 * @date 2017��11��10�� ����8:18:56 
	 * @return User
	 */
	User isExitUser(User user);
	
	/*****************************************��ɫ********************************************/
	
	/** 
	 * @Method: getRolesByUser 
	 * @Description: ��������û����еĽ�ɫ
	 * @author ZHM  
	 * @date 2017��11��10�� ����9:41:19 
	 * @return List<Role>   
	*/
	List<Role> getRolesByUser(User user);
	
	/*****************************************Ȩ��********************************************/
	
	/** 
	 * @Method: getAllMenuPowers 
	 * @Description: ��ȡ����û������еĲ˵�Ȩ��
	 * @author ZHM  
	 * @date 2017��11��10�� ����9:41:39 
	 * @return List<FaMenu>   
	*/
	List<FaMenu> getAllMenuPowers(User user);
	
	/** 
	 * @Method: getMenuPowersByFa 
	 * @Description: ���ݸ���˵�id���û�id��������û����������˵��¶�Ӧ������˵�
	 * @author ZHM  
	 * @date 2017��11��10�� ����9:41:55 
	 * @return List<Menu>   
	*/
	List<Menu> getMenuPowersByFa(int faMenuId,int userId);
}
