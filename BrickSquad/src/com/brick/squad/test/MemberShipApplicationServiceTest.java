package com.brick.squad.test;

import java.util.ArrayList;
import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.brick.squad.expand.MemberShipApplicationExpand;
import com.brick.squad.pojo.MemberShipApplication;
import com.brick.squad.pojo.ShopActivities;
import com.brick.squad.service.MemberShipApplicationService;
import com.brick.squad.util.JunitClassRunner;
import com.brick.squad.util.Pagination;

@RunWith(JunitClassRunner.class)
@ContextConfiguration(locations = "classpath:com/brick/squad/config/applicationContext.xml")
public class MemberShipApplicationServiceTest {

	@Autowired
	@Qualifier("memberShipApplicationService")
	private MemberShipApplicationService memberShipApplicationService;

	@Test
	public void findMemberShipApplicationById() {
		System.out.println(memberShipApplicationService
				.findMemberShipApplicationById(
						"fd5e42b4b4be11e78d4f5254002ec43c").toString());
	}

	@Test
	public void deleteMemberShipApplicationById() {
		memberShipApplicationService
				.deleteMemberShipApplicationById("1b36865ab64c11e78d4f5254002ec43c");
	}

	@Test
	public void insertMemberShipApplicationById() {

		for (int i = 0; i < 2; i++) {
			MemberShipApplication m = new MemberShipApplication();
			m.setMemberShipTypeId("MemberShipTypeId" + i);
			m.setUserId("UserId" + i);
			m.setPerId("PerId" + i);
			m.setDeposit(500 + i);
			memberShipApplicationService.insertMemberShipApplicationById(m);
		}

	}

	@Test
	public void updateMemberShipApplicationById() {
		MemberShipApplication m = memberShipApplicationService
				.findMemberShipApplicationById("fd5e42b4b4be11e78d4f5254002ec43c");
		m.setMemberShipTypeId("欢乐斗地主");
		m.setUserId("11111");
		memberShipApplicationService.updateMemberShipApplicationById(m);

	}

	@Test
	public void testMemberShipApplication() {
		Pagination pagination = new Pagination();
		List<MemberShipApplication> m = new ArrayList<>();
		pagination.setCurentPage(1);
		pagination.setPageSize(4);

		memberShipApplicationService
				.MemberShipApplicationPagination(pagination);
	}

	/*
	 * @Test public void findMemberShipApplicationAllCount() {
	 * 
	 * System.out.println(memberShipApplicationService
	 * .findMemberShipApplicationAllCount()); }
	 */
	@Test
	public void MemberShipApplicationPagination() {
		Pagination pagination = new Pagination();
		pagination.setCurentPage(1);
		pagination.setPageSize(4);
		String data = memberShipApplicationService
				.MemberShipApplicationPagination(pagination);
		System.out.println(data);
	}

	@Test
	public void findAllMemberShipApplication() {
		String data = memberShipApplicationService
				.findAllMemberShipApplication();
		System.out.println(data);
	}

	@Test
	public void findAllTypeAndUserAndPersonalInformation() {
		String data = memberShipApplicationService
				.findAllTypeAndUserAndPersonalInformation();
		System.out.println(data);
	}

	@Test
	public void findMemberShipApplicationAndTypeAndUserAndPersonalInformation() {
		MemberShipApplicationExpand memberShipApplicationExpand = memberShipApplicationService
				.findMemberShipApplicationAndTypeAndUserAndPersonalInformation("3");
		System.out.println(memberShipApplicationExpand.getTname());
	}
}