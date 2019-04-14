package com.caeser.enterpriseportal.web.frontend;

import java.io.IOException;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;

import com.caeser.enterpriseportal.dao.DoctorInfoDao;
import com.caeser.enterpriseportal.dao.ImgUrlDao;
import com.caeser.enterpriseportal.dao.LocalAccountDao;
import com.caeser.enterpriseportal.dto.ImageHolder;
import com.caeser.enterpriseportal.entity.DoctorInfo;
import com.caeser.enterpriseportal.entity.ImgUrl;
import com.caeser.enterpriseportal.entity.LocalAccount;
import com.caeser.enterpriseportal.util.GetUrlNameUtil;
import com.caeser.enterpriseportal.util.HttpServletRequestUtil;
import com.caeser.enterpriseportal.util.ImageUtil;
import com.caeser.enterpriseportal.util.PathUtil;

@Controller
@RequestMapping("/doctorinfo")
public class DoctroInfoController {
	@Autowired
	private DoctorInfoDao doctorInfoDao;
	@Autowired
	private ImgUrlDao imgUrlDao;
	@Autowired
	private LocalAccountDao localAccountDao;
	
	@RequestMapping(value = "/showdoctorinfolist", method = RequestMethod.GET)
	private String showDoctorInfoList() {// 显示主页
		return "tt/doctor/showlist";
	}
	@RequestMapping(value = "/showadddoctorinfo", method = RequestMethod.GET)
	private String showAddDoctorInfo() {// 添加用户界面
		return "tt/cps/admindoctor/add";
	}
	/** 各个公司地址更新 **/
	@RequestMapping(value = "/adddoctorinfo", method = RequestMethod.POST)
	@ResponseBody
	private Map<String, Object> addDoctorInfo(HttpServletRequest request) {
		Map<String, Object> modelMap = new HashMap<String, Object>();
		String loginName=HttpServletRequestUtil.getString(request, "loginName");
		String userName=HttpServletRequestUtil.getString(request, "userName");
		String phoneNumber=HttpServletRequestUtil.getString(request, "phoneNumber");
		String idCard=HttpServletRequestUtil.getString(request, "idCard");
		String workArea=HttpServletRequestUtil.getString(request, "workArea");
		String depName=HttpServletRequestUtil.getString(request, "depName");
		CommonsMultipartFile teamImg=null;
		CommonsMultipartResolver commonsMultipartResolver = new CommonsMultipartResolver(
				request.getSession().getServletContext());
		String newuRL="";
		//查询当前的图片URL字符串
		ImgUrl imgUrl=imgUrlDao.queryUrl();
		//URL字符串自增1
		String newImgUrl=GetUrlNameUtil.getUrlName(imgUrl);
		//初始化扩展名
		String fileExtension=".jpg";
		DoctorInfo target=new DoctorInfo();
		target.setAac802(loginName);
		target.setAac803(userName);
		target.setAac804(phoneNumber);
		target.setAac805(idCard);
		target.setAac808(1);
		target.setAac809(depName);
		if (commonsMultipartResolver.isMultipart(request)) {//先判断图片是否存在
			MultipartHttpServletRequest multipartHttpServletRequest = (MultipartHttpServletRequest) request;
			teamImg = (CommonsMultipartFile) multipartHttpServletRequest.getFile("photoFile");
			String dest = PathUtil.getImgBasePath();
			ImageHolder imageHolder;
			ImgUrl newImgUrlobj=new ImgUrl();
			if(teamImg!=null) {
				try {
					//获取图片
					imageHolder = new ImageHolder(teamImg.getOriginalFilename(),teamImg.getInputStream());
					//复制图片到服务器
					ImageUtil.copyFile(imageHolder, dest, newImgUrl);
					//获取当前图片的扩展名
					fileExtension=ImageUtil.getFileExtension(imageHolder.getImageName());
					//保存对应的扩展名和图片名到 图片对象里，用于更新最新的图片名
					newImgUrlobj.setImgUrlName(newImgUrl+fileExtension);
					newuRL="images/"+newImgUrl+fileExtension;
					//更新图片名
					int effectedNum1=imgUrlDao.updateUrlA(newImgUrlobj);
					if(effectedNum1<1) {
						modelMap.put("success", false);
						modelMap.put("errMsg", "更新imgurl失败");
					}
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}
		target.setAac806(newuRL);
		target.setAac807(workArea);
		int effectedNum=doctorInfoDao.addDoctorInfo(target);
		boolean result=effectedNum>0?true:false;
		LocalAccount target1=new LocalAccount();
		target1.setAac402(loginName);
		target1.setAac403("123456");
		target1.setAac404(userName);
		target1.setAac405(idCard);
		target1.setAac406(phoneNumber);
		target1.setAac407(2);
		effectedNum=localAccountDao.addLocalAccount(target1);
		modelMap.put("success", result);
		return modelMap;
	}
	@RequestMapping(value = "/showmoddoctorinfo", method = RequestMethod.GET)
	private String showModDoctorInfo() {// 显示后台修改医生页面
		return "tt/cps/admindoctor/mod";
	}
	@RequestMapping(value = "/getdoctorinfolist", method = RequestMethod.GET)
	@ResponseBody
	private Map<String, Object> getDoctorInfoList() {// 显示后台修改医生页面
		Map<String, Object> modelMap = new HashMap<String, Object>();
		List<DoctorInfo> doctorInfoList=doctorInfoDao.queryDoctorInfoList();
		modelMap.put("doctorInfoList", doctorInfoList);
		return modelMap;
	}
	@RequestMapping(value = "/showdetaildoctorinfo", method = RequestMethod.GET)
	private String showDetailDoctorInfo() {// 显示详细医生信息页面
		return "tt/doctor/showdetail";
	}
	@RequestMapping(value = "/showmoddoctorinfodetail", method = RequestMethod.GET)
	private String showModDoctorInfoDetail() {// 显示后台修改医生页面
		return "tt/cps/admindoctor/mod1";
	}
	@RequestMapping(value = "/updatedoctorinfobytarget", method = RequestMethod.POST)
    @ResponseBody
    private Map<String, Object> updateDoctorInfoByTarget(HttpServletRequest request) {
        Map<String, Object> modelMap = new HashMap<String, Object>();
        String loginName=HttpServletRequestUtil.getString(request, "loginName");
		String userName=HttpServletRequestUtil.getString(request, "userName");
		String phoneNumber=HttpServletRequestUtil.getString(request, "phoneNumber");
		String idCard=HttpServletRequestUtil.getString(request, "idCard");
		String workArea=HttpServletRequestUtil.getString(request, "workArea");
		long id=Long.parseLong(HttpServletRequestUtil.getString(request, "id"));
		DoctorInfo target=new DoctorInfo();
		target.setAac801(id);
		target.setAac802(loginName);
		target.setAac803(userName);
		target.setAac804(phoneNumber);
		target.setAac805(idCard);
		target.setAac807(workArea);
		int effectedNum=doctorInfoDao.updateDoctorInfo(target);
		boolean result=effectedNum>0?true:false;
        modelMap.put("success", result);
        return modelMap;
    }
	@RequestMapping(value = "/deletedoctorinfo", method = RequestMethod.GET)
	private String deleteDoctorInfo(HttpServletRequest request) {// 删除一条
		Map<String, Object> modelMap = new HashMap<String, Object>();
		Integer id =Integer.parseInt(HttpServletRequestUtil.getString(request, "id")) ;
		int effectedNum=doctorInfoDao.deleteDoctorInfoById(id);
		boolean result=effectedNum>0?true:false;
		modelMap.put("success", result);
		return "tt/cps/admindoctor/mod";
	}
	@RequestMapping(value = "/usershowdetaildoctorinfo", method = RequestMethod.GET)
	private String userShowDetailDoctorInfo() {// 显示详细医生信息页面
		return "tt/doctor/showlist";
	}
	@RequestMapping(value = "/updatedoctordayoffbyid", method = RequestMethod.GET)
	private String updateDoctorDayOffById(HttpServletRequest request) {// 显示后台修改医生页面
		long doctorId=HttpServletRequestUtil.getLong(request, "doctorId");
		Integer dayOffFlageInteger=HttpServletRequestUtil.getInt(request, "dayoff");
		DoctorInfo targetItem=new DoctorInfo();
		targetItem.setAac801(doctorId);
		targetItem.setAac808(dayOffFlageInteger);
		int effectedNum=doctorInfoDao.updateDoctorInfo(targetItem);
		System.out.println(effectedNum);
		return "tt/cps/admindoctor/mod";
	}
}
