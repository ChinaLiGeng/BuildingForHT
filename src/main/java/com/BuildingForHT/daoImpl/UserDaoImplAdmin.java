package com.BuildingForHT.daoImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.BuildingForHT.dao.UserDaoAdmin;
import com.BuildingForHT.entity.FaMenu;
import com.BuildingForHT.entity.Menu;
import com.BuildingForHT.entity.Role;
import com.BuildingForHT.entity.User;

@Repository
public class UserDaoImplAdmin implements UserDaoAdmin{

	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	@Override
	public User isExitUser(User user) {
		
		User result = null;
		String sql = "select userId,userPic from user where userAccount = ? and userPassword = ? and userState = ?";
		Object[] param = {user.getUserAccount(),user.getUserPassword(),1};
		try {
			result =  jdbcTemplate.queryForObject(sql, param, new BeanPropertyRowMapper<User>(User.class));
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	@Override
	public List<Role> getRolesByUser(User user) {

		List<Role> result = null;
		String sql = "select r.roleId,roleName from role r,userrole ur where ur.userId = ? and ur.roleId = r.roleId and roleState = ? and userRoleState = ?";
		Object[] param = {user.getUserId(),1,1};
		try {
			result =  jdbcTemplate.query(sql,param,new BeanPropertyRowMapper(Role.class));
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	@Override
	public List<FaMenu> getAllMenuPowers(User user) {
		
		List<FaMenu> result = null;
		String sql = "select distinct fm.faMenuId,faMenuName from fa_menu fm,menu m,userrole ur,rolemenu rm,role r where ur.userId = ? and userRoleState = ? "
					+ "and ur.roleId = r.roleId and roleState = ? and r.roleId = rm.roleId and roleMenuState = ? and rm.menuId = m.menuId and menuState = ? and m.faMenuId = fm.faMenuId and faMenuState = ?";
		Object[] param = {user.getUserId(),1,1,1,1,1};
		try {
			result = jdbcTemplate.query(sql,param,new BeanPropertyRowMapper(FaMenu.class));
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	@Override
	public List<Menu> getMenuPowersByFa(int faMenuId, int userId) {
		
		List<Menu> result = null;
		String sql = "select distinct menuName,menuUrl from fa_menu fm,menu m,userrole ur,rolemenu rm,role r where ur.userId = ? and userRoleState = ? "
					+ "and ur.roleId = r.roleId and roleState = ? and r.roleId = rm.roleId and roleMenuState = ? and rm.menuId = m.menuId and menuState = ? and m.faMenuId = fm.faMenuId and faMenuState = ? and fm.faMenuId = ?";
		Object[] param = {userId,1,1,1,1,1,faMenuId};
		try {
			result =  jdbcTemplate.query(sql,param,new BeanPropertyRowMapper(Menu.class));
		} catch (Exception e) {
			e.printStackTrace();
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
	public boolean insert(List<User> t) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public User find(Object... args) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean insert(User t) {
		// TODO Auto-generated method stub
		return false;
	}


	

}
