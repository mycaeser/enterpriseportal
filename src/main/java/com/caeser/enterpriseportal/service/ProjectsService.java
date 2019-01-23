package com.caeser.enterpriseportal.service;

import java.util.List;

import com.caeser.enterpriseportal.entity.Projects;

public interface ProjectsService {
	/**
	 * 通过ID查询首页tab图片
	 * @param id
	 * @return
	 */
	Projects queryIndexTabImgById(int id);
	/**
	 * 查询首页四个小标签里的标题、日期
	 * @param type
	 * @return
	 */
	List<Projects> queryIndexTabContentByType(int type);
}
