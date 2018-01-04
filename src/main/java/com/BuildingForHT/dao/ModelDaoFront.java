package com.BuildingForHT.dao;

import java.util.List;

import com.BuildingForHT.entity.EffectPic;
import com.BuildingForHT.entity.HouseLayout;
import com.BuildingForHT.entity.Model;

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
}
