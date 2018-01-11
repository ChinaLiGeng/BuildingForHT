package com.BuildingForHT.dao;

import java.sql.SQLException;
import java.util.List;

import com.BuildingForHT.entity.Assembly;
import com.BuildingForHT.entity.EffectPic;
import com.BuildingForHT.entity.HouseLayout;
import com.BuildingForHT.entity.Model;
import com.BuildingForHT.entity.ModelAssembly;
import com.BuildingForHT.entity.ModelComment;
import com.BuildingForHT.entity.ModelRecord;
import com.BuildingForHT.entity.OrderTable;
import com.BuildingForHT.entity.PriceList;
import com.BuildingForHT.entity.User;

public interface ModelDaoFront {

	/**
	 * 
	 * @Method��getModelEntity
	 * @Description��get model entity by model id
	 * @author��Snail
	 * @date��2018��1��4�� ����9:13:28
	 * @return��Model
	 */
	Model getModelEntity(int modelId);
	
	/**
	 * 
	 * @Method��getEffectPics
	 * @Description��get model effect pics by model id
	 * @author��Snail
	 * @date��2018��1��4�� ����9:18:16
	 * @return��List<EffectPic>
	 */
	List<EffectPic> getEffectPics(int modelId);
	
	/**
	 * 
	 * @Method��getHousePics
	 * @Description��get model house layout pics by model id
	 * @author��Snail
	 * @date��2018��1��4�� ����9:19:45
	 * @return��List<HouseLayout>
	 */
	List<HouseLayout> getHousePics(int modelId);
	/**
	 * 
	* @Title: getModList 
	* @Description: TODO
	* @date 2018��1��5�� ����12:55:41 
	* @return List<Model> 
	* @author Ligeng    
	* @throws
	 */
	List<Model> getModList() throws SQLException;
	/**
	 * 
	* @Title: getModAllList 
	* @Description: TODO
	* @date 2018��1��5�� ����12:55:48 
	* @return List<Model> 
	* @author Ligeng    
	* @throws
	 */
	List<Model> getModAllList(int page, int area, int floor) throws SQLException;
	/**
	 * 
	* @Title: getModNum 
	* @Description: TODO
	* @date 2018��1��5�� ����1:10:19 
	* @return int 
	* @author Ligeng    
	* @throws
	 */
	int getModNum(int area, int floor) throws SQLException;
	
	/**
	 * 
	 * @Method��user
	 * @Description��find model's designer
	 * @author��Snail
	 * @date��2018��1��5�� ����3:25:20
	 * @return��User
	 */
	User user(int userId);
	
	/**
	 * 
	 * @Method��getCommentsByModel
	 * @Description��get a model's comments by id
	 * @author��Snail
	 * @date��2018��1��5�� ����3:37:05
	 * @return��List<ModelComment>
	 */
	List<ModelComment> getCommentsByModel(int modelId,int page);
	
	/**
	 * 
	 * @Method��getCommentNumbers
	 * @Description��get a model's comments number
	 * @author��Snail
	 * @date��2018��1��5�� ����3:42:09
	 * @return��int
	 */
	int getCommentNumbers(int modelId);
	
	/**
	 * 
	 * @Method��createComment
	 * @Description��to create a model's comment
	 * @author��Snail
	 * @date��2018��1��5�� ����3:38:10
	 * @return��int
	 */
	int createComment(ModelComment comment);
	
	/**
	 * 
	 * @Method��findSimilarModel
	 * @Description��get similar models by floor and area+-50
	 * @author��Snail
	 * @date��2018��1��5�� ����3:40:34
	 * @return��List<Model>
	 */
	List<Model> findSimilarModel(int floor,double area);
	
	/**
	 * 
	 * @Method��getMyDesign
	 * @Description��get my design
	 * @author��Snail
	 * @date��2018��1��7�� ����9:26:37
	 * @return��List<Model>
	 */
	List<Model> getMyDesign(int userId ,int page ,int state);
	
	/**
	 * 
	 * @Method��getMyDesignNumbers
	 * @Description��get my design numbers
	 * @author��Snail
	 * @date��2018��1��7�� ����9:27:40
	 * @return��int
	 */
	int getMyDesignNumbers(int userId,int state);
	
