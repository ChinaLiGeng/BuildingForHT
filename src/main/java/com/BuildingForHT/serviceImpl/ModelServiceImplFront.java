package com.BuildingForHT.serviceImpl;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.BuildingForHT.dao.ModelDaoFront;
import com.BuildingForHT.entity.Model;
import com.BuildingForHT.entity.ModelComment;
import com.BuildingForHT.entity.User;
import com.BuildingForHT.service.ModelServiceFront;

@Service
public class ModelServiceImplFront implements ModelServiceFront{

	@Autowired
	private ModelDaoFront modelInstance;

	@Override
	public Model getModelDetail(int modelId) {
		
		Model model = modelInstance.getModelEntity(modelId);
		
		if( model != null ) {
			model.setEffectPic(modelInstance.getEffectPics(modelId));
			model.setHouseLayout(modelInstance.getHousePics(modelId));
			model.setUser(modelInstance.user(model.getUserId()));
		}
		return model;
	}
	
	@Override
    public List<Model> getModList() throws SQLException{
    	List<Model> models= null;
    	    models =  modelInstance.getModList();
    	return models;
    }
	
    @Override
    public List<Model> getModAllList(int page, int area, int floor) throws SQLException{
    	List<Model> models= null;
	         models =  modelInstance.getModAllList(page, area, floor);
	    return models;
    	
    }
    
   @Override
    public int getModNum(int area, int floor) throws SQLException{
    	int result = 0;
    	      result = modelInstance.getModNum(area, floor);
    	return result;
    }

	@Override
	public List<ModelComment> getCommentsByModel(int modelId) {
		
		List<ModelComment> result = modelInstance.getCommentsByModel(modelId);
		return result;
	}
	
	@Override
	public int getCommentNumbers(int modelId) {
		
		int number = 0;
		number = modelInstance.getCommentNumbers(modelId);
		return number;
	}

	@Override
	public boolean createComment(ModelComment comment) {
		
		boolean result = false;
		
		if( modelInstance.createComment(comment) > 0 ) {
			result = true;
		}
		return result;
	}

	@Override
	public List<Model> findSimilarModel(int floor, double area) {
		
		List<Model> result = modelInstance.findSimilarModel(floor, area);
		return result;
	}
   
}
