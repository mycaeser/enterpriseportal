package com.caeser.enterpriseportal.dao;

import com.caeser.enterpriseportal.entity.Brief;

public interface BriefDao {
	/**
	 * 简介查询
	 * @return
	 */
	Brief queryBrief();
	
	/**
	 * 修改首页简介
	 * @param brief
	 * @return
	 */
	int updateBrief(Brief brief);
}
