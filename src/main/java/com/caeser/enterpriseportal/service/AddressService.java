package com.caeser.enterpriseportal.service;

import java.util.List;

import com.caeser.enterpriseportal.entity.Address;

public interface AddressService {
	public static final String FILIALE_KEY = "filialekey";
	/**
	 * 返回分公司地址
	 * @return
	 */
	List<Address> getfiliale();
	public static final String COMPANY_ADDRESS_KEY = "companyaddresskey";
	/**
	 * 通过主键查询公司地址
	 * @return
	 */
	Address getAdressByPrimId(int id);
}
