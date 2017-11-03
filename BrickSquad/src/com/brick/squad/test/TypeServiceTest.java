package com.brick.squad.test;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.test.context.ContextConfiguration;

import com.brick.squad.pojo.Type;
import com.brick.squad.service.TypeService;
import com.brick.squad.util.JunitClassRunner;
import com.brick.squad.util.Pagination;
import com.brick.squad.util.Select;

@RunWith(JunitClassRunner.class)
@ContextConfiguration(locations = "classpath:com/brick/squad/config/applicationContext.xml")
public class TypeServiceTest {

	@Autowired
	@Qualifier("typeService")
	private TypeService typeService;

	@Test
	public void findTypeByParentIdTest(){
		typeService.findTypeByParentId("0");
	}
	
	
	
	@Test
	public void testFindTypeById() {
		typeService.findTypeById("c6158d3cb0b611e78d4f5254002ec43c");
	}

	@Test
	public void testInsertType() {
		Type type = new Type();
		type.setId("mz");
		type.setName("民族");
		typeService.insertType(type);
	}

	@Test
	public void testUpdateTypeById() {
		Type type = typeService
				.findTypeById("c6158d3cb0b611e78d4f5254002ec43c");
		type.setName("食品");
		typeService.updateTypeById(type);
	}

	@Test
	public void testDeleteTypeById() {
		typeService.deleteTypeById("c6158d3cb0b611e78d4f5254002ec43c");
	}

	@Test
	public void testTypePagination(){
		Pagination pagination=new Pagination();
		pagination.setCurentPage(1);
		pagination.setPageSize(4);
		System.out.println(typeService.typePagination(pagination));
	}
	@Test
	public void findType(){
		List<Select> list=typeService.findType();
		for(Select s:list){
			System.out.println(s.getName());
		}
	}
}