    /**
     * 
    * @Title: updateModel 
    * @Description: TODO
    * @date 2018��1��7�� ����4:08:56 
    * @return int 
    * @author Ligeng    
    * @throws
     */
	int updateModel(Model model);
	
    /**
     * 
    * @Title: getModifier 
    * @Description: TODO
    * @date 2018��1��7�� ����4:44:39 
    * @return int 
    * @author Ligeng    
    * @throws
     */
	
	int getModifier();
	
    /**
     * 
    * @Title: getAuditor 
    * @Description: TODO
    * @date 2018��1��7�� ����4:44:49 
    * @return int 
    * @author Ligeng    
    * @throws
     */
	int getAuditor();
    /**
     * 
    * @Title: createMEP 
    * @Description: TODO
    * @date 2018��1��7�� ����4:55:36 
    * @return int 
    * @author Ligeng    
    * @throws
     */
	int createMEP(int id, int modifier, int auditor);


	int createModel(Model model);
    /**
     * 
    * @Title: createHouselayout 
    * @Description: TODO
    * @date 2018��1��10�� ����3:16:20 
    * @return int 
    * @author Ligeng    
    * @throws
     */
	int createHouselayout(HouseLayout hy);

	/**
	 * 
	 * @Method��getNeverModifiedModels
	 * @Description��get never been modified models
	 * @author��Snail
	 * @date��2018��1��9�� ����3:14:06
	 * @return��List<Model>
	 */
	List<Model> getNeverModifiedModels(int modifier,int page);
	
	/**
	 * 
	 * @Method��getNeverModifiedNumber
	 * @Description��get never been modifierd models number
	 * @author��Snail
	 * @date��2018��1��9�� ����3:15:22
	 * @return��int
	 */
	int getNeverModifiedNumber(int modifier);
	
	/**
	 * 
	 * @Method��getContinueModifiedModels
	 * @Description��get continue modified models
	 * @author��Snail
	 * @date��2018��1��9�� ����3:16:13
	 * @return��List<ModelRecord>
	 */
	List<ModelRecord> getContinueModifiedModels(int modifier,int page);
	
	/**
	 * 
	 * @Method��getcontinueModifiedNumber
	 * @Description��get continue modified models number
	 * @author��Snail
	 * @date��2018��1��9�� ����3:17:00
	 * @return��int
	 */
	int getContinueModifiedNumber(int modifier);
	
	/**
	 * 
	 * @Method��getCalcModels
	 * @Description��get calc models
	 * @author��Snail
	 * @date��2018��1��10�� ����1:17:49
	 * @return��List<ModelRecord>
	 */
	List<ModelRecord> getCalcModels(int auditor,int page);
	
	/**
	 * 
	 * @Method��getCalcModelNumber
	 * @Description��get cala models number
	 * @author��Snail
	 * @date��2018��1��10�� ����1:18:35
	 * @return��int
	 */
	int getCalcModelNumber(int auditor);
	
	/**
	 * 
	 * @Method��getAdminModels
	 * @Description��get admin manager models
	 * @author��Snail
	 * @date��2018��1��10�� ����2:54:11
	 * @return��List<Model>
	 */
	List<Model> getAdminModels(int page);
	
	/**
	 * 
	 * @Method��getAdminModels
	 * @Description��get admin manager madels number
	 * @author��Snail
	 * @date��2018��1��10�� ����2:55:26
	 * @return��int
	 */
	int getAdminModelNumber();
	
    /**
     * 
    * @Title: createEffectPic 
    * @Description: TODO
    * @date 2018��1��10�� ����3:10:07 
    * @return int 
    * @author Ligeng    
    * @throws
     */
	int createEffectPic(EffectPic ef);
    /**
     * 
    * @Title: updateM 
    * @Description: TODO
    * @date 2018��1��10�� ����3:28:27 
    * @return int 
    * @author Ligeng    
    * @throws
     */
	int updateM(int id, String pic);
    /**
     * 
    * @Title: getModel 
    * @Description: TODO
    * @date 2018��1��10�� ����7:26:30 
    * @return int 
    * @author Ligeng    
    * @throws
     */
	int getModel();
    /**
     * 
    * @Title: updateMObj 
    * @Description: TODO
    * @date 2018��1��10�� ����10:31:22 
    * @return int 
    * @author Ligeng    
    * @throws
     */
	int updateMObj(int id, String path, int type);
	
