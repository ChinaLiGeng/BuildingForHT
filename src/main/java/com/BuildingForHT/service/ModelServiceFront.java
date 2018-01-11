package com.BuildingForHT.service;

import java.sql.SQLException;
import java.util.List;

import com.BuildingForHT.entity.Model;
import com.BuildingForHT.entity.ModelAssembly;
import com.BuildingForHT.entity.ModelComment;
import com.BuildingForHT.entity.ModelRecord;
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
	
	
	int create_fee_list(ModelRecord modelRecord);
	
}
