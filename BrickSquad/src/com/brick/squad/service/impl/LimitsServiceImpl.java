package com.brick.squad.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import net.sf.json.JSONArray;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.transaction.annotation.Transactional;

import com.brick.squad.expand.LimitsExpand;
import com.brick.squad.mapper.LimitsMapper;
import com.brick.squad.pojo.Limits;
import com.brick.squad.service.LimitsService;
import com.brick.squad.util.Pagination;
import com.brick.squad.util.Util;
import com.brick.squad.util.ZTree;

@Transactional
public class LimitsServiceImpl implements LimitsService {
	@Autowired
	@Qualifier("limitsMapper")
	private LimitsMapper limitsMapper;

	@Override
	public Limits findLimitsById(String id) {
		return limitsMapper.findLimitsById(id);
	}

	@Override
	public void insertLimits(Limits limits) {
		limitsMapper.insertLimits(limits);

	}

	@Override
	public void updateLimitsById(Limits limits) {
		limitsMapper.updateLimitsById(limits);

	}

	@Override
	public void deleteLimitsById(String id) {
		limitsMapper.deleteLimitsById(id);

	}

	@Override
	public String limitsPagination(Pagination pagination) {
		List<LimitsExpand> datas = limitsMapper.limitsPagination(pagination);
		int n = limitsMapper.limitsCount(pagination);
		Util<LimitsExpand> util = new Util<LimitsExpand>();
		String data = util.SplitPage(datas, n);
		return data;
	}

	@Override
	public String findAllTableName(String roleId) {
		// begin 根据角色id查询权限
		List<Limits> limits = limitsMapper.findLimitsByRoleId(roleId);
		// end
		// begin 判断权限表中是否有数据,如果权限表中没有数据，则先插入数据
		if (limits.size()==0) {
			List<String> tableNames=limitsMapper.findAllTableName();
			for (String item : tableNames) {
				Limits limits2=new Limits();
				limits2.setTablename(item);
				limits2.setRoleId(roleId);
				limits.add(limits2);
				limitsMapper.insertLimits(limits2);
			}
		}
		// end
		//begin 设置权限树
		List<ZTree> zTrees=new ArrayList<ZTree>();
		
		for (Limits item : limits) {
			//begin 添加表名
			ZTree zTreePerant=new ZTree();
			zTreePerant.setId(item.getId());
			zTreePerant.setName(item.getTablename());
			zTreePerant.setChecked((item.isAd()&&item.isDl()&&item.isQuery()&&item.isUp()));
			List<ZTree> childrens=new ArrayList<ZTree>();
			//end 
			//begin 添加操作
			ZTree queryTree=new ZTree();
			queryTree.setId(item.getId());
			queryTree.setName("查询");
			queryTree.setChecked(item.isQuery());
			queryTree.setValue("query");
			childrens.add(queryTree);
			ZTree dltTree=new ZTree();
			dltTree.setId(item.getId());
			dltTree.setName("删除");
			dltTree.setChecked(item.isDl());
			dltTree.setValue("dl");
			childrens.add(dltTree);
			ZTree uptTree=new ZTree();
			uptTree.setId(item.getId());
			uptTree.setName("修改");
			uptTree.setChecked(item.isUp());
			uptTree.setValue("up");
			childrens.add(uptTree);
			ZTree zTree=new ZTree();
			zTree.setId(item.getId());
			zTree.setName("添加");
			zTree.setChecked(item.isAd());
			zTree.setValue("ad");
			childrens.add(zTree);
			zTreePerant.setChildren(childrens);
			//end
			zTrees.add(zTreePerant);
		}
		//end
		//begin 转换为json字符串
		JSONArray jsonArray=JSONArray.fromObject(zTrees);
		//end
		return jsonArray.toString();
	}

	@Override
	public void updateLimitsByRoleId(List<Limits> limits, String roleId) {
		for (Limits item : limits) {
			item.setRoleId(roleId);
			limitsMapper.updateLimitsById(item);
		}
		
	}
	@Override
	public Map<String, Limits> findAllLimitsByRoleId(String roleId) {
		List<Limits> limits=limitsMapper.findLimitsByRoleId(roleId);
		Map<String, Limits> map=new HashMap<String, Limits>();
		for (Limits item : limits) {
			map.put(item.getTablename(), item);
		}
		return map;
	}

}
