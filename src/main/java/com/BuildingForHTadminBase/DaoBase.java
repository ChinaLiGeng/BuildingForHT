package com.BuildingForHTadminBase;

import java.util.List;

import com.BuildingForHT.entity.Model;

public interface DaoBase<T> {

	/**
	 * 
	 * @Method: update 
	 * @Description: 更新操作,根据实体来动态拼接sql，虽然不如直接写sql来的效率高，但是可以大大缩短工作量，避免重复的代码，
	 *               而且考虑到后台用的人少，就无所谓了。还有一个问题就是我需要在每一个dao类里都去实现这个方法，比如UserDao、
	 *               ModelDao等，完全可以在基类里去实现这个方法（那就要把接口改为抽象类了），就像hibernate那样，session.update(T);
	 *               以后有时间去看一下 hibernate源码。
	 * @author ZHM  
	 * @date 2017年11月16日 上午9:33:46 
	 * @return boolean
	 */
	boolean update(T t);
	
	/**
	 * 
	 * @Method: find 
	 * @Description: 根据对象id查询一个对象
	 * @author ZHM  
	 * @date 2017年11月16日 上午9:34:51 
	 * @return T
	 */
	T find(final Object ...args);

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
	 * @Description: 插入一个对象，插入操作也一样，有时间看了hibernate源码之后，也可以把插入方法在基类中实现
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
