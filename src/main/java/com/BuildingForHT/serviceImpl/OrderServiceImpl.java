package com.BuildingForHT.serviceImpl;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.BuildingForHT.dao.OrderDao;
import com.BuildingForHT.entity.OrderTable;
import com.BuildingForHT.service.OrderService;

@Service
public class OrderServiceImpl implements OrderService {
	
	@Autowired
	private OrderDao daoInstance;
    
	@Override
	public List<OrderTable> getOrderList(int page) throws SQLException{
		List<OrderTable> ots = daoInstance.getOrderList(page);
		return ots;
	}
	@Override
	public int getOrderNumber() throws SQLException{
		return daoInstance.getOrderNumber();
	}
}
