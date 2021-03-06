package com.caeser.enterpriseportal.dao;


import org.apache.ibatis.annotations.Param;

import com.caeser.enterpriseportal.entity.LocalAuth;

public interface LocalAuthDao {
	/**
	 * 通过帐号和密码查询对应信息，登录用
	 * 
	 * @param username
	 * @param password
	 * @return
	 */
	LocalAuth queryLocalByUserNameAndPwd(@Param("username")String username,@Param("password")  String password);
}
