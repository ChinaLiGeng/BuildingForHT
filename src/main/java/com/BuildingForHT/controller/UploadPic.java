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
		//Ϊ�������ṩ������Ϣ 
		DiskFileItemFactory factory = new DiskFileItemFactory(); 
		//�����������ʵ�� 
		ServletFileUpload sfu = new ServletFileUpload(factory); 
		//��ʼ���� 
		sfu.setFileSizeMax(1024*1024*20); 
		int id = Integer.parseInt(request.getParameter("id"));
		//ÿ�����������ݻ��װ��һ����Ӧ��FileItem������ 
		try { 
			List<FileItem> items = sfu.parseRequest(request); 
			
			List<HouseLayout> houseLayouts = new ArrayList<HouseLayout>(); 
			List<EffectPic> effectPics = new ArrayList<EffectPic>(); //����ͼƬ�������棩
			
			//���ֱ��� 
			for (int i = 0; i < items.size(); i++) { 
				
				FileItem item = items.get(i); 
				//isFormFieldΪtrue����ʾ�ⲻ���ļ��ϴ����� 
				if(!item.isFormField()){ 
					ServletContext sctx = request.getSession().getServletContext(); 
					//��ô���ļ�������·�� 
					//upload�µ�ĳ���ļ��� �õ���ǰ���ߵ��û� �ҵ���Ӧ���ļ��� 
					String path = sctx.getRealPath("/Pic/effectPic"); 
					System.out.println("·����"+path); 
					//����ļ��� 
					String fileName = item.getName(); 
					if(i<4){
						HouseLayout hl = new HouseLayout();
						hl.setModelId(id);
						hl.setPic(fileName);
						
					}else{
						
					}
					System.out.println("��õ�ͼƬ����"+fileName); 
					//�÷�����ĳЩƽ̨(����ϵͳ),�᷵��·��+�ļ��� 
					fileName = fileName.substring(fileName.lastIndexOf("/")+1); 
					String trueName = System.currentTimeMillis()+fileName;
					File file = new File(path+"\\"+ trueName); 
					if(!file.exists()){ 
						item.write(file);
						
						//���ϴ�ͼƬ�����ּ�¼�����ݿ��� 
						Model model = new Model();
						/*model.setRoutePicture(trueName);
						routePicList.add(routePic);*/
					} 
				} 
			}
			System.out.println("lalal");
			
			
			
			/*if( .size()!=0 ){
				
				                     //��ͼƬ������ݿ�
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
