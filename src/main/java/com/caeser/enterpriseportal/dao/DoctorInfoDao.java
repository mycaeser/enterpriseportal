package com.caeser.enterpriseportal.dao;

import java.util.List;

import com.caeser.enterpriseportal.entity.DoctorInfo;

public interface DoctorInfoDao {

	List<DoctorInfo> queryDoctorInfoList();

	DoctorInfo queryDoctorInfoById(long id);

	int addDoctorInfo(DoctorInfo target);

	int deleteDoctorInfoById(int id);

	int updateDoctorInfo(DoctorInfo target);
}
