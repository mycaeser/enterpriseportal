package com.caeser.enterpriseportal.web.frontend;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.caeser.enterpriseportal.dao.AchatDao;
import com.caeser.enterpriseportal.entity.Achat;
import com.caeser.enterpriseportal.util.HttpServletRequestUtil;

@Controller
@RequestMapping("/achat")
public class AchatController {
	@Autowired
	private AchatDao achatDao;
	
	/** 各个公司地址更新 **/
	@RequestMapping(value = "/addachat", method = RequestMethod.POST)
	@ResponseBody
	private Map<String, Object> addAchat(HttpServletRequest request) {
		Map<String, Object> modelMap = new HashMap<String, Object>();
		String subMessage=HttpServletRequestUtil.getString(request, "subMessage");
		Achat target=new Achat();
		Date d = new Date();
		System.out.println(d);
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		String dateNowStr = sdf.format(d);
		Object userObject=request.getSession().getAttribute("user1");
		target.setAac603(subMessage);
		target.setAac604(dateNowStr);
		target.setAac602(userObject.toString());
		target.setAac605(0);
		int effectedNum=achatDao.addAchat(target);
		boolean result=effectedNum>0?true:false;
		modelMap.put("success", result);
		return modelMap;
	}
	/** 全部咨询消息 **/
	@RequestMapping(value = "/getachat", method = RequestMethod.GET)
	@ResponseBody
	private Map<String, Object> getAchat(HttpServletRequest request) {
		Map<String, Object> modelMap = new HashMap<String, Object>();
		List<Achat> achatList=achatDao.queryAchatList();
		modelMap.put("achatList", achatList);
		return modelMap;
	}
	
	@RequestMapping(value = "/chatback", method = RequestMethod.GET)
	private String chatBack() {// 显示主页
		return "tt/cps/chatback";
	}
	/** 各个公司地址更新 **/
	@RequestMapping(value = "/addachatback", method = RequestMethod.POST)
	@ResponseBody
	private Map<String, Object> addAchatBack(HttpServletRequest request) {
		Map<String, Object> modelMap = new HashMap<String, Object>();
		String quesContent=HttpServletRequestUtil.getString(request, "quesContent");
		long chatId=Long.parseLong(HttpServletRequestUtil.getString(request, "quesId"));
		Achat target=new Achat();
		Achat target1=new Achat();
		Date d = new Date();
		System.out.println(d);
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		String dateNowStr = sdf.format(d);
		target.setAac601(chatId);
		target.setAac605(1);
		int effectedNum=achatDao.updateAchat(target);//确认回复
		Achat targetBackName=achatDao.queryAchatById(chatId);
		Object userNamesString=request.getSession().getAttribute("user1");
		String headNameString="";
		if(userNamesString!=null) {
			headNameString=userNamesString.toString()+headNameString;
		}
		target1.setAac602(targetBackName.getAac602());
		target1.setAac603(headNameString+quesContent);
		target1.setAac604(dateNowStr);
		target1.setAac605(1);
		effectedNum=achatDao.addAchat(target1);
		boolean result=effectedNum>0?true:false;
		modelMap.put("success", result);
		return modelMap;
	}
}
