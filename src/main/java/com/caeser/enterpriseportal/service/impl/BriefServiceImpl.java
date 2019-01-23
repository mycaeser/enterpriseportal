package com.caeser.enterpriseportal.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.caeser.enterpriseportal.dao.BriefDao;
import com.caeser.enterpriseportal.entity.Brief;
import com.caeser.enterpriseportal.service.BriefService;

@Service
public class BriefServiceImpl implements BriefService{
	@Autowired
	private BriefDao briefDao;
	@Override
	public Brief queryBrief() {
		return briefDao.queryBrief();
	}
}
