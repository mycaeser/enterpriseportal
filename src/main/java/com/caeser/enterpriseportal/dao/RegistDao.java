package com.caeser.enterpriseportal.dao;

import java.util.List;


import com.caeser.enterpriseportal.entity.Regist;

public interface RegistDao {

	List<Regist> queryRegistList();
	
	Regist queryRegistById(long id);
	
	
	int addRegist(Regist target);
	
	int deleteRegistById(int id);
	
	int updateRegist(Regist target);
}
