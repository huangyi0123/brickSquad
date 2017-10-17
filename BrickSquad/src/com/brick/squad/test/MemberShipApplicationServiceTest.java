package com.brick.squad.test;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.brick.squad.pojo.MemberShipApplication;
import com.brick.squad.service.MemberShipApplicationService;
import com.brick.squad.util.JunitClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations="classpath:com/brick/squad/config/applicationContext.xml")
public class MemberShipApplicationServiceTest {
	
	@Autowired
	@Qualifier("memberShipApplicationService")
	private MemberShipApplicationService memberShipApplicationService;
	
	
	@Test
	public void findMemberShipApplicationById(){
		
		MemberShipApplication memberShipApplication= memberShipApplicationService.findMemberShipApplicationById("1");
		System.out.println(memberShipApplication);
	}
	
	@Test
	public void deleteMemberShipApplicationById(){
		memberShipApplicationService.deleteMemberShipApplicationById("1");
	}
	
	
	
	@Test
	public void insertMemberShipApplicationById(){
		
		MemberShipApplication m = new MemberShipApplication();
		m.setMenbership_type_id("蜘蛛纸牌");
		m.setUser_id("5");
		m.setPer_id("5");
		m.setDeposit(5);
		
		memberShipApplicationService.insertMemberShipApplicationById(m);
	}

}
