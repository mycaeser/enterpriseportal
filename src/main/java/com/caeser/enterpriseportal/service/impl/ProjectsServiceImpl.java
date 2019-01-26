package com.caeser.enterpriseportal.service.impl;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.caeser.enterpriseportal.cache.JedisUtil;
import com.caeser.enterpriseportal.dao.ProjectsDao;
import com.caeser.enterpriseportal.entity.Projects;
import com.caeser.enterpriseportal.exceptions.ProjectsOperationException;
import com.caeser.enterpriseportal.service.ProjectsService;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;

@Service
public class ProjectsServiceImpl implements ProjectsService {
	@Autowired
	private ProjectsDao projectsDao;
	@Autowired
	private JedisUtil.Keys jedisKeys;
	@Autowired
	private JedisUtil.Strings jedisStrings;
	private static Logger logger = LoggerFactory.getLogger(ProjectsServiceImpl.class);

	@Override
	public Projects queryIndexTabImgById(int id) {
		// 定义redis的key
		String key = PROJECTS_TAB_IMG_INDEX_KEY + "_" + id;
		// 用于返回首页项目对象
		Projects projects = null;
		// 定义jackson数据转换操作类
		ObjectMapper mapper = new ObjectMapper();
		try {
			if (!jedisKeys.exists(key)) {
				// 若不存在，则从数据库里面取出相应数据
				projects = projectsDao.queryIndexTabImgById(id);
				// 将相关的实体类集合转换成string,存入redis里面对应的key中
				String jsonString = null;
				try {
					jsonString = mapper.writeValueAsString(projects);
				} catch (JsonProcessingException e) {
					e.printStackTrace();
					logger.error(e.getMessage());
					throw new ProjectsOperationException(e.getMessage());
				}
				jedisStrings.set(key, jsonString);
			} else {
				// 若存在，则直接从redis里面取出相应数据
				String jsonString = jedisStrings.get(key);
				// 指定要将string转换成的集合类型
				JavaType javaType = mapper.getTypeFactory().constructType(Projects.class);
				try {
					// 将相关key对应的value里的的string转换成对象的实体类集合
					projects = mapper.readValue(jsonString, javaType);
				} catch (JsonParseException e) {
					e.printStackTrace();
					logger.error(e.getMessage());
					throw new ProjectsOperationException(e.getMessage());
				} catch (JsonMappingException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
					logger.error(e.getMessage());
					throw new ProjectsOperationException(e.getMessage());
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
					logger.error(e.getMessage());
					throw new ProjectsOperationException(e.getMessage());
				}
			}
		} catch (Exception e) {
			logger.error(e.getMessage());
			projects = projectsDao.queryIndexTabImgById(id);
		}
		return projects;
	}

	@Override
	public List<Projects> queryIndexTabContentByType(int type) {
		// 定义redis的key
		String key = PROJECTS_TAB_CONTENT_INDEX_KEY + "_" + type;
		// 定义返回的TAB内容
		List<Projects> projectsList = null;
		// 定义jackson数据转换操作类
		ObjectMapper mapper = new ObjectMapper();
		try {
			if (!jedisKeys.exists(key)) {
				// 若不存在，则从数据库里面取出相应数据
				projectsList = projectsDao.queryIndexTabContentByType(type);
				// 将相关的实体类集合转换成string,存入redis里面对应的key中
				String jsonString = null;
				try {
					jsonString = mapper.writeValueAsString(projectsList);
				} catch (JsonProcessingException e) {
					e.printStackTrace();
					logger.error(e.getMessage());
					throw new ProjectsOperationException(e.getMessage());
				}
				jedisStrings.set(key, jsonString);
			} else {
				// 若存在，则直接从redis里面取出相应数据
				String jsonString = jedisStrings.get(key);
				// 指定要将string转换成的集合类型
				JavaType javaType = mapper.getTypeFactory().constructParametricType(ArrayList.class, Projects.class);
				try {
					// 将相关key对应的value里的的string转换成对象的实体类集合
					projectsList = mapper.readValue(jsonString, javaType);
				} catch (JsonParseException e) {
					e.printStackTrace();
					logger.error(e.getMessage());
					throw new ProjectsOperationException(e.getMessage());
				} catch (JsonMappingException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
					logger.error(e.getMessage());
					throw new ProjectsOperationException(e.getMessage());
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
					logger.error(e.getMessage());
					throw new ProjectsOperationException(e.getMessage());
				}
			}
		} catch (Exception e) {
			logger.error(e.getMessage());
			projectsList = projectsDao.queryIndexTabContentByType(type);
		}
		return projectsList;
	}
}
