package com.caeser.enterpriseportal.dao;

import java.util.List;

import com.caeser.enterpriseportal.entity.News;

public interface NewsDao {
	/**
	 * 通过aac113查询主页显示的案例和招聘信息
	 * @return
	 */
	List<News> queryIndexBottomItems(int type);
	/**
	 * 通过aac115查询工程案例
	 * @param type
	 * @return
	 */
	List<News> queryNewsByType(int type);
	/**
	 * 通过aac113查询人力资源
	 * @param type
	 * @return
	 */
	List<News> queryNewsHR(int type);
	/**
	 * 根据主键查询一条工程案例
	 * @param id
	 * @return
	 */
	News queryNewsByPrimId(int id);
	/**
	 * 更新一条工程案例
	 * @param item
	 * @return
	 */
	int updateNewsArticle(News item);
}
