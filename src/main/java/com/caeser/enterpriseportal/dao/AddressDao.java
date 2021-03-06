package com.caeser.enterpriseportal.dao;

import java.util.List;

import com.caeser.enterpriseportal.entity.Address;

public interface AddressDao {
	/**
	 * 通过主键查询地址内容
	 * @param id
	 * @return
	 */
	Address queryAddByID(int id);
	/**
	 * 查询分公司各个地址内容
	 * @return
	 */
	List<Address> queryAddot();
	/**
	 * 更新一条地址信息
	 * @param item
	 * @return
	 */
	int updateAddress(Address item);
}
