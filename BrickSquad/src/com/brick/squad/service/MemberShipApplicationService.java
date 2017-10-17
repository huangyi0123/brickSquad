package com.brick.squad.service;

import com.brick.squad.pojo.MemberShipApplication;

public interface MemberShipApplicationService {

	public MemberShipApplication findMemberShipApplicationById(String id);

	public void deleteMemberShipApplicationById(String id);

	public void insertMemberShipApplicationById(
			MemberShipApplication memberShipApplication);

	public void updateMemberShipApplicationById(
			MemberShipApplication memberShipApplication);

}
