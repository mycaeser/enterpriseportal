package com.caeser.enterpriseportal.dao;

import java.util.List;

import com.caeser.enterpriseportal.entity.Schedule;

public interface ScheduleDao {
	List<Schedule> queryScheduleList();

	Schedule queryScheduleById(long id);

	int addSchedule(Schedule target);

	int deleteScheduleById(long id);
	
	int updateScheduleById(Schedule target);
}
