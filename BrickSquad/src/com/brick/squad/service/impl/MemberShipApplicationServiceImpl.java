package com.brick.squad.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.transaction.annotation.Transactional;

import com.brick.squad.mapper.MemberShipApplicationMapper;
import com.brick.squad.pojo.MemberShipApplication;
import com.brick.squad.service.MemberShipApplicationService;
import com.brick.squad.util.Pagination;
@Transactional
public class MemberShipApplicationServiceImpl implements MemberShipApplicationService {

	@Autowired
	@Qualifier("memberShipApplicationMapper")
	private MemberShipApplicationMapper memberShipApplicationMapper;
	
	@Override
	public MemberShipApplication findMemberShipApplicationById(String id) {
		// TODO Auto-generated method stub
	
		return memberShipApplicationMapper.findMemberShipApplicationById(id);
	}

	@Override
	public void deleteMemberShipApplicationById(String id) {
			memberShipApplicationMapper.deleteMemberShipApplicationById(id);
	}

	@Override
	public void updateMemberShipApplicationById(
			MemberShipApplication memberShipApplication) {
		// TODO Auto-generated method stub
		memberShipApplicationMapper.updateMemberShipApplicationById(memberShipApplication);
	}

	@Override
	public void insertMemberShipApplicationById(
			MemberShipApplication memberShipApplication) {
		// TODO Auto-generated method stub
		memberShipApplicationMapper.insertMemberShipApplicationById(memberShipApplication);
	}

	@Override
	public List<MemberShipApplication> MemberShipApplicationPagination(
			Pagination pagination) {
		// TODO Auto-generated method stub
		return memberShipApplicationMapper.MemberShipApplicationPagination(pagination);
	}





}