	/**
	 * 
	 * @Method��getAssembly
	 * @Description��get assembly
	 * @author��Snail
	 * @date��2018��1��10�� ����3:27:13
	 * @return��List<ModelAssembly>
	 */
	List<ModelAssembly> getAssembly(int modiId);
	
	/**
	 * 
	 * @Method��createPriceList
	 * @Description��create price list
	 * @author��Snail
	 * @date��2018��1��10�� ����3:29:40
	 * @return��int
	 */
	int createPriceList(int modiId,PriceList priceList);
	
	/**
	 * 
	 * @Method��calcUpdateModel
	 * @Description��calc update model
	 * @author��Snail
	 * @date��2018��1��10�� ����3:30:56
	 * @return��int
	 */
	int calcUpdateModel(int modelId,int designState);
	
	/**
	 * 
	 * @Method��calcUpdateAllPrice
	 * @Description��calc update price
	 * @author��Snail
	 * @date��2018��1��10�� ����3:33:09
	 * @return��int
	 */
	int calcUpdateAllPrice(int modiId,int price);
	
	/**
	 * 
	 * @Method��createOrder
	 * @Description��create order
	 * @author��Snail
	 * @date��2018��1��10�� ����9:24:27
	 * @return��int
	 */
	int createOrder(OrderTable order,int modelId,int userId);
	
	/**
	 * 
	 * @Method��continueOrder
	 * @Description��continue to modify
	 * @author��Snail
	 * @date��2018��1��10�� ����9:46:58
	 * @return��int
	 */
	int continueOrder(String suddestion,int modelId);
	
	/**
	 * 
	 * @Method��getHistory
	 * @Description��get history
	 * @author��Snail
	 * @date��2018��1��10�� ����10:52:48
	 * @return��List<ModelRecord>
	 */
	List<ModelRecord> getHistory(int modelId);
	
	/**
	 * 
	 * @Method��getHistoryDetail
	 * @Description��get history detail
	 * @author��Snail
	 * @date��2018��1��10�� ����11:13:17
	 * @return��ModelRecord
	 */
	ModelRecord getHistoryDetail(int modiId);
	
	/**
	 * 
	 * @Method��getPriceLists
	 * @Description��get model's price list
	 * @author��Snail
	 * @date��2018��1��10�� ����11:16:03
	 * @return��List<PriceList>
	 */
	List<PriceList> getPriceLists(int modiId);
    
	/**
	 * 
	* @Title: addMR 
	* @Description: TODO
	* @date 2018��1��11�� ����12:34:17 
	* @return int 
	* @author Ligeng    
	* @throws
	 */
	int addMR(ModelRecord mr);
    
	/**
	 * 
	* @Title: getAssemblyAll 
	* @Description: TODO
	* @date 2018��1��11�� ����12:53:58 
	* @return List<ModelAssembly> 
	* @author Ligeng    
	* @throws
	 */
	List<Assembly> getAssemblyAll();
    
	/**
	 * 
	* @Title: createMA 
	* @Description: TODO
	* @date 2018��1��11�� ����1:02:58 
	* @return int 
	* @author Ligeng    
	* @throws
	 */
	int createMA(ModelAssembly ma);
    /**
     * 
    * @Title: updateMRObj 
    * @Description: TODO
    * @date 2018��1��11�� ����7:13:34 
    * @return int 
    * @author Ligeng    
    * @throws
     */
	int updateMRObj(int id, String path, int type);
    /**
     * 
    * @Title: getMR 
    * @Description: TODO
    * @date 2018��1��11�� ����7:30:53 
    * @return int 
    * @author Ligeng    
    * @throws
     */
	int getMR();
	
	
}
