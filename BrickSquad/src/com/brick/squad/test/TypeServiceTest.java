package com.brick.squad.test;

import static org.junit.Assert.*;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.brick.squad.pojo.Type;
import com.brick.squad.service.TypeService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations="classpath:com/brick/squad/config/applicationContext.xml")
public class TypeServiceTest {

	@Autowired
	@Qualifier("typeService")
	private TypeService typeService;
	
	@Test
	public void testFindTypeById() {
		typeService.findTypeById("c6158d3cb0b611e78d4f5254002ec43c");
	}

	@Test
	public void testInsertType() {
		Type type=new Type();
		type.setParentId("2");
		type.setName("衣服");
		typeService.insertType(type);
	}

	@Test
	public void testUpdateTypeById() {
		Type type=typeService.findTypeById("c6158d3cb0b611e78d4f5254002ec43c");
		type.setName("食品");
		typeService.updateTypeById(type);
	}

	@Test
	public void testDeleteTypeById() {
		typeService.deleteTypeById("c6158d3cb0b611e78d4f5254002ec43c");
	}

}
