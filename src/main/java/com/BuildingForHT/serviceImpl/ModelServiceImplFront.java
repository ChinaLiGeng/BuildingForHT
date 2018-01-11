package com.BuildingForHT.serviceImpl;

import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.BuildingForHT.dao.ModelDaoFront;
import com.BuildingForHT.entity.EffectPic;
import com.BuildingForHT.entity.HouseLayout;
import com.BuildingForHT.entity.Model;
import com.BuildingForHT.entity.ModelAssembly;
import com.BuildingForHT.entity.ModelComment;
import com.BuildingForHT.entity.ModelRecord;
import com.BuildingForHT.entity.OrderTable;
import com.BuildingForHT.entity.PriceList;
import com.BuildingForHT.entity.User;
import com.BuildingForHT.globle.Constants;
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
	public List<ModelComment> getCommentsByModel(int modelId,int page) {
		
		List<ModelComment> result = modelInstance.getCommentsByModel(modelId,page);
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

	@Override
	public List<Model> getMyDesign(int userId, int page, int state) {
		
		List<Model> result = modelInstance.getMyDesign(userId, page, state);
		return result;
	}

	@Override
	public int getMyDesignNumbers(int userId, int state) {
		
		int number = 0;
		number = modelInstance.getMyDesignNumbers(userId, state);
		return number;	
	}
   
	@Override
    public int updateModel(int id,String sugg,int userId){
    	int result = 0;
    	   Model m = modelInstance.getModelEntity(id);
    	   m.setSuggestion(sugg);
    	   m.setUserId(userId);
    	   int i = modelInstance.updateModel(m);
    	   if(modelInstance.getAuditor() == 0){
    		   modelInstance.createMEP(i, 1, 5);
    		   result = 1;
    	   }else{
    		   int modifier = modelInstance.getModifier();
    		   int auditor = modelInstance.getAuditor();
    		   System.out.println(modifier);
    		   System.out.println(auditor);
    		   if(modifier == Constants.MODIFIER){
    			   modifier = 1;
    		   }else{
    			   modifier++;
    		   }
    		   if(auditor == Constants.AUDITOR){
    			   auditor = 5;
    		   }else{
    			   auditor++;
    		   }
    		   modelInstance.createMEP(i, modifier, auditor);
    		   result = 1;
    	   }
    	return result;
    }

	@Override
	public int creteModelId(Model model){
		return modelInstance.createModel(model);
	}
	


	@Override
	public List<Model> getNeverModifiedModels(int modifier, int page) {
		
		List<Model> result = modelInstance.getNeverModifiedModels(modifier, page);
		return result;
	}

	@Override
	public int getNeverModifiedNumber(int modifier) {
		
		int number = modelInstance.getNeverModifiedNumber(modifier);
		return number;
	}

	@Override
	public List<ModelRecord> getContinueModifiedModels(int modifier, int page) {
		
		List<ModelRecord> result = modelInstance.getContinueModifiedModels(modifier, page);
		return result;
	}

	@Override
	public int getContinueModifiedNumber(int modifier) {
		
		int number = modelInstance.getContinueModifiedNumber(modifier);
		return number;
	}

	@Override
	public List<ModelRecord> getCalcModels(int auditor, int page) {
		
		List<ModelRecord> result = modelInstance.getCalcModels(auditor, page);
		return result;
	}

	@Override
	public int getCalcModelNumber(int auditor) {
		
		int number = modelInstance.getCalcModelNumber(auditor);
		return number;
	}

	@Override
	public List<Model> getAdminModels(int page) {
		
		List<Model> result = modelInstance.getAdminModels(page);
		return result;
	}

	@Override
	public int getAdminModelNumber() {
		
		int number = modelInstance.getAdminModelNumber();
		return number;
	}
	@Override
	public int uploadHouseLayout(HouseLayout hl){
	    	int result = 0;
	    	modelInstance.createHouselayout(hl);
	    	return result;
	    }
	@Override
	public int uploadEffectPic(EffectPic ef){
    	int result = 0;
    	modelInstance.createEffectPic(ef);
    	return result;
    }
	@Override
    public int getmodel(){
    	return modelInstance.getModel();
    }
	@Override
	public int updateM(int id,String pic){
		return modelInstance.updateM(id, pic);
	}
	@Override
	public int updateMObj(int id,String path,int type){
		return modelInstance.updateMObj(id, path, type);
		}

	@Override
	public List<ModelAssembly> getAssembly(int modiId) {
		
		List<ModelAssembly> result = modelInstance.getAssembly(modiId);
		return result;
	}

	@Override
	public boolean calcModel(int modiId, PriceList priceList, int modelId, int price) {
		
		boolean result = false;
		
		if( modelInstance.createPriceList(modiId, priceList) > 0 & modelInstance.calcUpdateAllPrice(modiId, price) >0 & modelInstance.calcUpdateModel(modelId,3) >0) {
			result = true;
		}
		return result;
	}

	@Override
	public int create_fee_list(ModelRecord modelRecord) {
		// TODO Auto-generated method stub
		return modelInstance.create_fee_list(modelRecord);
	}
	@Override
	public boolean createOrder(OrderTable order, int modelId, int userId) {
		
		boolean result = false;
		
		if( modelInstance.createOrder(order, modelId, userId) > 0  & modelInstance.calcUpdateModel(modelId,4) >0) {
			result = true;
		}
		return result;
	}

	@Override
	public boolean calcUpdateModel(int modelId, int designState) {
		
		boolean result = false;
		
		if( modelInstance.calcUpdateModel(modelId,designState) >0) {
			result = true;
		}
		return result;
	}

	@Override
	public boolean continueOrder(String suddestion, int modelId) {
		
		boolean result = false;
		
		if( modelInstance.continueOrder(suddestion, modelId) > 0  & modelInstance.calcUpdateModel(modelId,6) >0) {
			result = true;
		}
		return result;
	}

	@Override
	public List<ModelRecord> getHistory(int modelId) {

		List<ModelRecord> result = modelInstance.getHistory(modelId);
		return result;
	}

	@Override
	public ModelRecord getHistoryDetail(int modiId) {
		
//		ModelRecord 
		return null;
	}

	@Override
	public List<PriceList> getPriceLists(int modiId) {
		// TODO Auto-generated method stub
		return null;
	}
}
