package FrontTest;

import java.sql.SQLException;
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
import com.BuildingForHT.entity.ModelRecord;
import com.BuildingForHT.service.ModelServiceFront;
import com.BuildingForHT.serviceImpl.ModelServiceImplFront;

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
	
	private ModelServiceFront modelInstance = new ModelServiceImplFront();

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
//    @Test
//    public void test4() throws SQLException{
//    	String s = "官方";
//    	int i= 1;
//    	serviceInstance.updateModel(i, s);
//    }
	
	@Test
	public void test5(){
		ModelRecord modelRecord=new ModelRecord();
		modelRecord.setModelId(43);
		modelRecord.setObjPath("1");
		modelRecord.setMtlPath("1");
		modelRecord.setModifyInfo("需要修改这个");
		modelRecord.setVersion(1);
		modelRecord.setState(1);
		modelRecord.setPrice(100);
		modelRecord.setFloorNumber(11);
		modelRecord.setBuildingArea(30);
		modelRecord.setLandArea(40);
		try {
			System.out.println("creata_fee_list-->"+serviceInstance.create_fee_list(modelRecord));
		} catch (Exception e) {
			e.printStackTrace();
		}		
		
		
	}
    @Test
    public void test4() throws SQLException{
    	
    	System.out.println(modelInstance.getmodel());
    }
   
}
