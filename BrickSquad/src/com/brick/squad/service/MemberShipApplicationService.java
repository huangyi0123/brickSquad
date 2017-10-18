package com.brick.squad.service;



import java.util.List;

import com.brick.squad.pojo.MemberShipApplication;
import com.brick.squad.util.Pagination;

public interface MemberShipApplicationService {
	
	public MemberShipApplication findMemberShipApplicationById(String id);
	
	public void deleteMemberShipApplicationById(String id);
	
	public void updateMemberShipApplicationById(MemberShipApplication memberShipApplication);
	
	public void insertMemberShipApplicationById(MemberShipApplication memberShipApplication);

	public List<MemberShipApplication> MemberShipApplicationPagination(Pagination pagination);
		
	public int findMemberShipApplicationAllCount();
}
