package com.BuildingForHTadminBase;

import java.util.List;

public interface ServiceBase<T> {

	/**
	 * 
	 * @Method: update 
	 * @Description: ���²���
	 * @author ZHM  
	 * @date 2017��11��16�� ����9:33:46 
	 * @return boolean
	 */
	boolean update(T t);
	
	/**
	 * 
	 * @Method: find 
	 * @Description: ��������������ѯһ������
	 * @author ZHM  
	 * @date 2017��11��16�� ����9:34:51 
	 * @return T
	 */
	//T find(final Object ...args);
	T find(Integer id);
	/**
	 * 
	 * @Method: finaAll 
	 * @Description: ��������������ҳ����ѯĳһҳ����
	 * @author ZHM  
	 * @date 2017��11��16�� ����9:36:08 
	 * @return List<T>
	 */
	List<T> findAll( int page,final Object ...args );
	
	/**
	 * 
	 * @Method: getNumbers 
	 * @Description: ����������ѯ������
	 * @author ZHM  
	 * @date 2017��11��16�� ����2:31:30 
	 * @return int
	 */
	int getNumbers( final Object ...args );
	
	/**
	 * 
	 * @Method: insert 
	 * @Description: ����һ������
	 * @author ZHM  
	 * @date 2017��11��16�� ����2:10:20 
	 * @return boolean
	 */
	boolean insert(T t);
	
	/**
	 * 
	 * @Method: insert 
	 * @Description: ��������
	 * @author ZHM  
	 * @date 2017��11��16�� ����2:11:04 
	 * @return boolean
	 */
	boolean insert(List<T> t);
}
