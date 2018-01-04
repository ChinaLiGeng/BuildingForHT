package com.BuildingForHT.daoImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.BuildingForHT.dao.ModelDaoFront;
import com.BuildingForHT.entity.EffectPic;
import com.BuildingForHT.entity.HouseLayout;
import com.BuildingForHT.entity.Model;

@Repository
@SuppressWarnings("finally")
public class ModelDaoImplFront implements ModelDaoFront{

	@Autowired
	private JdbcTemplate jdbcTemplate;

	
	@Override
	public Model getModelEntity(int modelId) {
		
		Model model = null;
		String sql = "select * from model where modelId = ?";
		Object []params = {modelId};
		
		try {
			model = jdbcTemplate.queryForObject(sql, params, new BeanPropertyRowMapper<Model>(Model.class));
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			return model;
		}
	}

	@Override
	public List<EffectPic> getEffectPics(int modelId) {
		
		List<EffectPic> pics = null;
		String sql = "select * from effectpic where modelId = ? and state = ?";
		Object []params = {modelId,1};
		
		try {
			pics = jdbcTemplate.query(sql, params, new BeanPropertyRowMapper(EffectPic.class));
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			return pics;
		}
	}

	@Override
	public List<HouseLayout> getHousePics(int modelId) {
		
		List<HouseLayout> pics = null;
		String sql = "select * from houselayout where modelId = ? and state = ? order by floor";
		Object []params = {modelId,1};
		
		try {
			pics = jdbcTemplate.query(sql, params, new BeanPropertyRowMapper(HouseLayout.class));
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			return pics;
		}
	}
}
