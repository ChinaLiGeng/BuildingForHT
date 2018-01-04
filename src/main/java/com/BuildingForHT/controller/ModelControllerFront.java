package com.BuildingForHT.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.BuildingForHT.entity.Model;
import com.BuildingForHT.jsonFormat.Response;
import com.BuildingForHT.service.ModelServiceFront;

@Controller
@RequestMapping("/F/Model")
@SuppressWarnings("finally")
public class ModelControllerFront {

	@Autowired
	private ModelServiceFront modelInstance;
	
	/**
	 * 
	 * @Method：getModelDetail
	 * @Description：get model detail
	 * @author：Snail
	 * @date：2018年1月4日 下午10:44:04
	 * @return：Response
	 */
	@RequestMapping(value = "/det.final" , method = RequestMethod.GET)
	@ResponseBody
	public Response getModelDetail(int modelId) {
		
		Response response = new Response();
		Model model = null;
		
		try {
			model = modelInstance.getModelDetail(modelId);
			response.success(model);
		}catch (Exception e) {
			response.failure("服务器错误");
			e.printStackTrace();
		}finally {
			return response;
		}
	}
}
