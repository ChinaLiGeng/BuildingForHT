package com.BuildingForHT.daoImpl;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowCallbackHandler;
import org.springframework.stereotype.Repository;

import com.BuildingForHT.dao.OrderDao;
import com.BuildingForHT.entity.OrderTable;

@Repository
public class OrderDaoImpl implements OrderDao {
	
	@Autowired
	private JdbcTemplate jdbcTemplate;
    
	@Override
	public List<OrderTable> getOrderList(int page) throws SQLException{
		 List<OrderTable> ot = null;
		  int startP = (page -1)* 10;
		  String sql = "select m.modelId,m.mainPic,u.userName,o.userPhone,o.orderFee,o.address,o.createtime,o.trackState,o.orderid "
		  		+ "from ordertable o,user u,model m where m.modelId = o.modelId and o.userId = u.userId and o.state = 1 limit "+startP+" ," +10;
		  ot = jdbcTemplate.query(sql, new BeanPropertyRowMapper(OrderTable.class));
		 return ot;
	}
	@Override
	public int getOrderNumber() throws SQLException{
		int result = 0;
		  String sql = "select count(*) from ordertable where state = 1";
		  result = jdbcTemplate.queryForObject(sql,Integer.class);
		return result;
	}
	
	@Override
	public List<OrderTable> getMyOrder(int userId) {
		
		List<OrderTable> orders = null;
		
		String sql = "select m.modelId,m.mainPic,m.name,o.* "
					+ "from ordertable o,model m where o.userId = "+userId+" and o.modelId = m.modelId and o.state = 1 and m.state = 1 order by orderId desc limit 0,4";
		orders = jdbcTemplate.query(sql, new BeanPropertyRowMapper(OrderTable.class));
		
		return orders;
	}
}
