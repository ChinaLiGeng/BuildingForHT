package com.BuildingForHT.daoImpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementCreator;
import org.springframework.jdbc.support.GeneratedKeyHolder;
import org.springframework.jdbc.support.KeyHolder;
import org.springframework.stereotype.Repository;

import com.BuildingForHT.dao.ModelDaoFront;
import com.BuildingForHT.entity.EffectPic;
import com.BuildingForHT.entity.HouseLayout;
import com.BuildingForHT.entity.Model;
import com.BuildingForHT.entity.ModelComment;
import com.BuildingForHT.entity.User;

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
		String sql = "select * from effectpic where modelId = ? and state = ? and type = ?";
		Object []params = {modelId,1,2};
		
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
	@Override
	public List<Model> getModList() throws SQLException{
		
		List<Model> models = null;
		   String sql = "select modelId,name,designFee,floorNumber,buildingArea,landArea,mainPic,introduction from model "
		   		+ "where state = 1 and betype = 1  order by modelId desc limit 0 , 8";
		   models = jdbcTemplate.query(sql,new BeanPropertyRowMapper(Model.class));
		return models;
	}
    
	@Override
	public List<Model> getModAllList(int page, int area, int floor) throws SQLException{
		List<Model> models = null;
		   int staPage = (page - 1)*12;
		   String sql = "select * from model where state = 1 and betype = 1 ";
		   if(area != 0){
			   sql += "and landArea > "+(area-25)+" and landArea <= "+(area+25)+" ";
		   }
		   if( floor !=0 ){
			   sql += "and floorNumber = "+floor+" ";
		   }
		   sql += "order by modelId desc limit "+staPage+" , "+12 ;
		   System.out.println(sql);
		   models = jdbcTemplate.query(sql,new BeanPropertyRowMapper(Model.class));
		return models;
	}
	@Override
	public int getModNum(int area, int floor) throws SQLException{
		int  result = 0;
		   String sql = "select count(*) from model where state = 1 and betype = 1 ";
		   if(area != 0){
			   sql += "and landArea > "+(area-25)+" and landArea <= "+(area+25)+" ";
		   }
		   if( floor !=0 ){
			   sql += "and floorNumber = "+floor+" ";
		   }
		  
		   System.out.println(sql);
		   result = jdbcTemplate.queryForObject(sql,Integer.class);
		return result;
	}

	@Override
	public User user(int userId) {
		
		User user = null;
		String sql = "select * from User where userId = ?";
		Object []params = {userId};
		
		try {
			user = jdbcTemplate.queryForObject(sql, params, new BeanPropertyRowMapper<User>(User.class));
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			return user;
		}
	}

	@Override
	public List<ModelComment> getCommentsByModel(int modelId,int page) {
		
		List<ModelComment> comments = null;
		String sql = "select model_comment.*,userName,userPic from model_comment,user where model_comment.userId = user.userId and  modelId = ? and state = ? limit ?,?";
		Object []params = {modelId,1,(page-1)*4,4};
		
		try {
			comments = jdbcTemplate.query(sql, params, new BeanPropertyRowMapper(ModelComment.class));
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			return comments;
		}
	}

	@Override
	public int createComment(ModelComment comment) {
		
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String time = df.format(new Date());
		
		String sql = "insert into model_comment(modelId,userId,state,context,createTime) values(?,?,?,?,?)";
		Object []params = {comment.getModelId(),comment.getUserId(),1,comment.getContext(),time};
		
		return jdbcTemplate.update(sql,params);
	}

	@Override
	public List<Model> findSimilarModel(int floor, double area) {
		
		List<Model> models = null;
		String sql = "select * from model where floorNumber = ? and state = ? and ( (buildingArea<=?+50) and (buildingArea>=?-50) ) limit 0,6";
		Object []params = {floor,1,area,area};
		
		try {
			models = jdbcTemplate.query(sql, params, new BeanPropertyRowMapper(Model.class));
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			return models;
		}
	}

	@Override
	public int getCommentNumbers(int modelId) {
		
		int  result = 0;
		String sql = "select count(*) from model_comment,user where model_comment.userId = user.userId and  modelId = ? and state = ?";
		Object []params = {modelId,1};
	  
		result = jdbcTemplate.queryForObject(sql,params,Integer.class);
		return result;
	}

	@Override
	public List<Model> getMyDesign(int userId, int page, int state) {
		
		List<Model> models = null;
		StringBuffer str = new StringBuffer("select model.*,user.userName from model,model_examine_peo,user where model.userId = ? and model.state = ?"
										+ " and model.beType = ? and model.modelId = model_examine_peo.modelId and "
										+ "model_examine_peo.modifier = user.userId ");
		if( state != 0 ) {          						//not find all
			str.append("and model.designState = ? ");
			Object []params = {userId,1,2,state,(page-1)*4,4};
			str.append("limit ?,?");
			System.out.println(str.toString());
			
			try {
				models = jdbcTemplate.query(str.toString(), params, new BeanPropertyRowMapper(Model.class));
			} catch (Exception e) {
				e.printStackTrace();
			}finally {
				return models;
			}
		}else {
			Object []params = {userId,1,2,(page-1)*4,4};
			str.append("limit ?,?");
			System.out.println(str.toString());
			
			try {
				models = jdbcTemplate.query(str.toString(), params, new BeanPropertyRowMapper(Model.class));
			} catch (Exception e) {
				e.printStackTrace();
			}finally {
				return models;
			}
		}
	}

	@Override
	public int getMyDesignNumbers(int userId, int state) {
		
		int  result = 0;
		StringBuffer str = new StringBuffer("select count(*) from model,model_examine_peo,user where model.userId = ? and model.state = ?"
				+ " and model.beType = ? and model.modelId = model_examine_peo.modelId and "
				+ "model_examine_peo.modifier = user.userId ");
	  
		if( state != 0 ) {          						//not find all
			str.append("and model.designState = ?");
			Object []params = {userId,1,2,state};
			
			try {
				result = jdbcTemplate.queryForObject(str.toString(),params,Integer.class);
			} catch (Exception e) {
				e.printStackTrace();
			}finally {
				return result;
			}
		}else {
			Object []params = {userId,1,2};
			System.out.println(str.toString());
			
			try {
				result = jdbcTemplate.queryForObject(str.toString(),params,Integer.class);
			} catch (Exception e) {
				e.printStackTrace();
			}finally {
				return result;
			}
		}
	}
	
	@Override
	public int updateModel(Model model) {
		//Date date = new Date();
		KeyHolder keyHolder = new GeneratedKeyHolder();  
		
		//SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");  
		//String dateNowStr = sdf.format(date);  
		
		String sql = "insert into model(userId,suggestion,beType,designState,designFee,floorNumber,buildingArea,landArea,objPath,mtlPath,quoteModel,mainPic,state,name,introduction)"
				+" values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		
		jdbcTemplate.update( new PreparedStatementCreator() {  
			
			@Override
			public PreparedStatement createPreparedStatement(Connection con) throws SQLException {
				PreparedStatement ps = jdbcTemplate.getDataSource()
						.getConnection().prepareStatement(sql,new String[]{ "userId", "suggestion","beType","designState","designFee", "floorNumber","buildingArea","landArea","objPath","mtlPath","quoteModel","mainPic","state","name","introduction"});
				ps.setInt(1,model.getUserId());
				ps.setString(2, model.getSuggestion());
				ps.setInt(3, 2);
				ps.setInt(4, 1);
				ps.setInt(5, model.getDesignFee());
				ps.setInt(6, model.getFloorNumber());
				ps.setDouble(7, model.getBuildingArea());
				ps.setDouble(8, model.getLandArea());
				ps.setString(9, model.getObjPath());
				ps.setString(10, model.getMtlPath());
				ps.setInt(11, model.getModelId());
				ps.setString(12, model.getMainPic());
				ps.setInt(13, 1);
				ps.setString(14, model.getName());
				ps.setString(15, model.getIntroduction());
				return ps;  
			}  
        }, keyHolder);
		return  keyHolder.getKey().intValue();
	}
	@Override
	public int getModifier(){
		try {
			String sql = "select modifier from model_examine_peo order by merId desc  LIMIT 1";
			return jdbcTemplate.queryForObject(sql,Integer.class);		 
		} catch (Exception e) {
			e.printStackTrace();
			return 0;
		}
	}
	@Override
	public int getAuditor(){
		try {
			String sql = "select auditor from model_examine_peo order by merId desc  LIMIT 1";
			return jdbcTemplate.queryForObject(sql,Integer.class);		 
		} catch (Exception e) {
			e.printStackTrace();
			return 0;
		}
	}
	
	@Override
	public int createMEP(int id,int modifier,int auditor){
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String time = df.format(new Date());
		String sql = "insert into model_examine_peo(modelId,modifier,auditor,modifierDate,auditorDate,state) values(?,?,?,?,?,?)";
		Object []params = {id,modifier,auditor,time,time,1};
		return jdbcTemplate.update(sql,params);
	}

}
