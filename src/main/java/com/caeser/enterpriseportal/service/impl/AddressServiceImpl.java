package com.caeser.enterpriseportal.service.impl;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.caeser.enterpriseportal.cache.JedisUtil;
import com.caeser.enterpriseportal.dao.AddressDao;
import com.caeser.enterpriseportal.entity.Address;
import com.caeser.enterpriseportal.service.AddressService;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;

@Service
public class AddressServiceImpl implements AddressService {
	@Autowired
	private AddressDao addressDao;
	@Autowired
	private JedisUtil.Keys jedisKeys;
	@Autowired
	private JedisUtil.Strings jedisStrings;
	private static Logger logger = LoggerFactory.getLogger(AddressServiceImpl.class);

	@Override
	public List<Address> getfiliale() {
		// 定义redis的key
		String key = FILIALE_KEY;
		// 返回分公司地址
		List<Address> addressList = null;
		// 定义jackson数据转换操作类
		ObjectMapper mapper = new ObjectMapper();
		try {
			if (!jedisKeys.exists(key)) {
				// 若不存在，则从数据库里面取出相应数据
				addressList = addressDao.queryAddot();
				// 将相关的实体类集合转换成string,存入redis里面对应的key中
				String jsonString = null;
				try {
					jsonString = mapper.writeValueAsString(addressList);
				} catch (JsonProcessingException e) {
					e.printStackTrace();
				}
				jedisStrings.set(key, jsonString);
			} else {
				// 若存在，则直接从redis里面取出相应数据
				String jsonString = jedisStrings.get(key);
				// 指定要将string转换成的集合类型
				JavaType javaType = mapper.getTypeFactory().constructParametricType(ArrayList.class, Address.class);
				try {
					// 将相关key对应的value里的的string转换成对象的实体类集合
					addressList = mapper.readValue(jsonString, javaType);
				} catch (JsonParseException e) {
					e.printStackTrace();
				} catch (JsonMappingException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		} catch (Exception e) {
			logger.error(e.getMessage());
			addressList = addressDao.queryAddot();
		}
		return addressList;
	}

	@Override
	public Address getAdressByPrimId(int id) {
		// 定义redis的key
		String key = COMPANY_ADDRESS_KEY + "_" + id;
		// 定义通过主键查询出的地址结果
		Address addressItem = null;
		// 定义jackson数据转换操作类
		ObjectMapper mapper = new ObjectMapper();
		try {
			if (!jedisKeys.exists(key)) {
				// 若不存在，则从数据库里面取出相应数据
				addressItem = addressDao.queryAddByID(id);
				// 将相关的实体类集合转换成string,存入redis里面对应的key中
				String jsonString = null;
				try {
					jsonString = mapper.writeValueAsString(addressItem);
				} catch (JsonProcessingException e) {
					e.printStackTrace();
				}
				jedisStrings.set(key, jsonString);
			} else {
				// 若存在，则直接从redis里面取出相应数据
				String jsonString = jedisStrings.get(key);
				// 指定要将string转换成的集合类型
				JavaType javaType = mapper.getTypeFactory().constructType(Address.class);
				try {
					// 将相关key对应的value里的的string转换成对象的实体类集合
					addressItem = mapper.readValue(jsonString, javaType);
				} catch (JsonParseException e) {
					e.printStackTrace();
				} catch (JsonMappingException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		} catch (Exception e) {
			logger.error(e.getMessage());
			addressItem = addressDao.queryAddByID(id);
		}
		return addressItem;
	}
}
