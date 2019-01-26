package com.caeser.enterpriseportal.service;

import java.util.List;

import com.caeser.enterpriseportal.entity.Honor;

public interface HonorService {
	public static final String HONOR_INDEX_KEY = "honorindexkey";
	/**
	 * 返回主页5条荣誉资质
	 * @return
	 */
	List<Honor> getHonor();
}
