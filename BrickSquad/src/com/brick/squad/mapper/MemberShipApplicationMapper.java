package com.brick.squad.mapper;



import java.util.List;

import com.brick.squad.pojo.MemberShipApplication;
import com.brick.squad.util.Pagination;

public interface MemberShipApplicationMapper {

	public MemberShipApplication findMemberShipApplicationById(String id);
	
	public void deleteMemberShipApplicationById(String id);
	
	public void updateMemberShipApplicationById(MemberShipApplication memberShipApplication);
	
	public void insertMemberShipApplicationById(MemberShipApplication memberShipApplication);
	
	public List<MemberShipApplication> MemberShipApplicationPagination(Pagination pagination);

	public int findMemberShipApplicationAllCount();

	public List<MemberShipApplication> findAllMemberShipApplications();

}
