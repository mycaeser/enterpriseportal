package com.caeser.enterpriseportal.service.impl;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.caeser.enterpriseportal.cache.JedisUtil;
import com.caeser.enterpriseportal.dao.BriefDao;
import com.caeser.enterpriseportal.entity.Brief;
import com.caeser.enterpriseportal.service.BriefService;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;

@Service
public class BriefServiceImpl implements BriefService {
	@Autowired
	private BriefDao briefDao;
	@Autowired
	private JedisUtil.Keys jedisKeys;
	@Autowired
	private JedisUtil.Strings jedisStrings;

	@Override
	@Transactional
	public Brief queryBrief() {
		// 定义redis的key
		String key = BRIEFINTRODUCTIONKEY;
		// 定义jackson数据转换操作类
		ObjectMapper mapper = new ObjectMapper();
		Brief briefItem = null;
		if (!jedisKeys.exists(key)) {
			// 若不存在，则从数据库里面取出相应数据
			briefItem = briefDao.queryBrief();
			// 将相关的实体类集合转换成string,存入redis里面对应的key中
			String jsonString = null;
			try {
				jsonString = mapper.writeValueAsString(briefItem);
			} catch (JsonProcessingException e) {
				e.printStackTrace();
			}
			jedisStrings.set(key, jsonString);
		} else {
			// 若存在，则直接从redis里面取出相应数据
			String jsonString = jedisStrings.get(key);
			// 指定要将string转换成的集合类型
			JavaType javaType = mapper.getTypeFactory().constructType(Brief.class);
			try {
				// 将相关key对应的value里的的string转换成对象的实体类集合
				briefItem = mapper.readValue(jsonString, javaType);
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
		return briefItem;
	}
}
