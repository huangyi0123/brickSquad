package com.brick.squad.test;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.test.context.ContextConfiguration;

import com.brick.squad.expand.TypeExpand;
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
		String data=typeService.findTypeByParentId("xuebiao");
		System.out.println(data);
	}
	@Test
	public void testFindTypeById() {
		Type type= typeService.findTypeById("32cacadac0a411e7aca65254002ec43c");
		System.out.println(type.getName());
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
				.findTypeById("weiwuerzu");
		type.setName("食品");
		typeService.updateTypeById(type);
	}

	@Test
	public void testDeleteTypeById() {
		typeService.deleteTypeById("weiwuerzu");
	}

	@Test
	public void testTypePagination(){
		Pagination pagination=new Pagination();
		pagination.setCurentPage(1);
		pagination.setPageSize(4);
		System.out.println(typeService.typePagination(pagination));
	}
	@Test
	public void findAllType(){
		String data=typeService.findAllType();
		System.out.println(data);
	}
	@Test
	public void findTypeByParentId(){
		String data=typeService.findTypeByParentId("mz");
		System.out.println(data);
	}
	@Test
	public void findType(){
		List<Select> list=typeService.findType();
		for(Select s:list){
			System.out.println(s.getName());
		}
	}
	/***
	 * 医疗器械一级分类查询测试
	 * @throws Exception 
	 */
	@Test
	public void findIdAndTypeNmae() throws Exception{
		List<TypeExpand> listType=typeService.findIdAndTypeNmae("yiliaoqixie");
		for(TypeExpand type:listType){
			System.err.println(type.getAid()+"====="+type.getName());
		}
	}
}
