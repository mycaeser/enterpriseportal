package com.caeser.enterpriseportal.web.frontend;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.caeser.enterpriseportal.dao.AboutUsDao;
import com.caeser.enterpriseportal.dao.CultureDao;
import com.caeser.enterpriseportal.dao.HonorDao;
import com.caeser.enterpriseportal.dao.TeamDao;
import com.caeser.enterpriseportal.entity.AboutUs;
import com.caeser.enterpriseportal.entity.Culture;
import com.caeser.enterpriseportal.entity.Honor;
import com.caeser.enterpriseportal.entity.Team;

@Controller
@RequestMapping("/companygx")
public class AboutPageController {
	@Autowired
	private AboutUsDao aboutUsDao;
	@Autowired
	private CultureDao cultureDao;
	@Autowired
	private TeamDao teamDao;
	@Autowired
	private HonorDao honorDao;
	
	@RequestMapping(value="/index",method=RequestMethod.GET)
	private String index(){//返回关于页面
		return "tt/about";
	}
	
	/** 返回全部关于内容，包括企业简介、企业文化、管理团队、荣誉资质、组织架构、合作伙伴 **/
	@RequestMapping(value="/getaboutall",method=RequestMethod.GET)
	@ResponseBody
	private Map<String,Object> getAboutAll(HttpServletRequest request){
		Map<String,Object> modelMap=new HashMap<String,Object>();
		AboutUs aboutUs=aboutUsDao.queryAboutUs();
		Culture culture=cultureDao.queryCulture();
		List<Team> teamList=teamDao.queryTeam();
		List<Honor> honorList=honorDao.queryHonorAll();
		if(aboutUs==null||culture==null||teamList==null||honorList==null) {
			modelMap.put("success", false);
			modelMap.put("errMsg", "getaboutall error");
		}else {
			modelMap.put("aboutUs", aboutUs);
			modelMap.put("culture", culture);
			modelMap.put("teamList", teamList);
			modelMap.put("honorList", honorList);
		}
		return modelMap;
	}
	//单独获得荣誉资质
	@RequestMapping(value="/gethonorlist",method=RequestMethod.GET)
	@ResponseBody
	private Map<String,Object> getHonorList(HttpServletRequest request){
		Map<String,Object> modelMap=new HashMap<String,Object>();
		List<Honor> honorList=honorDao.queryHonorAll();
		if(honorList==null) {
			modelMap.put("success", false);
			modelMap.put("errMsg", "getaboutall error");
		}else {
			
			modelMap.put("honorList", honorList);
		}
		return modelMap;
	}
	@RequestMapping(value="/getteamlist",method=RequestMethod.GET)
	@ResponseBody
	private Map<String,Object> getTeamList(HttpServletRequest request){
		Map<String,Object> modelMap=new HashMap<String,Object>();
		List<Team> teamList=teamDao.queryTeam();
		if(teamList==null) {
			modelMap.put("success", false);
			modelMap.put("errMsg", "getaboutall error");
		}else {
			
			modelMap.put("teamList", teamList);
		}
		return modelMap;
	}
	@RequestMapping(value="/getculture",method=RequestMethod.GET)
	@ResponseBody
	private Map<String,Object> getCulture(HttpServletRequest request){
		Map<String,Object> modelMap=new HashMap<String,Object>();
		Culture culture=cultureDao.queryCulture();
		if(culture==null) {
			modelMap.put("success", false);
			modelMap.put("errMsg", "getaboutall error");
		}else {
			
			modelMap.put("culture", culture);
		}
		return modelMap;
	}
	@RequestMapping(value="/getaboutus",method=RequestMethod.GET)
	@ResponseBody
	private Map<String,Object> getAboutUs(HttpServletRequest request){
		Map<String,Object> modelMap=new HashMap<String,Object>();
		AboutUs aboutUs=aboutUsDao.queryAboutUs();
		if(aboutUs==null) {
			modelMap.put("success", false);
			modelMap.put("errMsg", "getaboutus error");
		}else {
			modelMap.put("aboutUs", aboutUs);
		}
		return modelMap;
	}
}
