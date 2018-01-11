package com.BuildingForHT.dao;

import java.sql.SQLException;
import java.util.List;

import com.BuildingForHT.entity.OrderTable;

public interface OrderDao {
    /**
     * @throws SQLException 
     * 
    * @Title: getOrderNumber 
    * @Description: TODO
    * @date 2018��1��8�� ����2:59:14 
    * @return int 
    * @author Ligeng    
    * @throws
     */
	int getOrderNumber() throws SQLException;
    /**
     * @throws SQLException 
     * 
    * @Title: getOrderList 
    * @Description: TODO
    * @date 2018��1��8�� ����2:59:19 
    * @return List<OrderTable> 
    * @author Ligeng    
    * @throws
     */
	List<OrderTable> getOrderList(int page) throws SQLException;
	
	/**
	 * 
	 * @Method��getMyOrder
	 * @Description��get my order
	 * @author��Snail
	 * @date��2018��1��11�� ����9:36:06
	 * @return��List<OrderTable>
	 */
	List<OrderTable> getMyOrder(int userId);

}
