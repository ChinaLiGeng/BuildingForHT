package com.BuildingForHTadminBase;

import java.util.List;

import com.BuildingForHT.entity.Model;

public interface DaoBase<T> {

	/**
	 * 
	 * @Method: update 
	 * @Description: ���²���,����ʵ������̬ƴ��sql����Ȼ����ֱ��дsql����Ч�ʸߣ����ǿ��Դ�����̹������������ظ��Ĵ��룬
	 *               ���ҿ��ǵ���̨�õ����٣�������ν�ˡ�����һ�������������Ҫ��ÿһ��dao���ﶼȥʵ���������������UserDao��
	 *               ModelDao�ȣ���ȫ�����ڻ�����ȥʵ������������Ǿ�Ҫ�ѽӿڸ�Ϊ�������ˣ�������hibernate������session.update(T);
	 *               �Ժ���ʱ��ȥ��һ�� hibernateԴ�롣
	 * @author ZHM  
	 * @date 2017��11��16�� ����9:33:46 
	 * @return boolean
	 */
	boolean update(T t);
	
	/**
	 * 
	 * @Method: find 
	 * @Description: ���ݶ���id��ѯһ������
	 * @author ZHM  
	 * @date 2017��11��16�� ����9:34:51 
	 * @return T
	 */
	T find(final Object ...args);

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
	 * @Description: ����һ�����󣬲������Ҳһ������ʱ�俴��hibernateԴ��֮��Ҳ���԰Ѳ��뷽���ڻ�����ʵ��
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
