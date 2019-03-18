package com.caeser.enterpriseportal.util;

public class PathUtil {
	private static String seperator = System.getProperty("file.separator");
	public static String filePathInDatabase="images/";
	
	//返回当前文件的绝对路径
	public static String getImgBasePath() {

		String os = System.getProperty("os.name");
		String basePath = "";
		if (os.toLowerCase().startsWith("win")) {
			basePath = "D:/eplimg/v1/";
		} else {
			basePath = "/opt/eplimg/image/";
		}
		basePath = basePath.replace("/", seperator);
		return basePath;
	}

	public static String getShopImagePath(long shopId) {
		String imagePath = "/upload/item/shop/" + shopId + "/";
		//return imagePath.replace("/", seperator);
		return imagePath;
	}
}