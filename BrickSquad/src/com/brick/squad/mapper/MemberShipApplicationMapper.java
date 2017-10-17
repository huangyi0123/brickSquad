package com.brick.squad.mapper;

import com.brick.squad.pojo.MemberShipApplication;

public interface MemberShipApplicationMapper {
	
	public MemberShipApplication findMemberShipApplicationById(String id);
	
	public void deleteMemberShipApplicationById(String id);
	
	public void updateMemberShipApplicationById(MemberShipApplication memberShipApplication);
	
	public void insertMemberShipApplicationById(MemberShipApplication memberShipApplication);

}
