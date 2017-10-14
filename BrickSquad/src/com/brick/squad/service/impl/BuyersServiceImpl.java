package com.brick.squad.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;

import com.brick.squad.mapper.BuyersMapper;
import com.brick.squad.pojo.Buyers;
import com.brick.squad.service.BuyersService;

public class BuyersServiceImpl implements BuyersService {
	@Autowired
	@Qualifier("buyersMapper")
	private BuyersMapper buyersMapper;
	@Override
	public void insertBuyers(Buyers buyers) throws Exception {
		// TODO Auto-generated method stub
		buyersMapper.insertBuyers(buyers);
	}

}
