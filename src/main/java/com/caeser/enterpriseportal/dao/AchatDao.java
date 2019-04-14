package com.caeser.enterpriseportal.dao;

import java.util.List;

import com.caeser.enterpriseportal.entity.Achat;

public interface AchatDao {

	List<Achat> queryAchatList();

	Achat queryAchatById(long id);

	int addAchat(Achat target);

	int deleteAchatById(long id);
	
	int updateAchat(Achat target);
}
