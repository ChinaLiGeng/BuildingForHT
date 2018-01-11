package com.BuildingForHT.service;

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

public interface ModelServiceFront {

	/**
	 * 
	 * @Method：getModelDetail
	 * @Description：get model detail by modelId
	 * @author：Snail
	 * @date：2018年1月4日 下午9:13:28
	 * @return：Model
	 */
	Model getModelDetail(int modelId);
	
	/**
	 * 
	* @Title: getModList 
	* @Description: TODO
	* @date 2018年1月5日 下午1:14:31 
	* @return List<Model> 
	* @author Ligeng    
	* @throws
	 */
	List<Model> getModList() throws SQLException;
	
	/**
	 * 
	* @Title: getModAllList 
	* @Description: TODO
	* @date 2018年1月5日 下午1:14:35 
	* @return List<Model> 
	* @author Ligeng    
	* @throws
	 */
	List<Model> getModAllList(int page, int area, int floor) throws SQLException;
	
	/**
	 * 
	* @Title: getModNum 
	* @Description: TODO
	* @date 2018年1月5日 下午1:14:38 
	* @return int 
	* @author Ligeng    
	* @throws
	 */
	int getModNum(int area, int floor) throws SQLException;
	
	/**
	 * 
	 * @Method：getCommentsByModel
	 * @Description：get a model's comments by id
	 * @author：Snail
	 * @date：2018年1月5日 下午3:37:05
	 * @return：List<ModelComment>
	 */
	List<ModelComment> getCommentsByModel(int modelId,int page);
	
	/**
	 * 
	 * @Method：getCommentNumbers
	 * @Description：get a model's comments number
	 * @author：Snail
	 * @date：2018年1月5日 下午3:42:09
	 * @return：int
	 */
	int getCommentNumbers(int modelId);
	
	/**
	 * 
	 * @Method：createComment
	 * @Description：to create a model's comment
	 * @author：Snail
	 * @date：2018年1月5日 下午3:38:10
	 * @return：boolean
	 */
	boolean createComment(ModelComment comment);
	
	/**
	 * 
	 * @Method：findSimilarModel
	 * @Description：get similar models by floor and area+-50
	 * @author：Snail
	 * @date：2018年1月5日 下午3:40:34
	 * @return：List<Model>
	 */
	List<Model> findSimilarModel(int floor,double area);
    /**
     * 
    * @Title: updateModel 
    * @Description: TODO
    * @date 2018年1月7日 下午5:06:32 
    * @return int 
    * @author Ligeng    
    * @throws
     */
	int updateModel(int id, String sugg, int userId);
	
	/**
	 * 
	 * @Method：getMyDesign
	 * @Description：get my design
	 * @author：Snail
	 * @date：2018年1月7日 下午9:26:37
	 * @return：List<Model>
	 */
	List<Model> getMyDesign(int userId ,int page ,int state);
	
	/**
	 * 
	 * @Method：getMyDesignNumbers
	 * @Description：get my design numbers
	 * @author：Snail
	 * @date：2018年1月7日 下午9:27:40
	 * @return：int
	 */
	int getMyDesignNumbers(int userId,int state);
    /**
     * 
    * @Title: creteModelId 
    * @Description: TODO
    * @date 2018年1月9日 下午11:13:16 
    * @return int 
    * @author Ligeng    
    * @throws
     */
	int creteModelId(Model model);
	
	/**
	 * 
	 * @Method：getNeverModifiedModels
	 * @Description：get never been modified models
	 * @author：Snail
	 * @date：2018年1月9日 下午3:14:06
	 * @return：List<Model>
	 */
	List<Model> getNeverModifiedModels(int modifier,int page);
	
	/**
	 * 
	 * @Method：getNeverModifiedNumber
	 * @Description：get never been modifierd models number
	 * @author：Snail
	 * @date：2018年1月9日 下午3:15:22
	 * @return：int
	 */
	int getNeverModifiedNumber(int modifier);
	
	/**
	 * 
	 * @Method：getContinueModifiedModels
	 * @Description：get continue modified models
	 * @author：Snail
	 * @date：2018年1月9日 下午3:16:13
	 * @return：List<ModelRecord>
	 */
	List<ModelRecord> getContinueModifiedModels(int modifier,int page);
	
	/**
	 * 
	 * @Method：getcontinueModifiedNumber
	 * @Description：get continue modified models number
	 * @author：Snail
	 * @date：2018年1月9日 下午3:17:00
	 * @return：int
	 */
	int getContinueModifiedNumber(int modifier);
	
	/**
	 * 
	 * @Method：getCalcModels
	 * @Description：get calc models
	 * @author：Snail
	 * @date：2018年1月10日 上午1:17:49
	 * @return：List<ModelRecord>
	 */
	List<ModelRecord> getCalcModels(int auditor,int page);
	
	/**
	 * 
	 * @Method：getCalcModelNumber
	 * @Description：get cala models number
	 * @author：Snail
	 * @date：2018年1月10日 上午1:18:35
	 * @return：int
	 */
	int getCalcModelNumber(int auditor);
	
