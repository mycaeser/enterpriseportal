package com.caeser.enterpriseportal.dao;

import com.caeser.enterpriseportal.entity.ImgUrl;

public interface ImgUrlDao {
	
	/**
	 * 查询当前可以生成的URL名字
	 * @return
	 */
	ImgUrl queryUrl();
	/**
	 * URL名字编号增长1
	 * @return
	 */
	int updateUrlA(ImgUrl imgUrl);
}
