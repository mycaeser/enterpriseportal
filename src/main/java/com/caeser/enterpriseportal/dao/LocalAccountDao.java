package com.caeser.enterpriseportal.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.caeser.enterpriseportal.entity.LocalAccount;

public interface LocalAccountDao {
	
	List<LocalAccount> queryLocalAccountList();
	
	LocalAccount queryLocalAccountById(long id);
	
	LocalAccount queryLocalAccountByAccountPass(@Param("account")String account,@Param("pass")String pass);
	
	int addLocalAccount(LocalAccount target);
	
	int deleteLocalAccountById(long id);
}
