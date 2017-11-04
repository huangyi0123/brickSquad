package com.brick.squad.test;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.brick.squad.expand.RelativesAndAddressAndTypeAndPersonExpand;
import com.brick.squad.pojo.Address;
import com.brick.squad.pojo.PersonalInformation;
import com.brick.squad.pojo.Relatives;
import com.brick.squad.pojo.Type;
import com.brick.squad.service.RelativesService;
import com.brick.squad.util.JunitClassRunner;

@RunWith(JunitClassRunner.class)
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

			RelativesAndAddressAndTypeAndPersonExpand relatives2 =new RelativesAndAddressAndTypeAndPersonExpand();
			relatives2.setRelatives(new Relatives());
			relatives2.setAddress(new Address());
			relatives2.setPersonalInformation(new PersonalInformation());
			relatives2.setType(new Type());
			
			try {
				Relatives relatives =relatives2.getRelatives();
				Address address =relatives2.getAddress();
				relatives.setPerId("1");
				relatives.setName("2");
				relatives.setRelationshipId("3");
				relatives.setTelephone("4");
				relatives.setAddressId("5");
				relativesService.insertRelatives(relatives2);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		
	}

	@Test
	public void testUpdateRelativesById() {
		Relatives relatives=relativesService.findRelativesById("b9de4736b02811e78d4f5254002ec43c");
		relatives.setName("李四");
		relativesService.updateRelativesById(relatives);
	}

	@Test
	public void testDeleteRelativesById() {
		relativesService.deleteRelativesById("690208c8b35411e78d4f5254002ec43c");
	}
/*	@Test
	public void selectRelativesByPerId(){
		Relatives relatives=relativesService.selectRelativesByPerId("1195777ebf8d11e7aca65254002ec43c");
		System.out.println(relatives.getName());
	}*/
	@Test
	public void updateRelativesByIdExend(){
		RelativesAndAddressAndTypeAndPersonExpand relativesAndAddressAndTypeAndPersonExpand=
				new RelativesAndAddressAndTypeAndPersonExpand();
		relativesService.updateRelativesByIdExend(relativesAndAddressAndTypeAndPersonExpand);
	}

}
