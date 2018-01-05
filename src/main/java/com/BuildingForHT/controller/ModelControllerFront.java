package com.BuildingForHT.controller;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.BuildingForHT.entity.Model;
import com.BuildingForHT.entity.ModelComment;
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
	
	/**
	 * 
	* @Title: getModList 
	* @Description: TODO
	* @date 2018年1月5日 下午1:15:42 
	* @return Response 
	* @author Ligeng    
	* @throws
	 */
	@RequestMapping(value = "/modelList")
	@ResponseBody
	public Response getModList(){
		Response response = new Response();
		    List<Model> models = null;
		    try {
			   models =  modelInstance.getModList();
			   System.out.println(models);
			   response.success(models);
		     } catch (SQLException e) {
			   e.printStackTrace();
		     }
		return response;
	}
	/**
	 * 
	* @Title: getModAllList 
	* @Description: TODO
	* @date 2018年1月5日 下午1:16:37 
	* @return Response 
	* @author Ligeng    
	* @throws
	 */
	@RequestMapping(value = "/modelAllList", method = RequestMethod.POST)
	@ResponseBody
	public Response getModAllList(int page, int area, int floor){
		Response response = new Response();
		    List<Model> models = null;
		    try {
			   models =  modelInstance.getModAllList(page, area, floor);
			   System.out.println(models);
			   int number = modelInstance.getModNum(area, floor);
			   response.success(models,number);
		      } catch (SQLException e) {
			// TODO Auto-generated catch block
			   e.printStackTrace();
		     }
		return response;
	}

	/**
	 * 
	 * @Method：getModelComment
	 * @Description：find a model's comments
	 * @author：Snail
	 * @date：2018年1月5日 下午3:59:24
	 * @return：Response
	 */
	@RequestMapping(value = "/comm.final" , method = RequestMethod.GET)
	@ResponseBody
	public Response getModelComment(int modelId) {
		
		Response response = new Response();
		List<ModelComment> comments = null;
		int number = 0;
		
		try {
			comments = modelInstance.getCommentsByModel(modelId);
			number = modelInstance.getCommentNumbers(modelId);
			response.success(comments,number);
		}catch (Exception e) {
			response.failure("服务器错误");
			e.printStackTrace();
		}finally {
			return response;
		}
	}
	
	/**
	 * 
	 * @Method：getSimilarModel
	 * @Description：get similar models
	 * @author：Snail
	 * @date：2018年1月5日 下午4:45:44
	 * @return：Response
	 */
	@RequestMapping(value = "/simi.final" , method = RequestMethod.GET)
	@ResponseBody
	public Response getSimilarModel(int floor,double area) {
		
		Response response = new Response();
		List<Model> models = null;
		
		try {
			models = modelInstance.findSimilarModel(floor, area);
			response.success(models);
		}catch (Exception e) {
			response.failure("服务器错误");
			e.printStackTrace();
		}finally {
			return response;
		}
	}
	
	/**
	 * 
	 * @Method：createModelComment
	 * @Description：create model comment
	 * @author：Snail
	 * @date：2018年1月5日 下午4:48:28
	 * @return：Response
	 */
	@RequestMapping(value = "/creaComm.final" , method = RequestMethod.POST)
	@ResponseBody
	public Response createModelComment(ModelComment comment) {
		
		Response response = new Response();
		boolean result = false;
		
		try {
			result = modelInstance.createComment(comment);
			
			if( result == true) {
				response.success();
			}else {
				response.failure();
			}
		}catch (Exception e) {
			response.failure("服务器错误");
			e.printStackTrace();
		}finally {
			return response;
		}
	}
}
