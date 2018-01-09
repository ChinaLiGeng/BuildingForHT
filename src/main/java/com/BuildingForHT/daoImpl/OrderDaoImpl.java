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
		  String sql = "select m.modelId,m.mainPic,u.userName,o.userPhone,o.desFee,o.address,o.createtime,o.trackState,o.orderid "
		  		+ "from ordertable o,user u,model m where m.modelId = o.modeId and o.userId = u.userId and o.state = 1 limit "+startP+" ," +10;
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
}
