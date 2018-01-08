package com.BuildingForHT.dao;

import java.util.List;

import com.BuildingForHTadminBase.DaoBase;
import com.BuildingForHT.entity.FaMenu;
import com.BuildingForHT.entity.Menu;
import com.BuildingForHT.entity.Role;
import com.BuildingForHT.entity.User;

public interface UserDaoAdmin extends DaoBase<User> {

/*****************************************用户********************************************/
	
	/**
	 * 
	 * @Method: isExitUser 
	 * @Description: 判断是否存在该账号
	 * @author ZHM  
	 * @date 2017年11月10日 下午8:18:56 
	 * @return User
	 */
	User isExitUser(User user);
	
	/*****************************************角色********************************************/
	
	/** 
	 * @Method: getRolesByUser 
	 * @Description: 查找这个用户所有的角色
	 * @author ZHM  
	 * @date 2017年11月10日 下午9:41:19 
	 * @return List<Role>   
	*/
	List<Role> getRolesByUser(User user);
	
	/*****************************************权限********************************************/
	
	/** 
	 * @Method: getAllMenuPowers 
	 * @Description: 获取这个用户所具有的菜单权限
	 * @author ZHM  
	 * @date 2017年11月10日 下午9:41:39 
	 * @return List<FaMenu>   
	*/
	List<FaMenu> getAllMenuPowers(User user);
	
	/** 
	 * @Method: getMenuPowersByFa 
	 * @Description: 根据父类菜单id和用户id查找这个用户在这个父类菜单下对应的子类菜单
	 * @author ZHM  
	 * @date 2017年11月10日 下午9:41:55 
	 * @return List<Menu>   
	*/
	List<Menu> getMenuPowersByFa(int faMenuId,int userId);
}
