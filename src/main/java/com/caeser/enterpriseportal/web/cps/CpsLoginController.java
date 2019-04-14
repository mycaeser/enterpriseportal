package com.caeser.enterpriseportal.web.cps;


import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.caeser.enterpriseportal.dao.LocalAccountDao;
import com.caeser.enterpriseportal.dao.LocalAuthDao;
import com.caeser.enterpriseportal.entity.LocalAccount;
import com.caeser.enterpriseportal.entity.LocalAuth;
import com.caeser.enterpriseportal.util.CodeUtil;
import com.caeser.enterpriseportal.util.HttpServletRequestUtil;
import com.caeser.enterpriseportal.util.MD5;


@Controller
@RequestMapping(value = "local", method = { RequestMethod.GET, RequestMethod.POST })
public class CpsLoginController {
	@Autowired
	private LocalAuthDao localAuthDao;
	@Autowired
	private LocalAccountDao localAccountDao;
	
	@RequestMapping(value = "/logincheck", method = RequestMethod.POST)
	@ResponseBody
	private Map<String, Object> logincheck(HttpServletRequest request) {
		Map<String, Object> modelMap = new HashMap<String, Object>();
		// 获取输入的帐号
		String userName = HttpServletRequestUtil.getString(request, "userName");
		// 获取输入的密码
		String password = HttpServletRequestUtil.getString(request, "password");
		Integer priority =Integer.parseInt(HttpServletRequestUtil.getString(request, "priority")) ;
		if (!CodeUtil.checkVerifyCode(request)) {
			modelMap.put("success", false);
			modelMap.put("errMsg", "输入验证码错误");
			return modelMap;
		}
		// 非空校验
		if (userName != null && password != null) {
			// 传入帐号和密码去获取平台帐号信息
			LocalAuth localAuth = localAuthDao.queryLocalByUserNameAndPwd(userName, MD5.getMd5(password));
			if (localAuth != null) {
				// 若能取到帐号信息则登录成功
				modelMap.put("success", true);
				modelMap.put("user", localAuth.getAac202());
				// 同时在session里设置用户信息
				request.getSession().setAttribute("user", localAuth.getAac202());
			} else {
				LocalAccount localAccount=localAccountDao.queryLocalAccountByAccountPass(userName, password);
				if(localAccount!=null) {
					if(localAccount.getAac407().equals(priority)) {
						// 若能取到帐号信息则登录成功
						modelMap.put("success", true);
						// 同时在session里设置用户信息
						modelMap.put("user1", localAccount.getAac404());
						request.getSession().setAttribute("user1", localAccount.getAac404());
						request.getSession().setAttribute("priority", localAccount.getAac407());
					}else {
						modelMap.put("success", false);
						modelMap.put("errMsg", "用户类型选择错误");
					}
					
				}else {
					modelMap.put("success", false);
					modelMap.put("errMsg", "用户名或密码错误");
				}
			}
		} else {
			modelMap.put("success", false);
			modelMap.put("errMsg", "用户名和密码均不能为空");
		}
		return modelMap;
	}

	@RequestMapping(value = "/logout", method = RequestMethod.POST)
	@ResponseBody
	/**
	 * 当用户点击登出按钮的时候注销session
	 * 
	 * @param request
	 * @return
	 * @throws IOException
	 */
	private Map<String, Object> logout(HttpServletRequest request) {
		Map<String, Object> modelMap = new HashMap<String, Object>();
		// 将用户session置为空
		request.getSession().setAttribute("user", null);
		modelMap.put("success", true);
		return modelMap;
	}
	@RequestMapping(value = "/getsessionname", method = RequestMethod.GET)
	@ResponseBody
	/**
	 * 当用户点击登出按钮的时候注销session
	 * 
	 * @param request
	 * @return
	 * @throws IOException
	 */
	private Map<String, Object> getSessionName(HttpServletRequest request) {
		Map<String, Object> modelMap = new HashMap<String, Object>();
		// 将用户session置为空
		Object userNamesString=request.getSession().getAttribute("user1");
		Object userPriorityInt=request.getSession().getAttribute("priority");
		modelMap.put("userNameString", userNamesString.toString());
		modelMap.put("userPriority", userPriorityInt.toString());
		return modelMap;
	}
	@RequestMapping(value = "/logout1", method = RequestMethod.GET)
	/**
	 * 当用户点击登出按钮的时候注销session
	 * 
	 * @param request
	 * @return
	 * @throws IOException
	 */
	private String logout1(HttpServletRequest request) {
		Map<String, Object> modelMap = new HashMap<String, Object>();
		// 将用户session置为空
		request.getSession().setAttribute("user1", null);
		request.getSession().setAttribute("user", null);
		modelMap.put("success", true);
		return "tt/index";
	}
	@RequestMapping(value = "/logout2", method = RequestMethod.POST)
	/**
	 * 当用户点击登出按钮的时候注销session
	 * 
	 * @param request
	 * @return
	 * @throws IOException
	 */
	private String logout2(HttpServletRequest request) {
		Map<String, Object> modelMap = new HashMap<String, Object>();
		// 将用户session置为空
		request.getSession().setAttribute("user1", null);
		request.getSession().setAttribute("user", null);
		modelMap.put("success", true);
		return "tt/index";
	}
}
