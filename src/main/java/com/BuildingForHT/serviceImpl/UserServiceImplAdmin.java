package com.BuildingForHT.serviceImpl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.BuildingForHT.dao.UserDaoAdmin;
import com.BuildingForHT.entity.FaMenu;
import com.BuildingForHT.entity.Menu;
import com.BuildingForHT.entity.Role;
import com.BuildingForHT.entity.User;
import com.BuildingForHT.globle.Constants;
import com.BuildingForHT.service.UserServiceAdmin;

@Service
public class UserServiceImplAdmin implements UserServiceAdmin{

	@Autowired
	private UserDaoAdmin daoInstance;
	
	@Override
	public Map<String, Object> userLogin(User user) {

		Map<String, Object> userMap = new  HashMap<String, Object>();          //存储用户对象，用户所对应的角色
		User result = null;
		result = daoInstance.isExitUser(user);                                 //查询是否存在这个用户
		userMap.put(Constants.LOGIN_MAP_USER, result);
		
		if( result == null ){                   //用户不存在
			
			return userMap;
		}
		List<Role> roles = daoInstance.getRolesByUser(result);
		userMap.put(Constants.LOGIN_MAP_ROLES, roles);
		return userMap;
	}

	@Override
	public List<FaMenu> getAllMenuPowers(User user) {
		
		List<FaMenu> result = null;
		result = daoInstance.getAllMenuPowers(user);
		for (FaMenu faMenu : result) {
			
			List<Menu> menus = daoInstance.getMenuPowersByFa(faMenu.getFaMenuId(), user.getUserId());
			faMenu.setMenus(menus);
		}
		return result;
	}

	@Override
	public boolean update(User t) {
		// TODO Auto-generated method stub
		return false;
	}



	@Override
	public List<User> findAll(int page, Object... args) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int getNumbers(Object... args) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public boolean insert(User t) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean insert(List<User> t) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public User find(Integer id) {
		// TODO Auto-generated method stub
		return null;
	}

}
