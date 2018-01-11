package com.BuildingForHT.service;

import java.sql.SQLException;
import java.util.List;

import com.BuildingForHT.entity.OrderTable;

public interface OrderService {
    /**
     * 
    * @Title: getOrderList 
    * @Description: TODO
    * @date 2018年1月8日 下午3:08:41 
    * @return List<OrderTable> 
    * @author Ligeng    
    * @throws
     */
	List<OrderTable> getOrderList(int page) throws SQLException;
    /**
     * 
    * @Title: getOrderNumber 
    * @Description: TODO
    * @date 2018年1月8日 下午3:08:46 
    * @return int 
    * @author Ligeng    
    * @throws
     */
	int getOrderNumber() throws SQLException;
	
	/**
	 * 
	 * @Method：getMyOrder
	 * @Description：get my order
	 * @author：Snail
	 * @date：2018年1月11日 下午9:36:06
	 * @return：List<OrderTable>
	 */
	List<OrderTable> getMyOrder(int userId);

}
