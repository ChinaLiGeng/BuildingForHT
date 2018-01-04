package com.BuildingForHT.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.BuildingForHT.dao.ModelDaoFront;
import com.BuildingForHT.entity.Model;
import com.BuildingForHT.service.ModelServiceFront;

@Service
public class ModelServiceImplFront implements ModelServiceFront{

	@Autowired
	private ModelDaoFront modelInstance;

	@Override
	public Model getModelDetail(int modelId) {
		
//		Model model = modelInstance.
		return null;
	}
}
