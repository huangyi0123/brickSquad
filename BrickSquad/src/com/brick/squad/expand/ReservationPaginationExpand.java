package com.brick.squad.expand;

import com.brick.squad.util.Pagination;

/**
 * 继承分页类，加一个branchID属性，存储所在分店ID
 * 
 * @author 吴文鑫
 * 
 */
public class ReservationPaginationExpand extends Pagination {
	private String branchId;

	public String getBranchId() {
		return branchId;
	}

	public void setBranchId(String branchId) {
		this.branchId = branchId;
	}
	
}
