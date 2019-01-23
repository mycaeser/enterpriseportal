package com.caeser.enterpriseportal.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.caeser.enterpriseportal.dao.ProjectsDao;
import com.caeser.enterpriseportal.entity.Projects;
import com.caeser.enterpriseportal.service.ProjectsService;

@Service
public class ProjectsServiceImpl implements ProjectsService{
	@Autowired
	private ProjectsDao projectsDao;
	
	public Projects queryIndexTabImgById(int id) {
		Projects projects=projectsDao.queryIndexTabImgById(id);
		return projects;
	}
	
	public List<Projects> queryIndexTabContentByType(int type){
		List<Projects> projectsList=projectsDao.queryIndexTabContentByType(type);
		return projectsList;
	}
}
