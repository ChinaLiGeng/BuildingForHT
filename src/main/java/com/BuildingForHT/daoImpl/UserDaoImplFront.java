package com.BuildingForHT.daoImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.BuildingForHT.dao.UserDaoFront;
import com.BuildingForHT.entity.Model;
import com.BuildingForHT.entity.User;

@Repository
@SuppressWarnings("finally")
public class UserDaoImplFront implements UserDaoFront {

	@Autowired
	private JdbcTemplate jdbcTemplate;

	@Override
	public User userLogin(String userAccount,String userPassword) {
		
		User result = null;
		String sql = "select * from user where userAccount = ? and userPassword= ? and userState = ?";
		Object []params = {userAccount,userPassword,1};
		
		try {
			result = jdbcTemplate.queryForObject(sql, params, new BeanPropertyRowMapper<User>(User.class));
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			return result;
		}
	}
}
