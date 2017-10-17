package com.brick.squad.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.transaction.annotation.Transactional;

import com.brick.squad.mapper.MemberShipApplicationMapper;
import com.brick.squad.pojo.MemberShipApplication;
import com.brick.squad.service.MemberShipApplicationService;


@Transactional
public class MemberShipApplicationServiceImpl implements
		MemberShipApplicationService {

	@Autowired
	@Qualifier("memberShipApplicationService")
	private MemberShipApplicationMapper memberShipApplicationMapper;

	@Override
	public MemberShipApplication findMemberShipApplicationById(String id) {
		
		return memberShipApplicationMapper.findMemberShipApplicationById(id);
	}

	@Override
	public void deleteMemberShipApplicationById(String id) {
		// TODO Auto-generated method stub
		memberShipApplicationMapper.deleteMemberShipApplicationById("1");
	}

	@Override
	public void updateMemberShipApplicationById(
			MemberShipApplication memberShipApplication) {
		// TODO Auto-generated method stub
		memberShipApplicationMapper
				.updateMemberShipApplicationById(memberShipApplication);
	}

	@Override
	public void insertMemberShipApplicationById(
			MemberShipApplication memberShipApplication) {
		// TODO Auto-generated method stub
		memberShipApplicationMapper
				.insertMemberShipApplicationById(memberShipApplication);
	}

}
