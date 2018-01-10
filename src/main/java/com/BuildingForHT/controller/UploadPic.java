package com.BuildingForHT.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.BuildingForHT.entity.EffectPic;
import com.BuildingForHT.entity.HouseLayout;
import com.BuildingForHT.entity.Model;

/**
 * Servlet implementation class UploadPic
 */
@WebServlet("/UploadPic")
public class UploadPic extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UploadPic() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//为解析类提供配置信息 
		DiskFileItemFactory factory = new DiskFileItemFactory(); 
		//创建解析类的实例 
		ServletFileUpload sfu = new ServletFileUpload(factory); 
		//开始解析 
		sfu.setFileSizeMax(1024*1024*20); 
		int id = Integer.parseInt(request.getParameter("id"));
		//每个表单域中数据会封装到一个对应的FileItem对象上 
		try { 
			List<FileItem> items = sfu.parseRequest(request); 
			
			List<HouseLayout> houseLayouts = new ArrayList<HouseLayout>(); 
			List<EffectPic> effectPics = new ArrayList<EffectPic>(); //所有图片（除封面）
			
			//区分表单域 
			for (int i = 0; i < items.size(); i++) { 
				
				FileItem item = items.get(i); 
				//isFormField为true，表示这不是文件上传表单域 
				if(!item.isFormField()){ 
					ServletContext sctx = request.getSession().getServletContext(); 
					//获得存放文件的物理路径 
					//upload下的某个文件夹 得到当前在线的用户 找到对应的文件夹 
					String path = sctx.getRealPath("/Pic/effectPic"); 
					System.out.println("路径："+path); 
					//获得文件名 
					String fileName = item.getName(); 
					if(i<4){
						HouseLayout hl = new HouseLayout();
						hl.setModelId(id);
						hl.setPic(fileName);
						
					}else{
						
					}
					System.out.println("获得的图片名："+fileName); 
					//该方法在某些平台(操作系统),会返回路径+文件名 
					fileName = fileName.substring(fileName.lastIndexOf("/")+1); 
					String trueName = System.currentTimeMillis()+fileName;
					File file = new File(path+"\\"+ trueName); 
					if(!file.exists()){ 
						item.write(file);
						
						//将上传图片的名字记录到数据库中 
						Model model = new Model();
						/*model.setRoutePicture(trueName);
						routePicList.add(routePic);*/
					} 
				} 
			}
			System.out.println("lalal");
			
			
			
			/*if( .size()!=0 ){
				
				                     //把图片存进数据库
			}*/
			
		}catch (Exception e) { 
			e.printStackTrace(); 
		} 
	}
     
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp)throws ServletException, IOException{
    	resp.setCharacterEncoding("utf-8");
    	req.setCharacterEncoding("utf-8");
    	super.service(req, resp);
    }
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
