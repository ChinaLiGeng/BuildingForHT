package com.BuildingForHTadminBase;

import java.util.List;

public interface ServiceBase<T> {

	/**
	 * 
	 * @Method: update 
	 * @Description: 更新操作
	 * @author ZHM  
	 * @date 2017年11月16日 上午9:33:46 
	 * @return boolean
	 */
	boolean update(T t);
	
	/**
	 * 
	 * @Method: find 
	 * @Description: 根据搜索条件查询一个对象
	 * @author ZHM  
	 * @date 2017年11月16日 上午9:34:51 
	 * @return T
	 */
	//T find(final Object ...args);
	T find(Integer id);
	/**
	 * 
	 * @Method: finaAll 
	 * @Description: 根据搜索条件和页数查询某一页数据
	 * @author ZHM  
	 * @date 2017年11月16日 上午9:36:08 
	 * @return List<T>
	 */
	List<T> findAll( int page,final Object ...args );
	
	/**
	 * 
	 * @Method: getNumbers 
	 * @Description: 根据条件查询出总数
	 * @author ZHM  
	 * @date 2017年11月16日 下午2:31:30 
	 * @return int
	 */
	int getNumbers( final Object ...args );
	
	/**
	 * 
	 * @Method: insert 
	 * @Description: 插入一个对象
	 * @author ZHM  
	 * @date 2017年11月16日 下午2:10:20 
	 * @return boolean
	 */
	boolean insert(T t);
	
	/**
	 * 
	 * @Method: insert 
	 * @Description: 批量插入
	 * @author ZHM  
	 * @date 2017年11月16日 下午2:11:04 
	 * @return boolean
	 */
	boolean insert(List<T> t);
}