	/**
	 * 
	 * @Method：getAdminModels
	 * @Description：get admin manager models
	 * @author：Snail
	 * @date：2018年1月10日 上午2:54:11
	 * @return：List<Model>
	 */
	List<Model> getAdminModels(int page);
	
	/**
	 * 
	 * @Method：getAdminModels
	 * @Description：get admin manager madels number
	 * @author：Snail
	 * @date：2018年1月10日 上午2:55:26
	 * @return：int
	 */
	int getAdminModelNumber();
    /**
     * 
    * @Title: uploadPic 
    * @Description: TODO
    * @date 2018年1月10日 下午3:30:14 
    * @return int 
    * @author Ligeng    
    * @throws
     */
	
	int uploadHouseLayout(HouseLayout hl);
	
    /**
     * 
    * @Title: getmodel 
    * @Description: TODO
    * @date 2018年1月10日 下午7:27:27 
    * @return int 
    * @author Ligeng    
    * @throws
     */
	int getmodel();
    /**
     * 
    * @Title: uploadEffectPic 
    * @Description: TODO
    * @date 2018年1月10日 下午7:36:06 
    * @return int 
    * @author Ligeng    
    * @throws
     */
	int uploadEffectPic(EffectPic ef);
    /**
     * 
    * @Title: updateM 
    * @Description: TODO
    * @date 2018年1月10日 下午7:48:06 
    * @return int 
    * @author Ligeng    
    * @throws
     */
	int updateM(int id, String pic);
    /**
     * 
    * @Title: updateMObj 
    * @Description: TODO
    * @date 2018年1月10日 下午10:33:26 
    * @return int 
    * @author Ligeng    
    * @throws
     */
	int updateMObj(int id, String path, int type);


	
	/**
	 * 
	 * @Method：getAssembly
	 * @Description：get assembly
	 * @author：Snail
	 * @date：2018年1月10日 下午3:27:13
	 * @return：List<ModelAssembly>
	 */
	List<ModelAssembly> getAssembly(int modiId);
	
	/**
	 * 
	 * @Method：calcModel
	 * @Description：calc model
	 * @author：Snail
	 * @date：2018年1月10日 下午4:34:15
	 * @return：boolean
	 */
	boolean calcModel(int modiId,PriceList priceList,int modelId,int price);
	
	/**
	 * 
	 * @Method：createOrder
	 * @Description：create order
	 * @author：Snail
	 * @date：2018年1月10日 下午9:31:29
	 * @return：boolean
	 */
	boolean createOrder(OrderTable order, int modelId ,int userId);
	
	/**
	 * 
	 * @Method：calcUpdateModel
	 * @Description：calc update model
	 * @author：Snail
	 * @date：2018年1月10日 下午3:30:56
	 * @return：boolean
	 */
	boolean calcUpdateModel(int modelId,int designState);
	
	/**
	 * 
	 * @Method：continueOrder
	 * @Description：continue to modify
	 * @author：Snail
	 * @date：2018年1月10日 下午9:46:58
	 * @return：boolean
	 */
	boolean continueOrder(String suddestion,int modelId);
	
	/**
	 * 
	 * @Method：getHistory
	 * @Description：get history
	 * @author：Snail
	 * @date：2018年1月10日 下午10:52:48
	 * @return：List<ModelRecord>
	 */
	List<ModelRecord> getHistory(int modelId);
	
	/**
	 * 
	 * @Method：getHistoryDetail
	 * @Description：get history detail
	 * @author：Snail
	 * @date：2018年1月10日 下午11:13:17
	 * @return：ModelRecord
	 */
	ModelRecord getHistoryDetail(int modiId);
	
	/**
	 * 
	 * @Method：getPriceLists
	 * @Description：get model's price list
	 * @author：Snail
	 * @date：2018年1月10日 下午11:16:03
	 * @return：List<PriceList>
	 */
	List<PriceList> getPriceLists(int modiId);
    
	/**
	 * 
	* @Title: addMR 
	* @Description: TODO
	* @date 2018年1月11日 上午12:36:45 
	* @return int 
	* @author Ligeng    
	* @throws
	 */
	int addMR(ModelRecord mr);
    
	/**
	 * 
	* @Title: createMA 
	* @Description: TODO
	* @date 2018年1月11日 上午1:06:37 
	* @return int 
	* @author Ligeng    
	* @throws
	 */
	int createMA(List<ModelAssembly> mas);
   /**
    * 
   * @Title: uploadMR 
   * @Description: TODO
   * @date 2018年1月11日 下午7:15:15 
   * @return int 
   * @author Ligeng    
   * @throws
    */
	int uploadMR(int id, String path, int type);
    /**
     * 
    * @Title: getMR 
    * @Description: TODO
    * @date 2018年1月11日 下午7:32:11 
    * @return int 
    * @author Ligeng    
    * @throws
     */
    int getMR();
    /**
     * 
    * @Title: getAssemblyAll 
    * @Description: TODO
    * @date 2018年1月11日 下午9:17:49 
    * @return List<Assembly> 
    * @author Ligeng    
    * @throws
     */
	List<Assembly> getAssemblyAll();
	
}
