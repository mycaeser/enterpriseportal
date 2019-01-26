package com.caeser.enterpriseportal.service;

import com.caeser.enterpriseportal.entity.Brief;

public interface BriefService {
	public static final String BRIEF_INTRODUCTION_KEY = "briefintroduction";
	Brief queryBrief();
}

