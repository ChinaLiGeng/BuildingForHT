package com.BuildingForHT.controller;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.BuildingForHT.entity.Model;
import com.BuildingForHT.entity.ModelAssembly;
import com.BuildingForHT.entity.ModelComment;
import com.BuildingForHT.entity.ModelRecord;
import com.BuildingForHT.entity.PriceList;
import com.BuildingForHT.entity.User;
import com.BuildingForHT.globle.Constants;
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
	public ModelAndView getModelDetail(int modelId) {
		
		ModelAndView mav = new ModelAndView();
		Model model = null;
		
		try {
			model = modelInstance.getModelDetail(modelId);
			mav.addObject(model);
			mav.setViewName("forward:../../Front/ModelDetail/ModelDetail.jsp");
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			return mav;
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
		System.out.println(page);
		    List<Model> models = null;
		    try {
			   models =  modelInstance.getModAllList(page, area, floor);
			   System.out.println(models);
			   int number = modelInstance.getModNum(area, floor);
			   response.success(models,number);
			   System.out.println(response);
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
	public Response getModelComment(int modelId,int page) {
		
		Response response = new Response();
		List<ModelComment> comments = null;
		int number = 0;
		
		try {
			comments = modelInstance.getCommentsByModel(modelId,page);
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
	
	/**
	 * 
	 * @Method：getMyDesign
	 * @Description：get my design
	 * @author：Snail
	 * @date：2018年1月7日 下午9:50:18
	 * @return：Response
	 */
	@RequestMapping(value = "/myDesign.final" , method = RequestMethod.GET)
	@ResponseBody
	public Response getMyDesign(HttpSession session, int page, int state) {
		
		Response response = new Response();
		User user = (User) session.getAttribute("front_user");
		if(user == null){
			response.failure("未登录！");
			return response;
		}
		
		List<Model> models = null;
		int number = 0;
		
		try {
			models = modelInstance.getMyDesign(user.getUserId(), page, state);
			number = modelInstance.getMyDesignNumbers(user.getUserId(), state);
			response.success(models,number);
		}catch (Exception e) {
			response.failure("服务器错误");
			e.printStackTrace();
		}finally {
			return response;
		}
	}
	/**
	 * 
	* @Title: updateModel 
	* @Description: TODO
	* @date 2018年1月7日 下午3:28:33 
	* @return Response 
	* @author Ligeng    
	* @throws
	 */
	@RequestMapping(value = "/updateModel" , method = RequestMethod.POST)
	@ResponseBody
	public Response updateModel(int id,String sugg,HttpSession session) {
		
		Response response = new Response();
		boolean result = false;
		User uu = (User) session.getAttribute("front_user");
		if(uu == null){
			response.failure("请先登录！");
			return response;
		}
		if(modelInstance.updateModel(id, sugg,uu.getUserId()) == 1){
			result = true;
		}
		try {
			//result = modelInstance.createComment(comment);
			
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
	
	/**
	 * 
	 * @Method：getNeverModifiedModels
	 * @Description：get never modified models
	 * @author：Snail
	 * @date：2018年1月9日 下午9:42:46
	 * @return：Response
	 */
	@RequestMapping(value = "/neverModifiModels.final" , method = RequestMethod.GET)
	@ResponseBody
	public Response getNeverModifiedModels(int page,HttpSession session) {
		
		Response response = new Response();
		Map userSession = (HashMap)session.getAttribute(Constants.ADMIN_USER_SESSION);
		if( userSession == null ){
			response.failure("用户未登录");
			return response;
		}
		
		User user = (User) userSession.get(Constants.LOGIN_MAP_USER);
		if( user == null ){
			response.failure("用户未登录");
			return response;
		}
		
		List<Model> models = null;
		int number = 0;
		
		try {
			models = modelInstance.getNeverModifiedModels(user.getUserId(), page);
			number = modelInstance.getNeverModifiedNumber(user.getUserId());
			response.success(models,number);
		}catch (Exception e) {
			response.failure("服务器错误");
			e.printStackTrace();
		}finally {
			return response;
		}
	}
	
	/**
	 * 
	 * @Method：getContinueModifiedModels
	 * @Description：get continue modified models
	 * @author：Snail
	 * @date：2018年1月9日 下午9:42:46
	 * @return：Response
	 */
	@RequestMapping(value = "/continueModifiModels.final" , method = RequestMethod.GET)
	@ResponseBody
	public Response getContinueModifiedModels(int page,HttpSession session) {
		
		Response response = new Response();
		Map userSession = (HashMap)session.getAttribute(Constants.ADMIN_USER_SESSION);
		if( userSession == null ){
			response.failure("用户未登录");
			return response;
		}
		
		User user = (User) userSession.get(Constants.LOGIN_MAP_USER);
		if( user == null ){
			response.failure("用户未登录");
			return response;
		}
		
		List<ModelRecord> models = null;
		int number = 0;
		
		try {
			models = modelInstance.getContinueModifiedModels(user.getUserId(), page);
			number = modelInstance.getContinueModifiedNumber(user.getUserId());
			response.success(models,number);
		}catch (Exception e) {
			response.failure("服务器错误");
			e.printStackTrace();
		}finally {
			return response;
		}
	}
	
	/**
	 * 
	 * @Method：getCalcModels
	 * @Description：get calc models
	 * @author：Snail
	 * @date：2018年1月10日 上午2:36:29
	 * @return：Response
	 */
	@RequestMapping(value = "/calcModels.final" , method = RequestMethod.GET)
	@ResponseBody
	public Response getCalcModels(int page,HttpSession session) {
		
		Response response = new Response();
		Map userSession = (HashMap)session.getAttribute(Constants.ADMIN_USER_SESSION);
		if( userSession == null ){
			response.failure("用户未登录");
			return response;
		}
		
		User user = (User) userSession.get(Constants.LOGIN_MAP_USER);
		if( user == null ){
			response.failure("用户未登录");
			return response;
		}
		
		List<ModelRecord> models = null;
		int number = 0;
		
		try {
			models = modelInstance.getCalcModels(user.getUserId(), page);
			number = modelInstance.getCalcModelNumber(user.getUserId());
			response.success(models,number);
		}catch (Exception e) {
			response.failure("服务器错误");
			e.printStackTrace();
		}finally {
			return response;
		}
	}
	
	/**
	 * 
	 * @Method：getAdminModels
	 * @Description：get admin models
	 * @author：Snail
	 * @date：2018年1月10日 上午3:00:01
	 * @return：Response
	 */
	@RequestMapping(value = "/adminModels.final" , method = RequestMethod.GET)
	@ResponseBody
	public Response getAdminModels(int page) {
		
		Response response = new Response();
		List<Model> models = null;
		int number = 0;
		
		try {
			models = modelInstance.getAdminModels(page);
			number = modelInstance.getAdminModelNumber();
			response.success(models,number);
		}catch (Exception e) {
			response.failure("服务器错误");
			e.printStackTrace();
		}finally {
			return response;
		}
	}
	
	/**
	 * 
	 * @Method：getModelAssembly
	 * @Description：get model assembly
	 * @author：Snail
	 * @date：2018年1月10日 下午4:41:07
	 * @return：Response
	 */
	@RequestMapping(value = "/model_assembly.final" , method = RequestMethod.GET)
	@ResponseBody
	public Response getModelAssembly(int modiId) {
		
		Response response = new Response();
		List<ModelAssembly> models = null;
		
		try {
			models = modelInstance.getAssembly(modiId);
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
	 * @Method：calcModels
	 * @Description：calc model
	 * @author：Snail
	 * @date：2018年1月10日 下午4:45:57
	 * @return：Response
	 */
	@RequestMapping(value = "/calc_update_model.final" , method = RequestMethod.POST)
	@ResponseBody
	public Response calcModels(int modiId,PriceList priceList,int modelId,int price) {
		
		Response response = new Response();
		boolean result = false;
		
		try {
			result = modelInstance.calcModel(modiId, priceList, modelId, price);
			
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
