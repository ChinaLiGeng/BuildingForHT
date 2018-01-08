package com.BuildingForHT.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.BuildingForHT.entity.OrderTable;
import com.BuildingForHT.jsonFormat.Response;
import com.BuildingForHT.service.OrderService;

@Controller
@RequestMapping("/Ad/Order")
@SuppressWarnings("finally")
public class OrderController {
	
	@Autowired
	private OrderService serviceInstance;
	/**
	 * 
	* @Title: getOrdeList 
	* @Description: TODO
	* @date 2018��1��8�� ����3:15:28 
	* @return Response 
	* @author Ligeng    
	* @throws
	 */
	@RequestMapping(value = "/orderList" , method = RequestMethod.POST)
	@ResponseBody
	public Response getOrdeList(int page){
		Response response = new Response();
		try {
			List<OrderTable> ots = serviceInstance.getOrderList(page);
			response.success(ots);
		} catch (Exception e) {
			e.printStackTrace();
			response.failure("�����쳣!");
		}
		return response;
		
	}
	/**
	 * 
	* @Title: getOrdeNumber 
	* @Description: TODO
	* @date 2018��1��8�� ����3:17:43 
	* @return Response 
	* @author Ligeng    
	* @throws
	 */
	@RequestMapping(value = "/orderNumber" , method = RequestMethod.POST)
	@ResponseBody
	public Response getOrdeNumber(){
		Response response = new Response();
		try {
			int number = serviceInstance.getOrderNumber();
			response.success(null,number);
		} catch (Exception e) {
			e.printStackTrace();
			response.failure("�����쳣!");
		}
		return response;
		
	}
}