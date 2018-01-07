package com.BuildingForHT.dao;

import java.sql.SQLException;
import java.util.List;

import com.BuildingForHT.entity.EffectPic;
import com.BuildingForHT.entity.HouseLayout;
import com.BuildingForHT.entity.Model;
import com.BuildingForHT.entity.ModelComment;
import com.BuildingForHT.entity.User;

public interface ModelDaoFront {

	/**
	 * 
	 * @Method：getModelEntity
	 * @Description：get model entity by model id
	 * @author：Snail
	 * @date：2018年1月4日 下午9:13:28
	 * @return：Model
	 */
	Model getModelEntity(int modelId);
	
	/**
	 * 
	 * @Method：getEffectPics
	 * @Description：get model effect pics by model id
	 * @author：Snail
	 * @date：2018年1月4日 下午9:18:16
	 * @return：List<EffectPic>
	 */
	List<EffectPic> getEffectPics(int modelId);
	
	/**
	 * 
	 * @Method：getHousePics
	 * @Description：get model house layout pics by model id
	 * @author：Snail
	 * @date：2018年1月4日 下午9:19:45
	 * @return：List<HouseLayout>
	 */
	List<HouseLayout> getHousePics(int modelId);
	/**
	 * 
	* @Title: getModList 
	* @Description: TODO
	* @date 2018年1月5日 下午12:55:41 
	* @return List<Model> 
	* @author Ligeng    
	* @throws
	 */
	List<Model> getModList() throws SQLException;
	/**
	 * 
	* @Title: getModAllList 
	* @Description: TODO
	* @date 2018年1月5日 下午12:55:48 
	* @return List<Model> 
	* @author Ligeng    
	* @throws
	 */
	List<Model> getModAllList(int page, int area, int floor) throws SQLException;
	/**
	 * 
	* @Title: getModNum 
	* @Description: TODO
	* @date 2018年1月5日 下午1:10:19 
	* @return int 
	* @author Ligeng    
	* @throws
	 */
	int getModNum(int area, int floor) throws SQLException;
	
	/**
	 * 
	 * @Method：user
	 * @Description：find model's designer
	 * @author：Snail
	 * @date：2018年1月5日 下午3:25:20
	 * @return：User
	 */
	User user(int userId);
	
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
	 * @return：int
	 */
	int createComment(ModelComment comment);
	
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
    * @date 2018年1月7日 下午4:08:56 
    * @return int 
    * @author Ligeng    
    * @throws
     */
	int updateModel(Model model);
	
    /**
     * 
    * @Title: getModifier 
    * @Description: TODO
    * @date 2018年1月7日 下午4:44:39 
    * @return int 
    * @author Ligeng    
    * @throws
     */
	
	int getModifier();
	
    /**
     * 
    * @Title: getAuditor 
    * @Description: TODO
    * @date 2018年1月7日 下午4:44:49 
    * @return int 
    * @author Ligeng    
    * @throws
     */
	int getAuditor();
    /**
     * 
    * @Title: createMEP 
    * @Description: TODO
    * @date 2018年1月7日 下午4:55:36 
    * @return int 
    * @author Ligeng    
    * @throws
     */
	int createMEP(int id, int modifier, int auditor);
}
