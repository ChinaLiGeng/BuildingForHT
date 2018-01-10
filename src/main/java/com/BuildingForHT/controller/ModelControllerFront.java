package com.BuildingForHT.controller;

import java.io.File;
import java.io.IOException;
import java.sql.SQLException;

import java.util.ArrayList;

import java.util.HashMap;

import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
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
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.BuildingForHT.entity.EffectPic;
import com.BuildingForHT.entity.HouseLayout;
import com.BuildingForHT.entity.Model;
import com.BuildingForHT.entity.ModelAssembly;
import com.BuildingForHT.entity.ModelComment;
import com.BuildingForHT.entity.ModelRecord;
import com.BuildingForHT.entity.OrderTable;
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
	
	
	/**
	 * 
	 * @Method��getNeverModifiedModels
	 * @Description��get never modified models
	 * @author��Snail
	 * @date��2018��1��9�� ����9:42:46
	 * @return��Response
	 */
	@RequestMapping(value = "/neverModifiModels.final" , method = RequestMethod.GET)
	@ResponseBody
	public Response getNeverModifiedModels(int page,HttpSession session) {
		
		Response response = new Response();
		Map userSession = (HashMap)session.getAttribute(Constants.ADMIN_USER_SESSION);
		if( userSession == null ){
			response.failure("�û�δ��¼");
			return response;
		}
		
		User user = (User) userSession.get(Constants.LOGIN_MAP_USER);
		if( user == null ){
			response.failure("�û�δ��¼");
			return response;
		}
		
		List<Model> models = null;
		int number = 0;
		
		try {
			models = modelInstance.getNeverModifiedModels(user.getUserId(), page);
			number = modelInstance.getNeverModifiedNumber(user.getUserId());
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
	 * @Method��getContinueModifiedModels
	 * @Description��get continue modified models
	 * @author��Snail
	 * @date��2018��1��9�� ����9:42:46
	 * @return��Response
	 */
	@RequestMapping(value = "/continueModifiModels.final" , method = RequestMethod.GET)
	@ResponseBody
	public Response getContinueModifiedModels(int page,HttpSession session) {
		
		Response response = new Response();
		Map userSession = (HashMap)session.getAttribute(Constants.ADMIN_USER_SESSION);
		if( userSession == null ){
			response.failure("�û�δ��¼");
			return response;
		}
		
		User user = (User) userSession.get(Constants.LOGIN_MAP_USER);
		if( user == null ){
			response.failure("�û�δ��¼");
			return response;
		}
		
		List<ModelRecord> models = null;
		int number = 0;
		
		try {
			models = modelInstance.getContinueModifiedModels(user.getUserId(), page);
			number = modelInstance.getContinueModifiedNumber(user.getUserId());
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
	 * @Method��getCalcModels
	 * @Description��get calc models
	 * @author��Snail
	 * @date��2018��1��10�� ����2:36:29
	 * @return��Response
	 */
	@RequestMapping(value = "/calcModels.final" , method = RequestMethod.GET)
	@ResponseBody
	public Response getCalcModels(int page,HttpSession session) {
		
		Response response = new Response();
		Map userSession = (HashMap)session.getAttribute(Constants.ADMIN_USER_SESSION);
		if( userSession == null ){
			response.failure("�û�δ��¼");
			return response;
		}
		
		User user = (User) userSession.get(Constants.LOGIN_MAP_USER);
		if( user == null ){
			response.failure("�û�δ��¼");
			return response;
		}
		
		List<ModelRecord> models = null;
		int number = 0;
		
		try {
			models = modelInstance.getCalcModels(user.getUserId(), page);
			number = modelInstance.getCalcModelNumber(user.getUserId());
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
	 * @Method��getAdminModels
	 * @Description��get admin models
	 * @author��Snail
	 * @date��2018��1��10�� ����3:00:01
	 * @return��Response
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
			response.failure("����������");
			e.printStackTrace();
		}finally {
			return response;
		}
	}
	@RequestMapping(value = "/UploadPic" , method = RequestMethod.POST)
	@ResponseBody
	public void uploadPic(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
				//Ϊ�������ṩ������Ϣ 
				DiskFileItemFactory factory = new DiskFileItemFactory(); 
				//�����������ʵ�� 
				ServletFileUpload sfu = new ServletFileUpload(factory); 
				//��ʼ���� 
				
				int id = modelInstance.getmodel();
				System.out.println(id);
				
				//ÿ�����������ݻ��װ��һ����Ӧ��FileItem������ 
				try { 
					List<FileItem> items = sfu.parseRequest(request); 
					System.out.println(222);
					System.out.println(items.size());
					//���ֱ��� 
					for (int i = 0; i < items.size(); i++) { 
						
						FileItem item = items.get(i); 
						//isFormFieldΪtrue����ʾ�ⲻ���ļ��ϴ����� 
						if(item.isFormField()){ 
							System.out.println(11);
							ServletContext sctx = request.getSession().getServletContext(); 
							//��ô���ļ�������·�� 
							//upload�µ�ĳ���ļ��� �õ���ǰ���ߵ��û� �ҵ���Ӧ���ļ��� 
							
							//����ļ��� 
							String fileName = item.getName(); 
							 
							String path = sctx.getRealPath("/Pic/effectPic"); 
							System.out.println("·����"+path); 
							//�÷�����ĳЩƽ̨(����ϵͳ),�᷵��·��+�ļ��� 
							fileName = fileName.substring(fileName.lastIndexOf("/")+1); 
							String trueName = System.currentTimeMillis()+fileName;
							System.out.println("��õ�ͼƬ����"+fileName); 
							File file = new File(path+"\\Pic\\effectPic\\"+ trueName); 
							if(!file.exists()){ 
								item.write(file);
								System.out.println(1);
								if(fileName.charAt(0) == '1'){
									EffectPic ef = new EffectPic();
									ef.setModelId(id);
									ef.setPic(trueName);
									modelInstance.uploadEffectPic(ef);
									if(fileName.charAt(0) == '0'){
										modelInstance.updateM(id, fileName);
									}
								}else{
									HouseLayout hl = new HouseLayout();
									hl.setModelId(id);
									hl.setPic(trueName);
									modelInstance.uploadHouseLayout(hl);
								}
								
								
								
							} 
						} 
					}
					//System.out.println(houseLayouts);
					//modelInstance.uploadPic(houseLayouts, effectPics);
					
					
					/*if( .size()!=0 ){
						
						                     //��ͼƬ������ݿ�
					}*/
					
				}catch (Exception e) { 
					e.printStackTrace(); 
				} 
	}
	
	/**
     * ͼƬ�ļ��ϴ�
     */
    @ResponseBody
    @RequestMapping(value = "/photoUpload",method = RequestMethod.POST)
    public void photoUpload(MultipartFile file,HttpServletRequest request,HttpServletResponse response) throws IllegalStateException, IOException{
    	int id = modelInstance.getmodel();
        if (file!=null) {// �ж��ϴ����ļ��Ƿ�Ϊ��
            String path=null;// �ļ�·��
            String type=null;// �ļ�����
            String fileName=file.getOriginalFilename();// �ļ�ԭ����
            System.out.println("�ϴ����ļ�ԭ����:"+fileName);
            // �ж��ļ�����
            type=fileName.indexOf(".")!=-1?fileName.substring(fileName.lastIndexOf(".")+1, fileName.length()):null;
            if (type!=null) {// �ж��ļ������Ƿ�Ϊ��
                if ("GIF".equals(type.toUpperCase())||"PNG".equals(type.toUpperCase())||"JPG".equals(type.toUpperCase())) {
                    // ��Ŀ��������ʵ�ʷ������еĸ�·��
                    // �Զ�����ļ�����
                    String trueFileName=String.valueOf(System.currentTimeMillis())+fileName;
                    // ���ô��ͼƬ�ļ���·��
                    //path=realPath+/*System.getProperty("file.separator")+*/trueFileName;
                    
                    // ת���ļ���ָ����·��
                    //file.transferTo(new File(path));
                    System.out.println("�ļ��ɹ��ϴ���ָ��Ŀ¼��");
                    if(fileName.charAt(0) == '1'){
						EffectPic ef = new EffectPic();
						ef.setModelId(id);
						ef.setPic(trueFileName);
						modelInstance.uploadEffectPic(ef);
						String realPath=request.getSession().getServletContext().getRealPath("/Pic/effectPic/Side");
						path=realPath+"\\"+trueFileName;
						System.out.println("���ͼƬ�ļ���·��:"+path);
						file.transferTo(new File(path));
						if(fileName.charAt(1) == '0'){
							modelInstance.updateM(id, trueFileName);
							String realPath1=request.getSession().getServletContext().getRealPath("/Pic/effectPic/MainPic");
							path=realPath1+"\\"+trueFileName;
							System.out.println("���ͼƬ�ļ���·��:"+path);
							file.transferTo(new File(path));
						}
					}else{
						HouseLayout hl = new HouseLayout();
						hl.setModelId(id);
						hl.setPic(trueFileName);
						modelInstance.uploadHouseLayout(hl);
						String realPath2=request.getSession().getServletContext().getRealPath("/Pic/effectPic/Layout");
						path=realPath2+"\\"+trueFileName;
						System.out.println("���ͼƬ�ļ���·��:"+path);
						file.transferTo(new File(path));
					}
                }else {
                	String trueFileName=String.valueOf(System.currentTimeMillis())+fileName;
                	 if ("OBJ".equals(type.toUpperCase())){
                		 String realPath=request.getSession().getServletContext().getRealPath("/ModelFile/obj");
                		 path=realPath+"\\"+trueFileName;
                		 file.transferTo(new File(path));
                		 modelInstance.updateMObj(id, trueFileName, 1);
                	 }else if ("MTL".equals(type.toUpperCase())){
                		 String realPath=request.getSession().getServletContext().getRealPath("/ModelFile/mtl");
                		 path=realPath+"\\"+trueFileName;
                		 file.transferTo(new File(path));
                		 modelInstance.updateMObj(id, trueFileName, 2);
                	}
                    return ;
                }
            }else {
                System.out.println("�ļ�����Ϊ��");
                return ;
            }
        }else {
            System.out.println("û���ҵ����Ӧ���ļ�");
            return ;
        }
        return ;
    }

    /**
	 * 
	 * @Method��getModelAssembly
	 * @Description��get model assembly
	 * @author��Snail
	 * @date��2018��1��10�� ����4:41:07
	 * @return��Response
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
			response.failure("����������");
			e.printStackTrace();
		}finally {
			return response;
		}
	}
	
	/**
	 * 
	 * @Method��calcModels
	 * @Description��calc model
	 * @author��Snail
	 * @date��2018��1��10�� ����4:45:57
	 * @return��Response
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
			response.failure("����������");
			e.printStackTrace();
		}finally {
			return response;
		}
	}
	/**
	 * 
	 * @Method��createOrder
	 * @Description��craete order
	 * @author��Snail
	 * @date��2018��1��10�� ����9:42:58
	 * @return��Response
	 */
	@RequestMapping(value = "/create_order.final" , method = RequestMethod.POST)
	@ResponseBody
	public Response createOrder(OrderTable order, int modelId ,HttpSession session) {
		
		Response response = new Response();
		boolean result = false;
		User user = (User) session.getAttribute("front_user");
		if(user == null){
			response.failure("δ��¼��");
			return response;
		}
		
		try {
			result = modelInstance.createOrder(order, modelId, user.getUserId());
			
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
	 * @Method��denyOrder
	 * @Description��deny to order
	 * @author��Snail
	 * @date��2018��1��10�� ����9:43:06
	 * @return��Response
	 */
	@RequestMapping(value = "/deny_order.final" , method = RequestMethod.POST)
	@ResponseBody
	public Response denyOrder(int modelId) {
		
		Response response = new Response();
		boolean result = false;
		
		try {
			result = modelInstance.calcUpdateModel(modelId, 5);
			
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
	 * @Method��continueOrder
	 * @Description��continue order
	 * @author��Snail
	 * @date��2018��1��10�� ����10:38:03
	 * @return��Response
	 */
	@RequestMapping(value = "/continue_order.final" , method = RequestMethod.POST)
	@ResponseBody
	public Response continueOrder(String suddestion, int modelId ){
		
		Response response = new Response();
		boolean result = false;
		
		try {
			result = modelInstance.continueOrder(suddestion, modelId);
			
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
	 * @Method��getHistory
	 * @Description��get model history
	 * @author��Snail
	 * @date��2018��1��10�� ����11:06:49
	 * @return��Response
	 */
	@RequestMapping(value = "/model_history.final" , method = RequestMethod.GET)
	@ResponseBody
	public Response getHistory(int modelId) {
		
		Response response = new Response();
		List<ModelRecord> models = null;
		
		try {
			models = modelInstance.getHistory(modelId);
			response.success(models);
		}catch (Exception e) {
			response.failure("����������");
			e.printStackTrace();
		}finally {
			return response;
		}
	}
	
}
