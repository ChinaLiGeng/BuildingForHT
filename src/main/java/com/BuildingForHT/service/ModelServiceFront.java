package com.BuildingForHT.service;

import java.sql.SQLException;
import java.util.List;

import com.BuildingForHT.entity.Model;
import com.BuildingForHT.entity.ModelComment;
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
	
}
