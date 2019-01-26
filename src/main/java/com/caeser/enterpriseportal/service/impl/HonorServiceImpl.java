package com.caeser.enterpriseportal.service.impl;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.caeser.enterpriseportal.cache.JedisUtil;
import com.caeser.enterpriseportal.dao.HonorDao;
import com.caeser.enterpriseportal.entity.Honor;
import com.caeser.enterpriseportal.service.HonorService;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;

@Service
public class HonorServiceImpl implements HonorService {
	@Autowired
	private HonorDao honorDao;
	@Autowired
	private JedisUtil.Keys jedisKeys;
	@Autowired
	private JedisUtil.Strings jedisStrings;
	private static Logger logger = LoggerFactory.getLogger(HonorServiceImpl.class);

	@Override
	public List<Honor> getHonor() {
		// 定义redis的key
		String key = HONOR_INDEX_KEY;
		// 定义jackson数据转换操作类
		ObjectMapper mapper = new ObjectMapper();
		// 查询5条荣誉资质返回给首页
		List<Honor> honorList = null;
		try {
			if (!jedisKeys.exists(key)) {
				// 若不存在，则从数据库里面取出相应数据
				honorList = honorDao.queryHonor();
				// 将相关的实体类集合转换成string,存入redis里面对应的key中
				String jsonString = null;
				try {
					jsonString = mapper.writeValueAsString(honorList);
				} catch (JsonProcessingException e) {
					e.printStackTrace();
				}
				jedisStrings.set(key, jsonString);
			} else {
				// 若存在，则直接从redis里面取出相应数据
				String jsonString = jedisStrings.get(key);
				// 指定要将string转换成的集合类型
				JavaType javaType = mapper.getTypeFactory().constructParametricType(ArrayList.class, Honor.class);
				try {
					// 将相关key对应的value里的的string转换成对象的实体类集合
					honorList = mapper.readValue(jsonString, javaType);
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
			honorList = honorDao.queryHonor();
		}
		return honorList;
	}
}
