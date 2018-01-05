package FrontTest;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import com.BuildingForHT.dao.ModelDaoFront;
import com.BuildingForHT.entity.HouseLayout;
import com.BuildingForHT.entity.Model;
import com.BuildingForHT.service.ModelServiceFront;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:SpringContext.xml"})
@WebAppConfiguration("src/main/resources")
public class ModelTest {
	
	@Autowired
	private ModelDaoFront daoInstance;
	
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	@Autowired
	private ModelServiceFront serviceInstance;

	@Test
	public void test() {
		
		List<HouseLayout> result = daoInstance.getHousePics(1);
		System.out.println(result);
	}
	
	@Test
	public void test2() {
		
		Model result = serviceInstance.getModelDetail(1);
		System.out.println(result);
	}
	
	@Test
	public void test3() {
		
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String time = df.format(new Date());
		
		String sql = "insert into model_comment(modelId,userId,state,context,createTime) values(?,?,?,?,?)";
		Object []params = {1,1,1,"sds",time};
		
		System.err.println(jdbcTemplate.update(sql,params));
	}

}
