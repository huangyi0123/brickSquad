package com.brick.squad.test;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.brick.squad.pojo.Relatives;
import com.brick.squad.service.RelativesService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "classpath:com/brick/squad/config/applicationContext.xml")
public class RelativesServiceTest {
	@Autowired
	@Qualifier("relativesService")
	private RelativesService relativesService;

	@Test
	public void testFindRelativesById() {
		Relatives relatives=relativesService.findRelativesById("b9de4736b02811e78d4f5254002ec43c");
		System.out.println(relatives.getId());
	}

	@Test
	public void testInsertRelatives() {
		Relatives relatives =new Relatives();
		relatives.setPerId("123");
		relatives.setName("wee");
		relatives.setRelationshipId("123");
		relatives.setTelephone("12334");
		relatives.setAddressId("12");
		relativesService.insertRelatives(relatives);
	}

	@Test
	public void testUpdateRelativesById() {
		Relatives relatives=relativesService.findRelativesById("b9de4736b02811e78d4f5254002ec43c");
		relatives.setName("李四");
		relativesService.updateRelativesById(relatives);
	}

	@Test
	public void testDeleteRelativesById() {
		relativesService.deleteRelativesById("b9de4736b02811e78d4f5254002ec43c");
	}

}
