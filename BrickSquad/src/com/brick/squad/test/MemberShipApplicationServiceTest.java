package com.brick.squad.test;

import java.util.ArrayList;
import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

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
				.findMemberShipApplicationById("2").getMemberShipTypeId());
	}

	@Test
	public void deleteMemberShipApplicationById() {
		memberShipApplicationService.deleteMemberShipApplicationById("1");
	}

	@Test
	public void insertMemberShipApplicationById() {

		for (int i = 0; i < 20; i++) {
			MemberShipApplication m = new MemberShipApplication();
			m.setMemberShipTypeId("MemberShipTypeId"+i);
			m.setUserId("UserId"+i);
			m.setPerId("PerId"+i);
			m.setDeposit(500+i);
			memberShipApplicationService.insertMemberShipApplicationById(m);
		}

	}

	@Test
	public void updateMemberShipApplicationById() {
		MemberShipApplication m = memberShipApplicationService
				.findMemberShipApplicationById("2");
		m.setMemberShipTypeId("欢乐斗地主");
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

	@Test
	public void findMemberShipApplicationAllCount() {

		System.out.println(memberShipApplicationService
				.findMemberShipApplicationAllCount());
	}
}