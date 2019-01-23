package com.caeser.enterpriseportal.dao;

import com.caeser.enterpriseportal.entity.AboutUs;

public interface AboutUsDao {
	/**
	 * 查询列出企业简介和图片URL
	 * @return
	 */
	AboutUs queryAboutUs();
	/**
	 * 更新简介内容
	 * @return
	 */
	int updateAboutUsa(AboutUs aboutUs);
}
