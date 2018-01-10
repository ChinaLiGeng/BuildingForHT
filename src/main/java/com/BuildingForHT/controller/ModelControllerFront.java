package com.BuildingForHT.controller;

import java.io.File;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.BuildingForHT.entity.Model;
import com.BuildingForHT.entity.ModelComment;
import com.BuildingForHT.entity.User;
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
	 * @Method��getModelDetail
	 * @Description��get model detail
	 * @author��Snail
	 * @date��2018��1��4�� ����10:44:04
	 * @return��Response
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
	* @date 2018��1��5�� ����1:15:42 
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
	* @date 2018��1��5�� ����1:16:37 
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
	 * @Method��getModelComment
	 * @Description��find a model's comments
	 * @author��Snail
	 * @date��2018��1��5�� ����3:59:24
	 * @return��Response
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
			response.failure("����������");
			e.printStackTrace();
		}finally {
			return response;
		}
	}
	
	/**
	 * 
	 * @Method��getSimilarModel
	 * @Description��get similar models
	 * @author��Snail
	 * @date��2018��1��5�� ����4:45:44
	 * @return��Response
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
			response.failure("����������");
			e.printStackTrace();
		}finally {
			return response;
		}
	}
	
	/**
	 * 
	 * @Method��createModelComment
	 * @Description��create model comment
	 * @author��Snail
	 * @date��2018��1��5�� ����4:48:28
	 * @return��Response
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
			response.failure("����������");
			e.printStackTrace();
		}finally {
			return response;
		}
	}
	
	/**
	 * 
	 * @Method��getMyDesign
	 * @Description��get my design
	 * @author��Snail
	 * @date��2018��1��7�� ����9:50:18
	 * @return��Response
	 */
	@RequestMapping(value = "/myDesign.final" , method = RequestMethod.GET)
	@ResponseBody
	public Response getMyDesign(HttpSession session, int page, int state) {
		
		Response response = new Response();
		User user = (User) session.getAttribute("front_user");
		if(user == null){
			response.failure("δ��¼��");
			return response;
		}
		
		List<Model> models = null;
		int number = 0;
		
		try {
			models = modelInstance.getMyDesign(user.getUserId(), page, state);
			number = modelInstance.getMyDesignNumbers(user.getUserId(), state);
			response.success(models,number);
		}catch (Exception e) {
			response.failure("����������");
			e.printStackTrace();
		}finally {
			return response;
		}
	}
	/**
	 * 
	* @Title: updateModel 
	* @Description: TODO
	* @date 2018��1��7�� ����3:28:33 
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
			response.failure("���ȵ�¼��");
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
			response.failure("����������");
			e.printStackTrace();
		}finally {
			return response;
		}
	}
	/**
	 * 
	* @Title: createModel 
	* @Description: TODO
	* @date 2018��1��9�� ����11:39:27 
	* @return void 
	* @author Ligeng    
	* @throws
	 */
	@RequestMapping(value = "/createModel" , method = RequestMethod.POST)
	@ResponseBody
	public Response createModel(@RequestBody Model m) {
		
		Response response = new Response();
		try{
			int id =  modelInstance.creteModelId(m);
			 System.out.println(id);
			 response.success(null, id);
		}catch(Exception e){
			e.printStackTrace();
			response.failure();
		}
		return response;
	}
	/*@RequestMapping(value = "/uploadPic" , method = RequestMethod.POST)
	@ResponseBody
	public void uploadPic(HttpServletRequest request,HttpServletResponse response,String id){
		//Ϊ�������ṩ������Ϣ 
				DiskFileItemFactory factory = new DiskFileItemFactory(); 
				//�����������ʵ�� 
				ServletFileUpload sfu = new ServletFileUpload(factory); 
				//��ʼ���� 
				sfu.setFileSizeMax(1024*1024*20); 
				//ÿ�����������ݻ��װ��һ����Ӧ��FileItem������ 
				try { 
					List<FileItem> items = sfu.parseRequest(request); 
					System.out.println("sdsadsdasdasdas"+items.size());
					List<Model> routePicList = new ArrayList<Model>();             //����ͼƬ�������棩
					
					//���ֱ��� 
					for (int i = 0; i < items.size(); i++) { 
						
						FileItem item = items.get(i); 
						//isFormFieldΪtrue����ʾ�ⲻ���ļ��ϴ����� 
						if(!item.isFormField()){ 
							ServletContext sctx = request.getSession().getServletContext(); 
							//��ô���ļ�������·�� 
							//upload�µ�ĳ���ļ��� �õ���ǰ���ߵ��û� �ҵ���Ӧ���ļ��� 
					
							String path = sctx.getRealPath("/Common/Image"); 
							System.out.println("·����"+path); 
							//����ļ��� 
							String fileName = item.getName(); 
							System.out.println("��õ�ͼƬ����"+fileName); 
							//�÷�����ĳЩƽ̨(����ϵͳ),�᷵��·��+�ļ��� 
							fileName = fileName.substring(fileName.lastIndexOf("/")+1); 
							String trueName = System.currentTimeMillis()+fileName;
							File file = new File(path+"\\"+ trueName); 
							if(!file.exists()){ 
								item.write(file);
								
								//���ϴ�ͼƬ�����ּ�¼�����ݿ��� 
								Model model = new Model();
								model.setRoutePicture(trueName);
								routePicList.add(routePic);
							} 
						} 
					}
					System.out.println("lalal");
					
					
					
					if( routePicList.size()!=0 ){
						
						                     //��ͼƬ������ݿ�
					}
					
				}catch (Exception e) { 
					e.printStackTrace(); 
				} 
	}*/
}
