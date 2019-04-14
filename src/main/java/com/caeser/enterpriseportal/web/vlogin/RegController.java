package com.caeser.enterpriseportal.web.vlogin;

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

import com.caeser.enterpriseportal.dao.LocalAccountDao;
import com.caeser.enterpriseportal.dao.NewsDao;
import com.caeser.enterpriseportal.dao.RegistDao;
import com.caeser.enterpriseportal.entity.LocalAccount;
import com.caeser.enterpriseportal.entity.News;
import com.caeser.enterpriseportal.entity.Regist;
import com.caeser.enterpriseportal.util.HttpServletRequestUtil;

@Controller
@RequestMapping("/vlogin")
public class RegController {
	@Autowired
	private LocalAccountDao localAccountDao;
	@Autowired
	private NewsDao newsDao;
	@Autowired
	private RegistDao registDao;
	
	@RequestMapping(value = "/reg", method = RequestMethod.GET)
	private String vlogina() {// 显示hr主页
		return "tt/vlogin/reg";
	}
	
	@RequestMapping(value="/chatback",method=RequestMethod.GET)
	private String regReg(){//咨询回复
		return "tt/reg/reg";
	}
	
	/** 各个公司地址更新 **/
	@RequestMapping(value = "/addaccount", method = RequestMethod.POST)
	@ResponseBody
	private Map<String, Object> addAccount(HttpServletRequest request) {
		Map<String, Object> modelMap = new HashMap<String, Object>();
		String userName=HttpServletRequestUtil.getString(request, "userName");
		String password=HttpServletRequestUtil.getString(request, "password");
		String realname=HttpServletRequestUtil.getString(request, "realname");
		String idcard=HttpServletRequestUtil.getString(request, "idcard");
		String phone=HttpServletRequestUtil.getString(request, "phone");
		LocalAccount target=new LocalAccount();
		target.setAac402(userName);
		target.setAac403(password);
		target.setAac404(realname);
		target.setAac405(idcard);
		target.setAac406(phone);
		target.setAac407(1);
		int effectedNum=localAccountDao.addLocalAccount(target);
		boolean result=effectedNum>0?true:false;
		modelMap.put("success", result);
		return modelMap;
	}
	/** 挂号 **/
	@RequestMapping(value = "/addregist", method = RequestMethod.POST)
	@ResponseBody
	private Map<String, Object> addRegist(HttpServletRequest request) {
		Map<String, Object> modelMap = new HashMap<String, Object>();
		String mdate=HttpServletRequestUtil.getString(request, "mdate");
		String name=HttpServletRequestUtil.getString(request, "name");
		String phone=HttpServletRequestUtil.getString(request, "phone");
		String depa=HttpServletRequestUtil.getString(request, "depa");
		String depaT=HttpServletRequestUtil.getString(request, "depaT");
		String doctorName=HttpServletRequestUtil.getString(request, "doctorName");
		Date d = new Date();
		System.out.println(d);
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		String dateNowStr = sdf.format(d);
		News target1=new News();
		target1.setAac102(name);
		target1.setAac112(dateNowStr);
		target1.setAac115(Integer.parseInt(depa));
		target1.setAac116(depaT);
		target1.setAac113(1);
		System.out.println(phone);
		System.out.println(mdate);
		Regist target2=new Regist();
		target2.setAac502(name);
		target2.setAac503(dateNowStr);
		target2.setAac504(depaT);
		target2.setAac505(0);
		target2.setAac506(doctorName);
		int effectedNum=newsDao.insertNews(target1);
		effectedNum=registDao.addRegist(target2);
		boolean result=effectedNum>0?true:false;
		modelMap.put("success", result);
		return modelMap;
	}
	@RequestMapping(value="/confirmcurepage",method=RequestMethod.GET)
	private String confirmCurePage(){//就诊确认
		return "tt/reg/confirm";
	}
	/** 挂号 **/
	@RequestMapping(value = "/getregistList", method = RequestMethod.GET)
	@ResponseBody
	private Map<String, Object> getRegistList(HttpServletRequest request) {
		Map<String, Object> modelMap = new HashMap<String, Object>();
		List<Regist> registList=registDao.queryRegistList();
		modelMap.put("registList", registList);
		return modelMap;
	}
	/** 取消挂号 **/
	@RequestMapping(value = "/deleteregist", method = RequestMethod.GET)
	private String deleteRegist(HttpServletRequest request) {
		Map<String, Object> modelMap = new HashMap<String, Object>();
		Integer id =Integer.parseInt(HttpServletRequestUtil.getString(request, "id")) ;
		int effectedNum=registDao.deleteRegistById(id);
		boolean result=effectedNum>0?true:false;
		modelMap.put("success", result);
		return "tt/hr";
	}
	@RequestMapping(value="/confirmcurepagebydoctor",method=RequestMethod.GET)
	private String confirmCurePageByDoctro(){//就诊确认
		return "tt/doctor/confirmregorder";
	}
	/** 就诊确认 **/
	@RequestMapping(value = "/confirmregistbyid", method = RequestMethod.GET)
	private String confirmRegistById(HttpServletRequest request) {
		Map<String, Object> modelMap = new HashMap<String, Object>();
		Integer id =Integer.parseInt(HttpServletRequestUtil.getString(request, "id")) ;
		Regist target=new Regist();
		target.setAac501(id);
		target.setAac505(1);
		int effectedNum=registDao.updateRegist(target);
		boolean result=effectedNum>0?true:false;
		modelMap.put("success", result);
		return "tt/doctor/confirmregorder";
	}
}
