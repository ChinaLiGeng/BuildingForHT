package com.BuildingForHT.service;

import com.BuildingForHT.entity.Model;

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
}
