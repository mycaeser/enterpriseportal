package com.caeser.enterpriseportal.web.cps;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.caeser.enterpriseportal.dao.ScheduleDao;
import com.caeser.enterpriseportal.entity.Schedule;
import com.caeser.enterpriseportal.util.HttpServletRequestUtil;

@Controller
@RequestMapping("/schedule")
public class ScheduleController {
	@Autowired
	private ScheduleDao scheduleDao;
	
	@RequestMapping(value="/index",method=RequestMethod.GET)
	private String index(){//返回排班表
		return "tt/cps/adminschedule";
	}
	@RequestMapping(value = "/getschedulelist", method = RequestMethod.GET)
	@ResponseBody
	private Map<String, Object> getScheduleList(HttpServletRequest request) {
		Map<String, Object> modelMap = new HashMap<String, Object>();
		List<Schedule> scheduleList=scheduleDao.queryScheduleList();
		modelMap.put("scheduleList", scheduleList);
		return modelMap;
	}
	@RequestMapping(value = "/updateschedulelist", method = RequestMethod.POST)
	@ResponseBody
	/**
	 * 当用户点击登出按钮的时候注销session
	 * 
	 * @param request
	 * @return
	 * @throws IOException
	 */
	private Map<String, Object> updateScheduleList(HttpServletRequest request) {
		Map<String, Object> modelMap = new HashMap<String, Object>();
		String selectName=HttpServletRequestUtil.getString(request, "selectName");
		Long selectDate=Long.parseLong(HttpServletRequestUtil.getString(request, "selectDate"));
		Schedule target=new Schedule();
		target.setAac701(selectDate);
		target.setAac702(selectName);
		int effectedNum=scheduleDao.updateScheduleById(target);
		modelMap.put("effectedNum", effectedNum);
		return modelMap;
	}
}
