/*
Navicat MySQL Data Transfer

Source Server         : myweb
Source Server Version : 50706
Source Host           : localhost:3306
Source Database       : tt_real

Target Server Type    : MYSQL
Target Server Version : 50706
File Encoding         : 65001

Date: 2019-04-16 11:04:45
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `aa01`
-- ----------------------------
DROP TABLE IF EXISTS `aa01`;
CREATE TABLE `aa01` (
  `aaa101` int(11) NOT NULL AUTO_INCREMENT,
  `aaa102` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`aaa101`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='企业简介';

-- ----------------------------
-- Records of aa01
-- ----------------------------
INSERT INTO `aa01` VALUES ('1', 'XXX医院是全国优秀的医院，拥有318位专家，针对眼科的技术更是高超，医院拥有国内外顶尖的医疗仪器，医院收费系统更是先进。以服务至上为原则，全体医疗人员都以人为本。在医院科室分配上，医院拥有骨科、神经外科、泌尿科、普外科、小儿科、呼吸内科、内分泌科、神经内科、耳鼻喉科、妇科。配备有全市可以接送的救护车，为您的医疗安全保驾护航。');

-- ----------------------------
-- Table structure for `aa02`
-- ----------------------------
DROP TABLE IF EXISTS `aa02`;
CREATE TABLE `aa02` (
  `aaa201` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `aaa202` varchar(2000) DEFAULT NULL COMMENT '企业简介全部内容',
  `aaa203` varchar(200) DEFAULT NULL COMMENT '图片名称',
  `aaa204` varchar(200) DEFAULT NULL COMMENT '图片路径',
  PRIMARY KEY (`aaa201`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='关于我们-企业简介';

-- ----------------------------
-- Records of aa02
-- ----------------------------
INSERT INTO `aa02` VALUES ('1', 'Google有限公司（英语：Google LLC；中文：谷歌）是源自美国的跨国科技公司，为Alphabet Inc.的子公司，业务范围涵盖互联网广告、互联网搜索、云计算等领域，开发并提供大量基于互联网的产品与服务，其主要利润来自于AdWords等广告服务。Google由在斯坦福大学攻读理工博士的拉里·佩奇和谢尔盖·布林共同创建，因此两人也被称为“Google Guys”。1998年9月4日，Google以私营公司的形式创立，目的是设计并管理互联网搜索引擎“Google搜索”。2004年8月19日，Google公司在纳斯达克上市，后来被称为“三驾马车”的公司两位共同创始人与出任首席执行官的埃里克·施密特在此时承诺：共同在Google工作至少二十年，即至2024年止。Google的宗旨是“整合全球信息，供大众使用，使人人受益”（To organize the world\'s information and make it universally accessible and useful）而非正式的口号则为“不作恶”（Don\'t be evil），由工程师阿米特·帕特尔（Amit Patel）所创[13]，并得到了保罗·布赫海特的支持。Google公司的总部称为“Googleplex”，位于美国加州圣克拉拉县的芒廷维尤。2011年4月，佩奇接替施密特担任首席执行官。在2015年8月，Google宣布进行资产重组。重组后，Google划归新成立的Alphabet底下。同时，此举把Google旗下的核心搜索和广告业务与Google无人车等新兴业务分离开来。\n据估计，Google在全世界的数据中心内运营着上百万台的服务器，每天处理数以亿计的搜索请求[19]和约二十四PB用户生成的数据。 Google自创立起开始的快速成长同时也带动了一系列的产品研发、并购事项与合作关系，而不仅仅是公司核心的网络搜索业务。Google公司提供丰富的线上软件服务，如云硬盘、Gmail电子邮件，包括Orkut、Google Buzz以及Google+在内的社交网络服务。Google的产品同时也以应用软件的形式进入用户桌面，例如Google Chrome网页浏览器、Picasa图片整理与编辑软件、Google Talk即时通讯工具等。另外，Google还进行了移动设备的Android操作系统以及Google Chrome OS操作系统的开发。\n信息分析网站Alexa数据显示，Google的主域名google.com是全世界访问量最高的站点，Google搜索在其他国家或地区域名下的多个站点（google.co.in、google.de、google.com.hk等等），及旗下的YouTube、Blogger、Orkut等的访问量都在前一百名之内。', 'taitongjj01.jpg', 'images/taitongjj01.jpg');

-- ----------------------------
-- Table structure for `aa03`
-- ----------------------------
DROP TABLE IF EXISTS `aa03`;
CREATE TABLE `aa03` (
  `aaa301` int(11) NOT NULL AUTO_INCREMENT,
  `aaa302` varchar(100) DEFAULT NULL COMMENT '链接名',
  `aaa303` varchar(2000) DEFAULT NULL COMMENT '段落1',
  `aaa304` varchar(2000) DEFAULT NULL COMMENT '段落2',
  `aaa305` varchar(2000) DEFAULT NULL COMMENT '段落3',
  `aaa306` int(11) DEFAULT NULL COMMENT '图片1是否存在',
  `aaa307` int(11) DEFAULT NULL COMMENT '图片2是否存在',
  `aaa308` int(11) DEFAULT NULL COMMENT '图片3是否存在',
  `aaa309` varchar(200) DEFAULT NULL COMMENT '图片1路径',
  `aaa310` varchar(200) DEFAULT NULL COMMENT '图片2路径',
  `aaa311` varchar(200) DEFAULT NULL COMMENT '图片3路径',
  `aaa312` date DEFAULT NULL COMMENT '编辑日期',
  PRIMARY KEY (`aaa301`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='关于我们-企业文化';

-- ----------------------------
-- Records of aa03
-- ----------------------------
INSERT INTO `aa03` VALUES ('1', '企业精神及发展目标', '企业精神：包容、团结、互信、务实', '发展目标：成为一流的通信设计、施工及维护综合业务服务商', '业务范围：	通信业务网络工程、电信支撑网络工程、电信基础网络工程，	电子与智能化工程，	市政公用工程，	钢结构工程	建筑工程，	电力工程，	安防工程', '1', '1', '1', 'images/taitongjj02.jpg', 'images/taitongjj03.jpg', 'images/taitongjj04.png', '2018-05-30');

-- ----------------------------
-- Table structure for `aa04`
-- ----------------------------
DROP TABLE IF EXISTS `aa04`;
CREATE TABLE `aa04` (
  `aaa401` int(11) NOT NULL AUTO_INCREMENT,
  `aaa402` varchar(200) DEFAULT NULL COMMENT '段落描述（200字以内）',
  `aaa403` varchar(200) DEFAULT NULL COMMENT '图片路径',
  `aaa404` date DEFAULT NULL COMMENT '修改日期',
  PRIMARY KEY (`aaa401`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='关于我们-管理团队';

-- ----------------------------
-- Records of aa04
-- ----------------------------
INSERT INTO `aa04` VALUES ('1', '公司安全生产培训内容，优秀员工获奖合影', 'images/taitongjj05.jpg', '2018-05-30');
INSERT INTO `aa04` VALUES ('2', '公司年会获得', 'images/taitongjj06.jpg', '2018-05-30');
INSERT INTO `aa04` VALUES ('3', '标题3', 'images/taitongjj301.jpg', '2018-10-25');
INSERT INTO `aa04` VALUES ('4', '标题4', 'images/taitongjj302.jpg', '2018-10-25');
INSERT INTO `aa04` VALUES ('5', '标题5', 'images/taitongjj303.jpg', '2018-10-25');
INSERT INTO `aa04` VALUES ('6', '标题6', 'images/taitongjj304.jpg', '2018-10-25');
INSERT INTO `aa04` VALUES ('7', '1', '1', '2019-01-06');
INSERT INTO `aa04` VALUES ('8', '测试文章标题3', 'images/taitongjj312.jpg', '2019-01-06');
INSERT INTO `aa04` VALUES ('9', 'aadsfas11111', 'images/taitongjj316.jpg', '2019-01-06');
INSERT INTO `aa04` VALUES ('10', 'aadsfas1111111111123', 'images/taitongjj319.jpg', '2019-01-09');

-- ----------------------------
-- Table structure for `aa05`
-- ----------------------------
DROP TABLE IF EXISTS `aa05`;
CREATE TABLE `aa05` (
  `aaa501` int(11) NOT NULL AUTO_INCREMENT,
  `aaa502` varchar(50) DEFAULT NULL COMMENT '文章标题',
  `aaa503` varchar(200) DEFAULT NULL COMMENT '图片路径',
  `aaa504` varchar(2000) DEFAULT NULL COMMENT '正文内容',
  `aaa505` date DEFAULT NULL COMMENT '提交日期',
  `aaa506` int(11) DEFAULT NULL COMMENT '所属页码',
  PRIMARY KEY (`aaa501`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='关于我们-荣誉资质';

-- ----------------------------
-- Records of aa05
-- ----------------------------
INSERT INTO `aa05` VALUES ('1', '2013年泸州市卫生局发布医疗机构量化分级', 'images/taitongjj07.jpg', '政府对我单位医疗水平认可，颁发A级单位的称号。在此我单位会继续努力。保证人民群众的医疗安全，提供更高水平更高质量的医疗服务，为我市医疗行业做出贡献1', '2018-06-02', '1');
INSERT INTO `aa05` VALUES ('2', '抗洪灾鼎力相助 保通信奋勇争光', 'images/taitongjj09.jpg', '中国电信桂林分公司表彰的“抗洪灾鼎力相助 保通信奋勇争光”锦旗，为表彰我公司在抗洪救灾中，表现积极，积极参与救援行动，为国家做贡献特授予一面锦旗', '2018-06-01', '1');
INSERT INTO `aa05` VALUES ('3', '公司参加中国电信来宾分公司“天翼—安全生产杯”篮球赛荣获得“第一名”', 'images/taitongjj72.jpg', '公司参加中国电信来宾分公司“天翼—安全生产杯”篮球赛荣获得“第一名”', '2018-06-02', '1');
INSERT INTO `aa05` VALUES ('4', '获得国际认证证书：资质等级许可范围内通信工程施工总承包', 'images/taitongjj73.jpg', '经过公司的不断努力和发展，公司的业务达到国际高水平，获得国际认可', '2018-06-02', '1');
INSERT INTO `aa05` VALUES ('5', '通信网络代维（外包）资质等级证书', 'images/taitongjj74.jpg', '经过工信部的研究和考察，我司符合中国通信企业协会评判外包标准，获得通信线路【线路专业】资质等级证书', '2018-06-02', '1');
INSERT INTO `aa05` VALUES ('6', '通信信息网络系统集成企业', 'images/taitongjj75.jpg', '可在全国范围内承担：各类基础网、业务网、支撑网的通信信息网络建设工程方案策划、设计23423', '2018-06-02', '1');
INSERT INTO `aa05` VALUES ('7', '通信信息网络系统集成企业', 'images/taitongjj76.jpg', '可在全国范围内承担：各类基础网、业务网、支撑网的通信信息网络建设工程方案策划、设计', '2018-06-02', '1');
INSERT INTO `aa05` VALUES ('8', '公司营业执照', 'images/taitongjj291.jpg', '标注公司营业范围主次地点，法人代表', '2018-07-26', '1');
INSERT INTO `aa05` VALUES ('9', '建筑资格', 'images/taitongjj292.jpg', '我公司拥有承包施工等其他专业基本资质', '2018-07-26', '1');
INSERT INTO `aa05` VALUES ('10', '资格证书', 'images/taitongjj293.jpg', '市政工程等资格证明', '2018-07-26', '1');
INSERT INTO `aa05` VALUES ('11', '安防工程企业资格', 'images/taitongjj294.jpg', '安防企业资格证书', '2018-07-26', '1');
INSERT INTO `aa05` VALUES ('12', '安全许可证书', 'images/taitongjj295.jpg', '的我公司有建筑施工等安全许可', '2018-07-26', '1');
INSERT INTO `aa05` VALUES ('16', '测试资质1', 'images/taitongjj317.jpg', '三个地方公司法定', '2019-01-06', null);

-- ----------------------------
-- Table structure for `aa051`
-- ----------------------------
DROP TABLE IF EXISTS `aa051`;
CREATE TABLE `aa051` (
  `aaa501` int(11) NOT NULL AUTO_INCREMENT,
  `aaa502` varchar(50) DEFAULT NULL COMMENT '文章标题',
  `aaa503` varchar(200) DEFAULT NULL COMMENT '图片路径',
  `aaa504` varchar(2000) DEFAULT NULL COMMENT '正文内容',
  `aaa505` date DEFAULT NULL COMMENT '提交日期',
  `aaa506` int(11) DEFAULT NULL COMMENT '所属页码',
  PRIMARY KEY (`aaa501`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='关于我们-荣誉资质';

-- ----------------------------
-- Records of aa051
-- ----------------------------
INSERT INTO `aa051` VALUES ('1', '2016年度广西广电网络工程建设优秀合作伙伴', 'images/taitongjj07.jpg', '公司获得“2016年度广西广电网络工程建设优秀合作伙伴”荣誉证书，在2016年，我公司与广西广电网络工程合作建设，取得良好的成功，得到客户的广泛好评，在我司上下员工的努力下，为该工程创建良好的环境，为该工程打下良好的基础，展示了我公司的实力', '2018-06-01', '1');
INSERT INTO `aa051` VALUES ('2', '抗洪灾鼎力相助 保通信奋勇争光', 'images/taitongjj09.png', '中国电信桂林分公司表彰的“抗洪灾鼎力相助 保通信奋勇争光”锦旗，为表彰我公司在抗洪救灾中，表现积极，积极参与救援行动，为国家做贡献特授予一面锦旗', '2018-06-01', '1');
INSERT INTO `aa051` VALUES ('3', '公司参加中国电信来宾分公司“天翼—安全生产杯”篮球赛荣获得“第一名”', 'images/taitongjj72.jpg', '公司参加中国电信来宾分公司“天翼—安全生产杯”篮球赛荣获得“第一名”', '2018-06-02', '1');
INSERT INTO `aa051` VALUES ('4', '获得国际认证证书：资质等级许可范围内通信工程施工总承包', 'images/taitongjj73.jpg', '经过公司的不断努力和发展，公司的业务达到国际高水平，获得国际认可', '2018-06-02', '1');
INSERT INTO `aa051` VALUES ('5', '通信网络代维（外包）资质等级证书', 'images/taitongjj74.jpg', '经过工信部的研究和考察，我司符合中国通信企业协会评判外包标准，获得通信线路【线路专业】资质等级证书', '2018-06-02', '1');
INSERT INTO `aa051` VALUES ('6', '通信信息网络系统集成企业（上半部分）', 'images/taitongjj75.jpg', '可在全国范围内承担：各类基础网、业务网、支撑网的通信信息网络建设工程方案策划、设计23423', '2018-06-02', '1');
INSERT INTO `aa051` VALUES ('7', '通信信息网络系统集成企业（下半部分）', 'images/taitongjj76.jpg', '可在全国范围内承担：各类基础网、业务网、支撑网的通信信息网络建设工程方案策划、设计', '2018-06-02', '1');

-- ----------------------------
-- Table structure for `ab01`
-- ----------------------------
DROP TABLE IF EXISTS `ab01`;
CREATE TABLE `ab01` (
  `aab101` int(11) NOT NULL AUTO_INCREMENT,
  `aab102` varchar(50) DEFAULT NULL COMMENT '文章标题（20字以内）',
  `aab103` varchar(2000) DEFAULT NULL COMMENT '正文段落1',
  `aab104` varchar(2000) DEFAULT NULL COMMENT '正文段落2',
  `aab105` varchar(2000) DEFAULT NULL,
  `aab106` int(11) DEFAULT NULL COMMENT '图片1是否存在;1存在;0不存在',
  `aab107` int(11) DEFAULT NULL COMMENT '图片2是否存在;1存在;0不存在',
  `aab108` int(11) DEFAULT NULL COMMENT '图片3是否存在;1存在;0不存在',
  `aab109` varchar(200) DEFAULT NULL COMMENT '图片1路径',
  `aab110` varchar(200) DEFAULT NULL COMMENT '图片2路径',
  `aab111` varchar(200) DEFAULT NULL COMMENT '图片3路径',
  `aab112` date DEFAULT NULL COMMENT '日期',
  `aab113` int(11) DEFAULT NULL COMMENT '所属分类（1公司动态;2行业新闻;3通信知识;4企业公告）',
  `aab114` int(11) DEFAULT '1' COMMENT '是否显示',
  PRIMARY KEY (`aab101`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8 COMMENT='新闻资讯-公司动态';

-- ----------------------------
-- Records of ab01
-- ----------------------------
INSERT INTO `ab01` VALUES ('1', '南宁市轨道交通4号线一期工程（通信线路迁改01分标）承建单位：南宁轨道交通集团有限责任公司', '【建设单位】南宁轨道交通集团有限责任公司【项目概况】该工程位于南宁市五象新区，是南宁10大惠民工程之一，我公司承接该项目弱电工程临时迁改和正式恢复，包括信号灯、联通、广电、互联网、移动、电信、铁通、国防光缆、专用通信局、长途运输局、交警、公安等所有产权单位的弱电迁改工程。', '', '', '1', '1', '1', 'images/taitongjj10.jpg', null, null, '2018-06-03', null, '1');
INSERT INTO `ab01` VALUES ('2', null, null, null, null, '1', null, null, 'images/taitongjj11.jpg', null, null, null, null, '1');
INSERT INTO `ab01` VALUES ('3', null, null, null, null, '1', null, null, 'images/taitongjj12.jpg', null, null, null, null, '1');
INSERT INTO `ab01` VALUES ('4', null, null, null, null, '1', null, null, 'images/taitongjj04.png', null, null, null, null, '1');
INSERT INTO `ab01` VALUES ('5', '丘传至', '拥有大大小小各类手术经验是一个经验十分丰富的医生1', '临床工作十余年', '对很多手术内容都有自己的见解', '1', '1', '1', 'images/taitongjj13.jpg', 'images/taitongjj14.jpg', 'images/taitongjj15.jpg', '2018-06-06', '1', '1');
INSERT INTO `ab01` VALUES ('6', '梁志军', '梁志军，男，主任医师，副教授。从事临床、科研及教学工作26年。1990年毕业于宁夏医科大学临床医学专业，本科学历，学士学位。1992年到宁夏医科大学第二附属医院（三级甲等医院）骨科工作至今。2001年参加宁夏医科大学在职研究生课程班学习。2002年到无锡市手外科医院进修学习。2013年参加四川华西医院足踝外科手术技术培训班学习。2014年到上海瑞金医院足踝外科进修学习。', '工作以来多次参加全国手显微外科、足踝外科学术会议及培训班，先后在创伤骨科，手显微外科及足踝外科专业领域工作，有丰富的临床经验，良好的患者口碑。工作认真负责，态度耐心友好，手术风格细腻艺术。', '目前主要从事足踝外科专业工作，精力投入在足踝创伤，包括踝关节骨折、跟骨骨折、距骨骨折及中前足损伤的手术治疗以及前中后足矫形，包括拇外翻畸形，平足症，弓形足，CMT后遗症，踝关节创伤后遗症，踝关节运动损伤，糖尿病足创面修复等方面治疗', '1', '1', '1', 'images/taitongjj16.jpg', 'images/taitongjj17.jpg', 'images/taitongjj18.jpg', '2018-06-02', '1', '1');
INSERT INTO `ab01` VALUES ('7', '蔡晓红', '蔡晓红，医学博士，教授、主任医师，硕士研究生导师，儿童内科学系主任、儿童睡眠医学科主任。浙江省医学重点学科儿童睡眠医学创新学科带头人。中国医师协会睡眠医学专业委员会第二届委员会儿童睡眠医学组副组长，中国睡眠研究会儿童睡眠医学专业委员会第一届常务委员。中国医师协会毕业后医学教育儿科专业委员会副总干事，浙江省医师协会儿科医师分会第一届委员会常务委员，中华医学会浙江省儿科分会委员。', '赴奥地利格拉茨医科大学、美国路易斯威尔大学Kosair儿童医院访学。2015年获得浙江省科学技术厅科技进步奖三等奖，2011年获浙江省医药卫生科技奖三等奖，浙江省高等学校科研成果奖二等奖，温州市科学技术进步奖二等奖，国家发明专利1项，实用新型专利2项。目前主持国家自然基金、省部级和厅局级课题4项，近5年发表SCI、国家一级和省级核心期刊论文50篇。荣获2015年中国医师协会国家级“住院医师心中好老师”，温州市卫生和计划生育委员会第二届“瓯越名医”光荣称号。', '擅长：儿童睡眠障碍疾病性如：鼾症、阻塞性睡眠呼吸暂停综合征(包括入睡时打呼噜、鼻塞、张口呼吸、呼吸用力、睡眠不安、多汗、遗尿等)、失眠（包括入睡困难、频繁觉醒和睡眠不足等）或白天嗜睡或多动注意力不集中、异态睡眠（夜惊、梦魇、梦游、梦话等）、婴儿昼夜颠倒、磨牙、发作性睡病等，及哮喘、过敏性鼻炎、慢性咳嗽、肺炎等呼吸系统疾病的诊治。', '1', '1', '1', 'images/taitongjj19.jpg', 'images/taitongjj20.jpg', 'images/taitongjj21.jpg', '2018-06-02', '1', '1');
INSERT INTO `ab01` VALUES ('8', '林坚', '1997年毕业于温州医学院临床医学系，2013年获西安交通大学医学博士学位。入选温州市“551人才工程”第二层次人才，浙江省卫计委小儿外科重点学科后备学科带头人。担任中国医师协会脑胶质瘤专委会小儿学组委员、浙江省医学会小儿外科委员会常委、浙江省医学会神经外科青年委员会委员、浙江省康复医学会脑外伤与康复委员会委员、温州市医学会神经外科分会委员。', '2009年上海交通大学儿童医学中心、2014年北京天坛医院儿童神经外科进修学习，2015年台湾荣民总医院访问学者。主要从事儿童及成人神经外科方面的临床和基础研究，擅长儿童脑(脊髓)肿瘤的诊断和显微外科手术、儿童先天性神经系统疾病（脑积水、脊髓栓系综合征、狭颅症等）的诊治、儿童及成人重型颅脑外伤救治。在各级学术期刊发表学术论文共30多篇，SCI收录4篇。主持浙江省自然科学基金、浙江省科技厅等省部级研究项目3项。主持医院多项新技术和新项目，获一、二等奖。参与完成课题获得浙江省科技进步奖2项，浙江省医药卫生进步奖1项。', '门诊排班：周五上午', '1', '1', '1', 'images/taitongjj22.jpg', 'images/taitongjj23.jpg', 'images/taitongjj24.jpg', '2018-06-02', '1', '1');
INSERT INTO `ab01` VALUES ('9', '庄捷秋', '1993年毕业于温州医学院。2001年2-8月在北京大学第一医院儿童肾脏科进修；2009年取得温州医学院临床医学硕士学位；2012年晋升为主任医师。2007年赴美国Emory大学医学院肾脏科进行为期一年的postdoctor研究工作。为2004年浙江省中医药重点（扶植）学科后备带头人，现任温州医学院附属育英儿童医院肾内科主任', '为浙江省医学会肾脏病学分会青年委员、浙江省医师协会肾脏病学分会委员、温州市医学会肾脏病学分会委员。擅长儿内科各种常见病的诊治，熟悉各种儿内科危重病的抢救。尤其在儿童肾脏专科疾病诊治方面有丰富的临床经验，如各种原发性和继发性肾小球疾病（如急、慢性肾炎、肾病综合征、紫癜性肾炎、狼疮性肾炎、乙肝病毒相关性肾炎等）、肾小管-间质性疾病、儿童继发性高血压、体液紊乱性疾病、尿路感染、急、慢性肾功能衰竭等。', '已主持完成一项院级课题和一项温州市科技局课题，成功申报国家自然科学基金、浙江省自然科学基金和温州市科委对外项目合作课题各一项，并参与完成多项市级以上科研项目。以第一作者发表论文十余篇，其中2篇为SCI所收录。', '1', '1', '1', 'images/taitongjj25.jpg', 'images/taitongjj26.jpg', 'images/taitongjj27.jpg', '2018-06-02', '1', '1');
INSERT INTO `ab01` VALUES ('10', '陈波蓓', '擅长鼻内窥镜手术治疗鼻窦炎、鼻息肉、鼻腔肿瘤，中耳疾病的耳显微外科手术、喉显微、喉肿瘤外科、及小儿耳鼻喉科疑难疾病的诊治。对儿童鼻窦炎，儿童喉乳头瘤，儿童鼾症和耳聋基因有较深入的学术研究。', '陈波蓓，女，耳鼻咽喉科科主任，教授、主任医师、硕士研究生导师，温州市医学会耳鼻喉科分会专业委员会委员，1982年毕业于温州医学院医疗系，本科，硕士生导师,教授。从事耳鼻喉临床和教学科研工作20余年，对耳鼻喉科疑难危重疾病的诊断治疗积累了丰富的临床经验。', '长鼻内窥镜手术治疗鼻窦炎、鼻息肉、鼻腔肿瘤，中耳疾病的耳显微外科手术、喉显微、喉肿瘤外科、小儿耳鼻喉科疑难疾病的诊治，小儿疑难气管、食管异物的诊断和手术治疗。近几年来又开展呼吸睡眠暂停综合症的腭咽成形术和射频消融治疗鼾症的新技术、新疗法。在全省率先开展儿童喉乳头瘤的基础和临床研究，并有突出成果。', '1', '1', '1', 'images/taitongjj28.jpg', 'images/taitongjj29.jpg', 'images/taitongjj30.jpg', '2018-06-02', '1', '1');
INSERT INTO `ab01` VALUES ('11', '吕杰强', '医疗成就：从事妇产科临床工作32年，是浙江省“新世纪151人才工程”第二层次人才。现任APEA理事，中国性学会常务委员；华东地区腔镜学会理事；浙江省医学会妇产科分会副主任委员，浙江省妇产科医师分会副会长，浙江省计划生育/生殖医学协会委员；温州市医学会理事，温州市医学会妇产科分会主任委员、围产医学分会副主任委员，浙江省县级医学龙头学科专家指导小组成员，鹿城区干部保健委员会专家组成员；同时担任《国际妇产科学杂志》副主编、《国际计划生育－生殖医学》副主编,《生殖与避孕》编委，《温州医学院学报》常务编委；', '浙江省医学重点支撑学科《围产医学》学科带头人；温州医学院围产医学中心主任，温州医学院妇产科学系副主任；温州医学院附属第二医院妇产科主任、生殖医学中心主任、卫生部妇产科住院医师培训点负责人、国家药监局临床药物试验基地负责人；卫生部温州医学院妇科腔镜技术培训基地主任。1992年-1997年赴英联邦斐济群岛和美国托管之密克罗尼西亚联邦进行援助医疗活动，任职妇产科专家医师（Specialist of Obs&Gyn）；2000年赴澳大利亚昆士兰大学免疫与癌症中心进修半年；掌握本学科在国内外的发展动态，为制定创新性的学术规划奠定了扎实的基础。', '所获荣誉：中国杰出妇科内镜青年医师；为浙江省“151第二层次人才”；温州市优秀共产党员；瓯越名医；温州市计划生育工作先进工作者；温州医科大学教学名师；温州医科大学优秀共产党员；附属二院优秀科主任；附属二院优秀科研工作者；3次荣获附属二院优秀工作者；14次荣获温州医科大学优秀教师称号；', '1', '1', '1', 'images/taitongjj31.jpg', 'images/taitongjj32.jpg', 'images/taitongjj33.jpg', '2018-06-02', '1', '1');
INSERT INTO `ab01` VALUES ('12', '英贤聚首在京城，续篇宏略奔征程', '又是一年芳草绿，依然十里杏花红。冬去春来，中国医师协会第九次新生儿科医师大会暨新生儿围产期医学专科规范化培训第二期专科师资培训会议于2019.3.22-3.24在北京隆重召开。大会以“质量、创新”为主旨，是中国新生儿领域一次规模空前的学术盛典，来自全国各地的2600余名医师参加了本次大会。', '此次会议完成了分会换届选举，我院林振浪副院长担任神经专业委员会主任委员，陈尚勤主任担任母源性疾病专业委员会副主任委员，陈鲜威副主任任复苏专业委员会委员，朱敏丽副主任医师担任感染专业委员会委员，朱利斌副主任担任外科专业委员会委员，杨祖钦副主任担任早产儿专业委员会委员，麦菁芸医师任青年委员会委员，朱将虎医师任神经专业委员会委员兼秘书，共有8人在中国医师协会新生儿科医师大会各专业委员会中担任委员，彰显了我院新生儿科在国内的影响力。麦菁芸及陈鲜威副主任医师同时参加了新生儿围产期医学专科规范化培训第二期专科师资培训。我院儿科外方主任、美国西奈山医学中心林锦教授受邀在大会上作了题为《中国NICU的耐药菌感染现状和抗生素临床应用管理》主题报告，神经专业委员会主任委员林振浪教授进行了《胎儿医学新进展》的专题讲座，受到了与会者的欢迎和热烈讨论。', '国家卫生健康委员会妇幼司副司长沈海屏、中国医师协会秘书长李松林、解放军总医院后勤部副部长刘广东、解放军总医院第七医学中心主任石青龙等有关领导出席开幕式。中国医师协会新生儿科医师分会封志纯会长致辞。', '1', '1', '1', 'images/taitongjj34.jpg', 'images/taitongjj35.jpg', 'images/taitongjj36.jpg', '2018-06-02', '2', '1');
INSERT INTO `ab01` VALUES ('13', '沙发的撒的发光缆线路工程', '超级测试场鹅鹅鹅鹅鹅鹅', null, null, '1', '1', '1', 'images/taitongjj37.jpg', 'images/taitongjj38.jpg', 'images/taitongjj39.jpg', '2018-06-02', '2', '1');
INSERT INTO `ab01` VALUES ('14', '撒范德萨的任务二认为建工程', '超级测试场鹅鹅鹅鹅鹅鹅', null, null, '1', '1', '1', 'images/taitongjj40.jpg', 'images/taitongjj41.jpg', 'images/taitongjj42.jpg', '2018-06-02', '2', '1');
INSERT INTO `ab01` VALUES ('15', '撒的发的说法是目工程', '超级测试场鹅鹅鹅鹅鹅鹅', null, null, '1', '1', '1', 'images/taitongjj43.jpg', 'images/taitongjj44.jpg', 'images/taitongjj45.jpg', '2018-06-02', '2', '1');
INSERT INTO `ab01` VALUES ('16', '阿斯顿发送到发送到目工程', '【建设单位】中国电信股份有限公司南宁分公司【项目概况】我公司积极参与整个天网项目的筹划与建设，负责该项目的通信线路施工及通信设备的安装，工程覆盖市各城区的大街小巷。', null, null, '1', '1', '1', 'images/taitongjj46.jpg', 'images/taitongjj47.jpg', 'images/taitongjj48.jpg', '2018-06-02', '2', '1');
INSERT INTO `ab01` VALUES ('17', '通信光缆简介', '通信光缆是由若干根（芯）光纤（一般从几芯到几千芯）构成的缆心和外护层所组成。光纤与传统的对称铜回路及同轴铜回路相比较，其传输容量大得多；衰耗少；传输距离长；体积小；重量轻；无电磁干扰；成本低，是当前最有前景的通信传输媒体。它正广泛地用于电信、电力、广播等各部门的信号传输上，将逐步成为未来通信网络的主体。下面介绍通信光缆的相关知识。', '背景介绍通信光缆 Communication Optical Fiber Cable。通信光缆是由若干根（芯）光纤（一般从几芯到几千芯）构成的缆心和外护层所组成。光纤与传统的对称铜回路及同轴铜回路相比较，其传输容量大得多；衰耗少；传输距离长；体积小；重量轻；无电磁干扰；成本低，是当前最有前景的通信传输媒体。它正广泛地用于电信、电力、广播等各部门的信号传输上，将逐步成为未来通信网络的主体。光缆在结构上与电缆主要的区别是光缆必须有加强构件去承受外界的机械负荷，以保护光纤免受各种外机械力的影响。', '光纤的理论是由英国籍华人高锟博士在1966年提出来的。可见华人也是非常有智慧和创新能力的。高锟指出：在改进制作工艺后人们有可能做出适合通信用的低损耗光纤。这个预言在1970年由美国康宁玻璃公司制造的低损耗石英光纤所证实。该公司的光纤损耗指标是20 dB/km。1976年，美国贝尔研究所在亚特兰大建成第一条光纤通信实验系统，采用了西方电气公司制造的含有144根光纤的光缆。1980年，由多模光纤制成的商用光缆开始在市内局间中继线和少数长途线路上采用。1983年，单模光纤制成的商用光缆开始在长途线路中采用。1988年，横跨大西洋的海底光缆敷设成功，连接了美国、英国和法国。我国在1978年自行研制出了通信光缆。1984年开始使用单模光纤，通信光缆逐步应用于长途线路。', '1', '1', '1', 'images/taitongjj49.jpg', 'images/taitongjj50.jpg', 'images/taitongjj51.jpg', '2018-06-02', '3', '1');
INSERT INTO `ab01` VALUES ('18', '天网工程', '天网工程是指为满足城市治安防控和城市管理需要，利用图像采集、传输、控制、显示等设备和控制软件组成，对固定区域进行实时监控和信息记录的视频监控系统。天网工程整体按照部级-省厅级-市县级平台架构部署实施，具有良好的拓展性与融合性。', '天网工程是指为满足城市治安防控和城市管理需要，利用GIS地图、图像采集、传输、控制、显示等设备和控制软件组成，对固定区域进行实时监控和信息记录的视频监控系统。天网工程通过在交通要道、治安卡口、公共聚集场所、宾馆、学校、医院以及治安复杂场所安装视频监控设备，利用视频专网、互联网、移动等网络通网闸把一定区域内所有视频监控点图像传播到监控中心（即“天网工程”管理平台），对刑事案件、治安案件、交通违章、城管违章等图像信息分类，为强化城市综合管理、预防打击犯罪和突发性治安灾害事故提供可靠的影像资料。是政法委发起公安部联合信息产业部（现在叫工信部）等相关部委共同发起建设的信息化工程，涉及到众多领域，包含城市治安防控体系的建设、人口信息化建设等等，由上述信息构成基础数据库数据，根据需要进行编译、整理、加工，供授权单位进行信息查询。天网工程整体按照部级-省厅级-市县级平台架构部署实施，具有良好的拓展性与融合性。目前许多城镇，甚至农村、企业都加入了天网工程，为保持社会治安、打击犯罪提供了有力的工具。', '', '1', '1', '0', 'images/taitongjj52.jpg', 'images/taitongjj53.jpg', 'images/taitongjj77.jpg', '2018-06-02', '3', '1');
INSERT INTO `ab01` VALUES ('19', '通信抢修流程', '1、工区抢修队工区工长接到通知后：(1)立即通知车间和段调度；(2)立即派现场经验丰富的副工长到事故现场对事故现场进行调查和分析，并告知及时反馈现场故障信息；(3)立即派驻站员赶往就近车站登记运统-46；(4)根据现场故障信息启动故障抢修预案，工区抢修队各司其责，带好工机具、通讯器材、照相机及技术台帐等设备资料立即赶往现场，并将通知上级抢修时间和工区出发时间做好记录。（准备时间：十分钟内。赶往现场时间：半小时必须到达现场）。', '2、车间抢修组接到工区通知后：（1）首先询问工长是否将故障信息上报段调度；（2）根据工区上报故障信息分析故障类型及其严重程度，启动抢修预案；（3）根据故障类型和严重程度分析是否要使用车间抢修工机具；(4)车间抢修组，带上抢修料具、通讯器材、照相机、技术台帐等设备资料，立即赶往故障现场。（半小时内出发赶到现场）。', '3、段故障抢修指挥部段调度接收到故障信息后：（1）立即通知值班领导及段各科室，并说明现场故障情况。（2）相关领导接到故障通知后，根据现场故障情况，召开紧急故障讨论会，根据故障类型及严重程度启动故障抢修预案，并及时将故障信息向公司调度汇报，组织故障抢修指挥部成员10分钟内出动。', '1', '1', '1', 'images/taitongjj54.jpg', 'images/taitongjj55.jpg', 'images/taitongjj56.jpg', '2018-06-02', '3', '1');
INSERT INTO `ab01` VALUES ('20', '弱电工程', '弱电工程是电力应用的一个分类。电力应用按照电力输送功率的强弱可以分为强电与弱电两类。建筑及建筑群用电一般指交流220V50Hz及以下的弱电。主要向人们提供电力能源，将电能转换为其他能源，例如空调用电，照明用电，动力用电等等。', '常用的建筑弱电系统主要有以下几种：(1) 电话通信系统实现电话(包括三类传真机、可视电话等)通信功能；星型拓扑结构；使用三类(或以上)非屏蔽双绞线，传输信号的频率在音频范围内。(2) 计算机局域网系统是实现办公自动化及各种数据传输的网络基础；星型拓扑结构；使用五类(或以上)非屏蔽双绞线，传输数字信号，传输速率可达100 Mb/s以上。(3) 音乐/广播系统通过安装在现场(如商场、车站、餐厅、客房、走廊等处)的扬声器，播放音乐，并可通过传声器对现场进行广播；多路总线结构；传输由功率放大器输出的定压（如120 V/120 Ω）的音频信号，以驱动现场扬声器发声，传输线使用铜芯绝缘导线。(4) 有线电视信号分配系统将有线电视信号均匀地分配到楼内各用户点；采用分支器、分配器进行信号分配，为了减小信号失真和衰减，使各用户点信号质量达到规范规定的要求，其布线为树型结构，且随建筑物的形式及用户点分布的不同而不同；使用75 Ω射频同轴电缆，传输多路射频信号。(5) 视频监控系统通过安装在现场的摄像机、防盗探测器等设备，对建筑物的各出入口和一些重要场所进行监视和异常情况报警等；视频信号的传输采用星型结构，使用视频同轴电缆；控制信号的传输采用总线结构，使用铜芯绝缘缆线。(6) 消防报警系统该系统由火灾报警及消防联动系统、消防广播系统、火警对讲电话系统等3部分组成。火灾报警及消防联动系统通过设置在楼内各处的火灾探测器、手动报警装置等对现场情况进行监测，当有报警信号时，根据接收到的信号，按照事先设定的程序，联动相应的设备，以控制火势蔓延，其信号传输采用多路总线结构，但对于重要消防设备(如消防泵、喷淋泵、正压风机、排烟风机等)的联动控制信号的传输，有时采用星型结构，信号的传输使用铜芯绝缘缆线(有的产品要求使用双绞线)。消防广播系统用于在发生火灾时指挥现场人员安全疏散，采用多路总线结构，信号传输使用铜芯绝缘导线(该系统可与音乐/广播系统合用)。火警对讲电话系统用于指挥现场消防人员进行灭火工作，采用星型和总线型两种结构，信号传输使用屏蔽线。', null, '1', '1', '0', 'images/taitongjj57.jpg', 'images/taitongjj58.jpg', 'images/taitongjj78.jpg', '2018-06-02', '3', '1');
INSERT INTO `ab01` VALUES ('21', '输电线路工程', '输电线路工程，具备输电线路工程基础知识与实际应用能力，能够从事输电线路规划、设计、制造、施工、运行与维护等方面工作，并具有一定科学研究能力的高级工程技术人才。', '本专业方向培养掌握输电工程学科的基本理论和基本知识，获得工程师基本训练并具有一定实践能力和创新精神的高级工程技术人才。通过本专业的学习，学生可获得力学、电气工程、输电工程的基础知识，掌握输电工程的专业知识与专业技能，受到良好的科学思维和实验技能训练。毕业生具备从事输电工程项目规划、设计、研究开发、施工及管理等方面的工作能力，能够在输电线路设计、输电线路施工、输电线路运行维护等行业的设计、研究、施工、教育、管理、投资、开发等部门从事技术或管理工作。', null, '1', '0', '0', 'images/taitongjj59.jpg', 'images/taitongjj79.jpg', 'images/taitongjj80.jpg', '2018-06-02', '3', '1');
INSERT INTO `ab01` VALUES ('23', '1123', '1', '1', '1', '0', '0', '0', 'images/taitongjj84.jpg', 'images/taitongjj85.jpg', 'images/taitongjj86.jpg', '2018-06-02', '2', '0');
INSERT INTO `ab01` VALUES ('24', '1', '1', '1', '1', '0', '0', '0', 'images/taitongjj87.jpg', 'images/taitongjj88.jpg', 'images/taitongjj89.jpg', '2018-06-02', '3', '0');
INSERT INTO `ab01` VALUES ('26', '通知通知', '1手动阀手电光', '1', '1', '1', '1', '1', 'images/taitongjj93.jpg', 'images/taitongjj94.jpg', 'images/taitongjj95.jpg', '2018-06-03', '4', '1');
INSERT INTO `ab01` VALUES ('27', '1', '1', '1', '1', '0', '0', '0', 'images/taitongjj96.jpg', 'images/taitongjj97.jpg', 'images/taitongjj98.jpg', '2018-06-02', '4', '1');
INSERT INTO `ab01` VALUES ('28', '1', '1', '1', '1', '0', '0', '0', 'images/taitongjj99.jpg', 'images/taitongjj100.jpg', 'images/taitongjj101.jpg', '2018-06-02', '4', '1');
INSERT INTO `ab01` VALUES ('29', '1', '1', '1', '1', '0', '0', '0', 'images/taitongjj102.jpg', 'images/taitongjj103.jpg', 'images/taitongjj104.jpg', '2018-06-02', '4', '1');
INSERT INTO `ab01` VALUES ('30', '1', '1', '1', '1', '0', '0', '0', 'images/taitongjj105.jpg', 'images/taitongjj106.jpg', 'images/taitongjj107.jpg', '2018-06-02', '4', '1');
INSERT INTO `ab01` VALUES ('31', '1', '1', '1', '1', '0', '0', '0', 'images/taitongjj108.jpg', 'images/taitongjj109.jpg', 'images/taitongjj110.jpg', '2018-06-02', '4', '1');
INSERT INTO `ab01` VALUES ('32', '1', '1', '1', '1', '0', '0', '0', 'images/taitongjj111.jpg', 'images/taitongjj112.jpg', 'images/taitongjj113.jpg', '2018-06-02', '4', '1');
INSERT INTO `ab01` VALUES ('40', '新公告19', 'dsfas123', '的说法是', '是', null, null, null, 'images/taitongjj334.jpg', 'images/taitongjj335.jpg', 'images/taitongjj336.jpg', '2019-01-19', '4', '1');

-- ----------------------------
-- Table structure for `ac01`
-- ----------------------------
DROP TABLE IF EXISTS `ac01`;
CREATE TABLE `ac01` (
  `aac101` int(11) NOT NULL AUTO_INCREMENT,
  `aac102` varchar(50) DEFAULT NULL COMMENT '文章标题（20字以内）',
  `aac103` varchar(2000) DEFAULT NULL COMMENT '正文段落1',
  `aac104` varchar(2000) DEFAULT NULL COMMENT '正文段落2',
  `aac105` varchar(2000) DEFAULT NULL COMMENT '正文段落3',
  `aac106` int(11) DEFAULT NULL COMMENT '图片1是否存在',
  `aac107` int(11) DEFAULT NULL COMMENT '图片1是否存在',
  `aac108` int(11) DEFAULT NULL COMMENT '图片3是否存在',
  `aac109` varchar(200) DEFAULT NULL COMMENT '图片1路径',
  `aac110` varchar(200) DEFAULT NULL COMMENT '图片2路径',
  `aac111` varchar(200) DEFAULT NULL COMMENT '图片3路径',
  `aac112` date DEFAULT NULL COMMENT '日期',
  `aac113` int(11) DEFAULT NULL COMMENT '分类',
  `aac114` int(11) DEFAULT NULL COMMENT '是否显示',
  `aac115` int(11) DEFAULT NULL COMMENT '分小类编号',
  `aac116` varchar(50) DEFAULT NULL COMMENT '小类名称（1弱电工程2天网工程3线路工程4维护工程5综合布线工程6室分工程7铁塔工程8广电工程9移动无线集成工程）',
  PRIMARY KEY (`aac101`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8 COMMENT='工程案例-案例细读';

-- ----------------------------
-- Records of ac01
-- ----------------------------
INSERT INTO `ac01` VALUES ('1', '全球有限责任公司', '【建设单位】南宁轨道交通集团有限责任公司【项目概况】该工程位于南宁市五象新区，是南宁10大惠民工程之一，我公司承接该项目弱电工程临时迁改和正式恢复，包括信号灯、联通、广电、互联网、移动、电信、铁通、国防光缆、专用通信局、长途运输局、交警、公安等所有产权单位的弱电迁改工程。', '', '', '1', '1', '1', 'images/taitongjj60.jpg', 'images/taitongjj61.jpg', 'images/taitongjj62.jpg', '2018-06-02', '1', '1', '1', '骨科');
INSERT INTO `ac01` VALUES ('2', '路阿尼设置股份有限公司', '【建设单位】柳州黑天鹅文化体育投资管理股份有限公司【项目概况】项目总投资达7000万元，该工程涉及到整个凤凰河生态旅游区的五星级酒店、别墅区、温泉区、高尔夫球场、马场等各个园区的机房建设及安防监控系统、有线电视系统、智能化系统、弱电管道建设等所有的弱电项目。', null, null, '1', '1', '1', 'images/taitongjj63.jpg', 'images/taitongjj64.jpg', 'images/taitongjj65.jpg', '2018-06-02', '1', '1', '1', '骨科');
INSERT INTO `ac01` VALUES ('3', '与啊是我我失败啊在室分工程', '室分工程【建设单位】中国铁塔股份有限公司百色市分公司【项目概况】本项目施工地点位于百色市田东县的商业购物区，工程覆盖面积为9135平方米。', null, null, '1', '1', '1', 'images/taitongjj19.jpg', 'images/taitongjj20.jpg', 'images/taitongjj21.jpg', '2018-06-02', '1', '1', '6', '室分工程');
INSERT INTO `ac01` VALUES ('4', '手动阀手电光过过过有限公司', '维护工程【建设单位】柳州市城市投资建设发展有限公司【项目概况】本项目位于柳州市柳南区南环路，是柳州市为改善交通、完善路网建设的便民工程。', null, null, '1', '1', '1', 'images/taitongjj28.jpg', 'images/taitongjj29.jpg', 'images/taitongjj30.jpg', '2018-06-02', '1', '1', '4', '维护工程');
INSERT INTO `ac01` VALUES ('5', '沙发的说法撒是是是——人才理念', '泰通这个名字，从2006年到现在，被赋予了很多深刻的含义，取得的诸多成绩离不开伴随公司成长的每一个位泰通达人的辛勤劳动和心血奉献，更离不开社会各企业的质量要求和水平评估。这就要求我们的队伍必须保持着优于同类企业的管理理念，充分发挥员工的主人翁意识，上下同欲，才能谱写美丽的篇章。', '人才培养原则——内外结合，专业技能和管理能力相结合。泰通通信尊重每一位员工的发展，采用采用内部培训和外部培训并行、专业技能和管理能力相结合的形式，培养出多技能的综合型人才；通过月度主题培训、部门自助培训、“师傅带徒弟”形式、鼓励员工充分利用公司完善的培训及发展制度规划个人职业生涯，引导他们将个人发展目标与企业发展目标相结合起来，充分发挥个人潜能。在全面的员工培训发展体制支持下，在良好的企业文化熏陶下，让每一位员工的才智得以最大限度发挥。', '', '1', '1', '1', 'images/taitongjj66.jpg', 'images/taitongjj67.jpg', 'images/taitongjj68.jpg', '2018-06-03', '2', '1', null, null);
INSERT INTO `ac01` VALUES ('6', '人才队伍建设原则及选人用人原则', '首先，泰通通信的人才队伍建设是有原则的，其核心四险就是“全员团队建设”，要做好企业的人才队伍建设，需要打造一支有战略眼光、能驾驭全局、为企业领航的决策队伍；一支思想活跃、专业知识深厚、观念创新、时刻追踪前沿信息技术的销售队伍，肯于攻克难关，把企业的事情当做自己的事情；一支好学上进、工深业精、刻苦努力的业务人员和一支兢兢业业、善于应用现代经营管理手段的管理队伍。', '其次，泰通通信在人才选择上，置“德”于首位，优秀的个人修养、沟通能力、管理理念是人才选拔的重要因素。在人才管理上，一方面，我们不断健全内部竞聘和外部招聘机制，将运营、研发、销售等重要岗位通过内外结合、公开竞争来选用人才，机会均等；另一方面，健立全民定期考核制度，以达到人岗匹配，知人善任。', null, '1', '1', '1', 'images/taitongjj69.jpg', 'images/taitongjj70.jpg', 'images/taitongjj71.jpg', '2018-06-02', '2', '1', null, null);
INSERT INTO `ac01` VALUES ('7', '啥的范德萨个的撒怪怪的非官方的', '要求学历：大专，工作年限5年，年龄：25-45，性别：男', '公司福利：五险、带薪年假、绩效奖金、生日福利、通讯补贴、餐饮补贴、交通补贴、差旅补贴、员工旅游、员工培训，包吃包住', '薪资待遇：3001-4000，工作要求：有5年以上通信线路实施工作经验，可长期驻外出差，吃苦耐劳，责任心强。根据工程管理要求对工程作业人员进行安全质量监督和指导，教育学习。', '0', '0', '0', 'images/taitongjj114.jpg', 'images/taitongjj115.jpg', 'images/taitongjj116.jpg', '2018-06-02', '2', '1', null, null);
INSERT INTO `ac01` VALUES ('9', '标题9', '段落1', '段落2', '段落3', '0', '0', '0', 'images/taitongjj120.jpg', 'images/taitongjj121.jpg', 'images/taitongjj122.jpg', '2018-06-14', '1', '0', '1', '骨科');
INSERT INTO `ac01` VALUES ('10', '标题10', '段落1', '段落2', '段落3', '0', '0', '0', 'images/taitongjj123.jpg', 'images/taitongjj124.jpg', 'images/taitongjj125.jpg', '2018-06-14', '1', '0', '1', '骨科');
INSERT INTO `ac01` VALUES ('13', '阿萨德刚梵蒂冈水电费光伏发电', '        我公司积极参与整个天网工程项目的筹划与建设，复制该项目的通信线路施工及通信设备的安装，工程覆盖南宁市各个城区的大街小巷。在整个项目中，各部门分工合作，团结互助，凝聚了极大的向心力，体现了团队的高素质。', '段落2', '段落3', '1', '1', '1', 'images/taitongjj132.jpg', 'images/taitongjj133.jpg', 'images/taitongjj134.jpg', '2018-06-14', '1', '1', '2', '神经外科');
INSERT INTO `ac01` VALUES ('14', '紧急呼叫法国红酒后根据梵蒂冈订货会', '工程总投资1800多万元，共施工1000多个点，涉及柳州市的各个城区和街道，从光缆敷设到前端点摄像机安装及试运行均由我告诉负责完成。现柳州市所有已经竣工投入使用的天网监控点共1800多个由我公司负责维护。', '段落2', '段落3', '1', '0', '0', 'images/taitongjj135.jpg', 'images/taitongjj136.jpg', 'images/taitongjj137.jpg', '2018-06-14', '1', '1', '2', '神经外科');
INSERT INTO `ac01` VALUES ('15', '标题15', '段落1', '段落2', '段落3', '0', '0', '0', 'images/taitongjj138.jpg', 'images/taitongjj139.jpg', 'images/taitongjj140.jpg', '2018-06-14', '1', '0', '2', '神经外科');
INSERT INTO `ac01` VALUES ('16', '标题16', '段落1', '段落2', '段落3', '0', '0', '0', 'images/taitongjj141.jpg', 'images/taitongjj142.jpg', 'images/taitongjj143.jpg', '2018-06-14', '1', '0', '2', '神经外科');
INSERT INTO `ac01` VALUES ('17', '标题17', '段落1', '段落2', '段落3', '0', '0', '0', 'images/taitongjj144.jpg', 'images/taitongjj145.jpg', 'images/taitongjj146.jpg', '2018-06-14', '1', '0', '2', '神经外科');
INSERT INTO `ac01` VALUES ('18', '标题18', '段落1', '段落2', '段落3', '0', '0', '0', 'images/taitongjj147.jpg', 'images/taitongjj148.jpg', 'images/taitongjj149.jpg', '2018-06-14', '1', '0', '2', '神经外科');
INSERT INTO `ac01` VALUES ('19', '标题19', '段落1', '段落2', '段落3', '0', '0', '0', 'images/taitongjj150.jpg', 'images/taitongjj151.jpg', 'images/taitongjj152.jpg', '2018-06-14', '1', '0', '2', '神经外科');
INSERT INTO `ac01` VALUES ('20', '标题20', '段落1', '段落2', '段落3', '0', '0', '0', 'images/taitongjj153.jpg', 'images/taitongjj154.jpg', 'images/taitongjj155.jpg', '2018-06-14', '1', '0', '3', '神经外科');
INSERT INTO `ac01` VALUES ('21', '和奇偶皮UI普熊皮', '中国电信股份有限公司柳州分公司，在我公司的努力下，成功完成城网新建，让该工程顺利完工', '本工程总投资335.62万元，覆盖1000余户', '段落3', '1', '1', '1', 'images/taitongjj156.jpg', 'images/taitongjj157.jpg', 'images/taitongjj158.jpg', '2018-06-14', '1', '1', '3', '神经外科');
INSERT INTO `ac01` VALUES ('22', '一哟我有过节费估计会u易于偶一', '中国电信股份有限公司梧州分公司，在我公司施工安排下，顺利完成光缆覆盖，覆盖1800余户，得到客户的一致好评', '段落2', '段落3', '1', '1', '1', 'images/taitongjj159.jpg', 'images/taitongjj160.jpg', 'images/taitongjj161.jpg', '2018-06-14', '1', '1', '3', '神经外科');
INSERT INTO `ac01` VALUES ('23', '标题23', '段落1', '段落2', '段落3', '0', '0', '0', 'images/taitongjj162.jpg', 'images/taitongjj163.jpg', 'images/taitongjj164.jpg', '2018-06-14', '1', '0', '3', '神经外科');
INSERT INTO `ac01` VALUES ('24', '标题24', '段落1', '段落2', '段落3', '0', '0', '0', 'images/taitongjj165.jpg', 'images/taitongjj166.jpg', 'images/taitongjj167.jpg', '2018-06-14', '1', '0', '3', '神经外科');
INSERT INTO `ac01` VALUES ('25', '标题25', '段落1', '段落2', '段落3', '0', '0', '0', 'images/taitongjj168.jpg', 'images/taitongjj169.jpg', 'images/taitongjj170.jpg', '2018-06-14', '1', '0', '3', '神经外科');
INSERT INTO `ac01` VALUES ('26', '标题26', '段落1', '段落2', '段落3', '0', '0', '0', 'images/taitongjj171.jpg', 'images/taitongjj172.jpg', 'images/taitongjj173.jpg', '2018-06-14', '1', '0', '3', '神经外科');
INSERT INTO `ac01` VALUES ('27', '标题27', '段落1', '段落2', '段落3', '0', '0', '0', 'images/taitongjj174.jpg', 'images/taitongjj175.jpg', 'images/taitongjj176.jpg', '2018-06-14', '1', '0', '4', '普外科');
INSERT INTO `ac01` VALUES ('28', '我我刚好几个结构化与玉玉语言个风风光光', '        柳州市建设投资发展有限公司建设投资，用于改善交通建设的便民工程', '本项目位于柳州市鱼峰区洛维路，总投资102.50万元，是柳州市政府改善交通、完善路网建设的便民工程', '段落3', '1', '1', '1', 'images/taitongjj177.jpg', 'images/taitongjj178.jpg', 'images/taitongjj179.jpg', '2018-06-14', '1', '1', '4', '普外科');
INSERT INTO `ac01` VALUES ('29', '和接口会有电饭锅梵蒂冈热腾腾', '        柳州市城市建设投资发展有限公司投资，建设南环路的通信线路，运用我公司良好的建设技术，为该项目提供良好的建设服务', '        本项目位于柳州市柳南区南环路，是柳州市为改善交通、完善路网建设的便民工程。', '段落3', '1', '1', '1', 'images/taitongjj180.jpg', 'images/taitongjj181.jpg', 'images/taitongjj182.jpg', '2018-06-14', '1', '1', '4', '普外科');
INSERT INTO `ac01` VALUES ('30', '标题30', '段落1', '段落2', '段落3', '0', '0', '0', 'images/taitongjj183.jpg', 'images/taitongjj184.jpg', 'images/taitongjj185.jpg', '2018-06-14', '1', '0', '4', '普外科');
INSERT INTO `ac01` VALUES ('31', '标题31', '段落1', '段落2', '段落3', '0', '0', '0', 'images/taitongjj186.jpg', 'images/taitongjj187.jpg', 'images/taitongjj188.jpg', '2018-06-14', '1', '0', '4', '普外科');
INSERT INTO `ac01` VALUES ('32', '标题32', '段落1', '段落2', '段落3', '0', '0', '0', 'images/taitongjj189.jpg', 'images/taitongjj190.jpg', 'images/taitongjj191.jpg', '2018-06-14', '1', '0', '4', '普外科');
INSERT INTO `ac01` VALUES ('33', '标题33', '段落1', '段落2', '段落3', '0', '0', '0', 'images/taitongjj192.jpg', 'images/taitongjj193.jpg', 'images/taitongjj194.jpg', '2018-06-14', '1', '0', '4', '普外科');
INSERT INTO `ac01` VALUES ('34', '标题34', '段落1', '段落2', '段落3', '0', '0', '0', 'images/taitongjj195.jpg', 'images/taitongjj196.jpg', 'images/taitongjj197.jpg', '2018-06-14', '1', '0', '4', '普外科');
INSERT INTO `ac01` VALUES ('35', '一u我个赶紧回家的鬼地方和咨询电话', '柳州市龙建投资发展有限责任公司', '本项目是柳州市推进城市社会养老服务体系建设的配套工程之一，该活动中心的室内综合布线及有限电视的安装由我公司承建。', '段落3', '1', '1', '1', 'images/taitongjj198.jpg', 'images/taitongjj199.jpg', 'images/taitongjj200.jpg', '2018-06-14', '1', '1', '5', '小儿科');
INSERT INTO `ac01` VALUES ('36', '一样发挂号费的的', '【建设单位】中国电信股份有限公司贵港市分公司\r\n【项目概况】本项目位于贵港市港北区，项目总投约480万元，本期工程覆盖1900多户。\r\n', '', '', '1', '1', '1', 'images/taitongjj201.jpg', 'images/taitongjj202.jpg', 'images/taitongjj203.jpg', '2018-06-14', '1', '1', '5', '小儿科');
INSERT INTO `ac01` VALUES ('37', '标题37', '段落1', '段落2', '段落3', '0', '0', '0', 'images/taitongjj204.jpg', 'images/taitongjj205.jpg', 'images/taitongjj206.jpg', '2018-06-14', '1', '0', '5', '小儿科');
INSERT INTO `ac01` VALUES ('38', '标题38', '段落1', '段落2', '段落3', '0', '0', '0', 'images/taitongjj207.jpg', 'images/taitongjj208.jpg', 'images/taitongjj209.jpg', '2018-06-14', '1', '0', '5', '小儿科');
INSERT INTO `ac01` VALUES ('39', '标题39', '段落1', '段落2', '段落3', '0', '0', '0', 'images/taitongjj210.jpg', 'images/taitongjj211.jpg', 'images/taitongjj212.jpg', '2018-06-14', '1', '0', '5', '小儿科');
INSERT INTO `ac01` VALUES ('40', '标题40', '段落1', '段落2', '段落3', '0', '0', '0', 'images/taitongjj213.jpg', 'images/taitongjj214.jpg', 'images/taitongjj215.jpg', '2018-06-14', '1', '0', '5', '小儿科');
INSERT INTO `ac01` VALUES ('41', '标题41', '段落1', '段落2', '段落3', '0', '0', '0', 'images/taitongjj216.jpg', 'images/taitongjj217.jpg', 'images/taitongjj218.jpg', '2018-06-14', '1', '0', '5', '小儿科');
INSERT INTO `ac01` VALUES ('45', '天通苑的的第三方士大夫身份', '中国铁塔股份有限公司百色市分公司，本项目施工地点位于百色市田东县的商业购物区，工程覆盖面积为9135平方米', '段落2', '段落3', '1', '1', '1', 'images/taitongjj228.jpg', 'images/taitongjj229.jpg', 'images/taitongjj230.jpg', '2018-06-14', '1', '0', '6', '呼吸内科');
INSERT INTO `ac01` VALUES ('46', '标题46', '段落1', '段落2', '段落3', '0', '0', '0', 'images/taitongjj231.jpg', 'images/taitongjj232.jpg', 'images/taitongjj233.jpg', '2018-06-14', '1', '0', '6', '呼吸内科');
INSERT INTO `ac01` VALUES ('47', '标题47', '段落1', '段落2', '段落3', '0', '0', '0', 'images/taitongjj234.jpg', 'images/taitongjj235.jpg', 'images/taitongjj236.jpg', '2018-06-14', '1', '0', '6', '呼吸内科');
INSERT INTO `ac01` VALUES ('48', '标题48', '段落1', '段落2', '段落3', '0', '0', '0', 'images/taitongjj237.jpg', 'images/taitongjj238.jpg', 'images/taitongjj239.jpg', '2018-06-14', '1', '0', '6', '呼吸内科');
INSERT INTO `ac01` VALUES ('50', '标题50', '段落1', '段落2', '段落3', '0', '0', '0', 'images/taitongjj243.jpg', 'images/taitongjj244.jpg', 'images/taitongjj245.jpg', '2018-06-14', '1', '0', '7', '耳鼻喉科');
INSERT INTO `ac01` VALUES ('51', '标题51', '段落1', '段落2', '段落3', '0', '0', '0', 'images/taitongjj246.jpg', 'images/taitongjj247.jpg', 'images/taitongjj248.jpg', '2018-06-14', '1', '0', '7', '耳鼻喉科');
INSERT INTO `ac01` VALUES ('52', '标题52', '段落1', '段落2', '段落3', '0', '0', '0', 'images/taitongjj249.jpg', 'images/taitongjj250.jpg', 'images/taitongjj251.jpg', '2018-06-14', '1', '0', '7', '耳鼻喉科');
INSERT INTO `ac01` VALUES ('53', 'UI体育ID发给很过分辅导费的大幅度', '中国铁塔股份有限公司百色市分公司，本项目施工地点位于百色市乐业县，我公司负责塔桅及机房土建的施工，新建6米抱杆4套', '段落2', '段落3', '1', '1', '1', 'images/taitongjj252.jpg', 'images/taitongjj253.jpg', 'images/taitongjj254.jpg', '2018-06-14', '1', '1', '7', '耳鼻喉科');
INSERT INTO `ac01` VALUES ('54', '标题54', '段落1', '段落2', '段落3', '0', '0', '0', 'images/taitongjj255.jpg', 'images/taitongjj256.jpg', 'images/taitongjj257.jpg', '2018-06-14', '1', '0', '7', '耳鼻喉科');
INSERT INTO `ac01` VALUES ('55', '标题55', '段落1', '段落2', '段落3', '0', '0', '0', 'images/taitongjj258.jpg', 'images/taitongjj259.jpg', 'images/taitongjj260.jpg', '2018-06-14', '1', '0', '7', '耳鼻喉科');
INSERT INTO `ac01` VALUES ('56', '标题56', '段落1', '段落2', '段落3', '0', '0', '0', 'images/taitongjj261.jpg', 'images/taitongjj262.jpg', 'images/taitongjj263.jpg', '2018-06-14', '1', '0', '8', '妇科');
INSERT INTO `ac01` VALUES ('57', '标题57', '段落1', '段落2', '段落3', '0', '0', '0', 'images/taitongjj264.jpg', 'images/taitongjj265.jpg', 'images/taitongjj266.jpg', '2018-06-14', '1', '0', '8', '妇科');
INSERT INTO `ac01` VALUES ('58', '标题58', '段落1', '段落2', '段落3', '0', '0', '0', 'images/taitongjj267.jpg', 'images/taitongjj268.jpg', 'images/taitongjj269.jpg', '2018-06-14', '1', '0', '8', '妇科');
INSERT INTO `ac01` VALUES ('59', '标题59', '段落1', '段落2', '段落3', '0', '0', '0', 'images/taitongjj270.jpg', 'images/taitongjj271.jpg', 'images/taitongjj272.jpg', '2018-06-14', '1', '0', '8', '妇科');
INSERT INTO `ac01` VALUES ('60', '还发图特有的鬼地方', '泰通公司凭借多年电信运行商经验，为广西广播电视信息股份有限公司各地市分公司提供专业的光带你信息网络一体化服务，内容包含有线电视设备安装、管线施工、维护、优化等。', '广电合作单位包括广西广播电视信息股份有限公司南宁分公司 、柳州分公司、桂林分公司、梧州分公司、钦州分公司、贺州分公司、来宾分公司、玉林分公司。', '段落3', '1', '1', '1', 'images/taitongjj273.jpg', 'images/taitongjj274.jpg', 'images/taitongjj275.jpg', '2018-06-14', '1', '1', '8', '妇科');
INSERT INTO `ac01` VALUES ('61', '标题61', '段落1', '段落2', '段落3', '0', '0', '0', 'images/taitongjj276.jpg', 'images/taitongjj277.jpg', 'images/taitongjj278.jpg', '2018-06-14', '1', '0', '8', '妇科');
INSERT INTO `ac01` VALUES ('62', '标题62', '段落1', '段落2', '段落3', '0', '0', '0', 'images/taitongjj279.jpg', 'images/taitongjj280.jpg', 'images/taitongjj281.jpg', '2018-06-14', '1', '0', '8', '妇科');
INSERT INTO `ac01` VALUES ('63', '标题63', '段落1', '段落2', '段落3', '0', '0', '0', 'images/taitongjj282.jpg', 'images/taitongjj283.jpg', 'images/taitongjj284.jpg', '2018-06-14', '1', '0', '9', '移动无线集成工程');
INSERT INTO `ac01` VALUES ('64', '标题64', '段落1', '段落2', '段落3', '0', '0', '0', 'images/taitongjj285.jpg', 'images/taitongjj286.jpg', 'images/taitongjj287.jpg', '2018-06-14', '1', '0', '9', '移动无线集成工程');
INSERT INTO `ac01` VALUES ('65', '河北移动2016-2018无线集成施工框架采购项目', '中国移动通信集团河北有限公司', '本项目施工地点位于河北省沧州市，工程总价4200万元，工程量规模为441000个点，施工内容包括主机（微蜂巢、小微基站、室内直放站等）、主干馈线、天线、部分有源设备（干线放大器）、耦合器、功分器、设备间光缆及电源插座等设备及其配套辅材的安装、调测、开通后优化测试集成服务等。', '段落3', '1', '1', '1', 'images/taitongjj288.jpg', 'images/taitongjj289.jpg', 'images/taitongjj290.jpg', '2018-06-14', '1', '1', '9', '移动无线集成工程');
INSERT INTO `ac01` VALUES ('66', '标题66', '段落1', '段落2', '段落3', '0', '0', '0', 'images/taitongjj291.jpg', 'images/taitongjj292.jpg', 'images/taitongjj293.jpg', '2018-06-14', '1', '0', '9', '移动无线集成工程');
INSERT INTO `ac01` VALUES ('67', '标题67', '段落1', '段落2', '段落3', '0', '0', '0', 'images/taitongjj294.jpg', 'images/taitongjj295.jpg', 'images/taitongjj296.jpg', '2018-06-14', '1', '0', '9', '移动无线集成工程');
INSERT INTO `ac01` VALUES ('68', '标题68', '段落1', '段落2', '段落3', '0', '0', '0', 'images/taitongjj297.jpg', 'images/taitongjj298.jpg', 'images/taitongjj299.jpg', '2018-06-14', '1', '0', '9', '移动无线集成工程');
INSERT INTO `ac01` VALUES ('69', '标题69', '段落1', '段落2', '段落3', '0', '0', '0', 'images/taitongjj300.jpg', 'images/taitongjj301.jpg', 'images/taitongjj302.jpg', '2018-06-14', '1', '0', '9', '移动无线集成工程');
INSERT INTO `ac01` VALUES ('70', 'cesces', 'sfsdfs', 'sdfsdf', 'sfsdf', null, null, null, 'images/taitongjj358.jpg', 'images/taitongjj359.jpg', 'images/taitongjj360.jpg', '2019-01-22', '1', null, '1', '骨科');
INSERT INTO `ac01` VALUES ('71', '张三', null, null, null, null, null, null, null, null, null, '2019-04-01', '1', null, '1', '骨科');
INSERT INTO `ac01` VALUES ('72', '张三', null, null, null, null, null, null, null, null, null, '2019-04-01', '1', null, '1', '骨科');
INSERT INTO `ac01` VALUES ('73', '李四', null, null, null, null, null, null, null, null, null, '2019-04-02', '1', null, '1', '骨科');
INSERT INTO `ac01` VALUES ('74', '张三', null, null, null, null, null, null, null, null, null, '2019-04-05', '1', null, '6', '呼吸内科');
INSERT INTO `ac01` VALUES ('75', '张三', null, null, null, null, null, null, null, null, null, '2019-04-06', '1', null, '2', '神经外科');
INSERT INTO `ac01` VALUES ('76', '张三', null, null, null, null, null, null, null, null, null, '2019-04-06', '1', null, '2', '神经外科');
INSERT INTO `ac01` VALUES ('77', '张三', null, null, null, null, null, null, null, null, null, '2019-04-06', '1', null, '2', '神经外科');
INSERT INTO `ac01` VALUES ('78', '张三', null, null, null, null, null, null, null, null, null, '2019-04-06', '1', null, '2', '神经外科');
INSERT INTO `ac01` VALUES ('79', '张三', null, null, null, null, null, null, null, null, null, '2019-04-06', '1', null, '2', '神经外科');

-- ----------------------------
-- Table structure for `ac02`
-- ----------------------------
DROP TABLE IF EXISTS `ac02`;
CREATE TABLE `ac02` (
  `aac201` int(11) NOT NULL AUTO_INCREMENT,
  `aac202` varchar(45) DEFAULT 'administrator' COMMENT '登录名',
  `aac203` varchar(45) DEFAULT NULL COMMENT '密码',
  PRIMARY KEY (`aac201`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户登录';

-- ----------------------------
-- Records of ac02
-- ----------------------------
INSERT INTO `ac02` VALUES ('1', 'administrator', 'b020e22q52q5qle5s0yl6s666b596sy2');

-- ----------------------------
-- Table structure for `ac03`
-- ----------------------------
DROP TABLE IF EXISTS `ac03`;
CREATE TABLE `ac03` (
  `aac301` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `aac302` varchar(50) DEFAULT NULL COMMENT '编号名称',
  `aac303` int(11) DEFAULT NULL COMMENT '是否显示',
  PRIMARY KEY (`aac301`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ac03
-- ----------------------------
INSERT INTO `ac03` VALUES ('1', '骨科', '1');
INSERT INTO `ac03` VALUES ('2', '神经外科', '1');
INSERT INTO `ac03` VALUES ('3', '泌尿科', '1');
INSERT INTO `ac03` VALUES ('4', '普外科', '1');
INSERT INTO `ac03` VALUES ('5', '小儿科', '1');
INSERT INTO `ac03` VALUES ('6', '呼吸内科', '1');
INSERT INTO `ac03` VALUES ('7', '耳鼻喉', '1');
INSERT INTO `ac03` VALUES ('8', '妇科', '1');
INSERT INTO `ac03` VALUES ('9', '内分泌科', '1');

-- ----------------------------
-- Table structure for `ac04`
-- ----------------------------
DROP TABLE IF EXISTS `ac04`;
CREATE TABLE `ac04` (
  `aac401` int(20) NOT NULL AUTO_INCREMENT,
  `aac402` varchar(20) NOT NULL COMMENT '账号',
  `aac403` varchar(20) NOT NULL COMMENT '密码',
  `aac404` varchar(20) NOT NULL COMMENT '姓名',
  `aac405` varchar(20) NOT NULL COMMENT '身份证',
  `aac406` varchar(20) NOT NULL COMMENT '手机号',
  `aac407` int(20) DEFAULT NULL COMMENT '用户级别',
  `aac408` varchar(20) DEFAULT NULL COMMENT '科室名',
  PRIMARY KEY (`aac401`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ac04
-- ----------------------------
INSERT INTO `ac04` VALUES ('1', 'zhangsan', '123456', '张三', '412113199903215647', '18180446704', '1', null);
INSERT INTO `ac04` VALUES ('2', 'lisi', '123456', '李四', '45230419981222406', '15293036066', '1', null);
INSERT INTO `ac04` VALUES ('4', 'qiucz', '123456', '丘传至', '412113199903215647', '18884545451', '2', null);
INSERT INTO `ac04` VALUES ('5', 'liangzj', '123456', '梁志军', '212113198903014657', '13260119530', '2', null);
INSERT INTO `ac04` VALUES ('6', 'caixh', '123456', '蔡晓红', '383903198503215634', '15877202699', '2', null);
INSERT INTO `ac04` VALUES ('7', 'linj', '123456', '林坚', '223761198305334618', '15511774834', '2', null);
INSERT INTO `ac04` VALUES ('8', 'zhuangjq', '123456', '庄捷秋', '312634199887282447', '13923749463', '2', null);
INSERT INTO `ac04` VALUES ('9', 'chenpb', '123456', '陈波蓓', '433113199913345625', '19984247359', '2', null);
INSERT INTO `ac04` VALUES ('10', 'lvjq', '123456', '吕杰强', '312313199988215663', '18189846763', '2', null);
INSERT INTO `ac04` VALUES ('11', 'wangl', '123456', '王栏', '432133199903515647', '13864546451', '1', null);
INSERT INTO `ac04` VALUES ('12', 'huangz', '123456', '黄真', '432133199903515647', '13864546451', '1', null);
INSERT INTO `ac04` VALUES ('13', 'mengq', '123456', '蒙球', '482133199405515647', '18581549459', '2', null);
INSERT INTO `ac04` VALUES ('14', 'jiangf', '123456', '姜枫', '432133199903515647', '13864546451', '1', null);
INSERT INTO `ac04` VALUES ('15', 'xiac', '123456', '夏才', '432133199903515647', '13864546451', '2', null);
INSERT INTO `ac04` VALUES ('16', 'wangfei', '123456', '王非', '439014199064124373', '15447545446', '2', null);

-- ----------------------------
-- Table structure for `ac05`
-- ----------------------------
DROP TABLE IF EXISTS `ac05`;
CREATE TABLE `ac05` (
  `aac501` int(20) NOT NULL AUTO_INCREMENT,
  `aac502` varchar(20) NOT NULL COMMENT '挂号人姓名',
  `aac503` varchar(20) NOT NULL COMMENT '挂号时间',
  `aac504` varchar(20) NOT NULL COMMENT '科室',
  `aac505` int(20) DEFAULT '0' COMMENT '是否就诊',
  `aac506` varchar(20) DEFAULT NULL COMMENT '医生姓名',
  PRIMARY KEY (`aac501`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ac05
-- ----------------------------
INSERT INTO `ac05` VALUES ('3', '李四', '2019-04-05', '呼吸内科', '1', '丘传至');
INSERT INTO `ac05` VALUES ('8', '张三', '2019-04-06', '神经外科', '1', '丘传至');

-- ----------------------------
-- Table structure for `ac06`
-- ----------------------------
DROP TABLE IF EXISTS `ac06`;
CREATE TABLE `ac06` (
  `aac601` int(20) NOT NULL AUTO_INCREMENT,
  `aac602` varchar(20) DEFAULT NULL COMMENT '聊天人姓名',
  `aac603` varchar(100) DEFAULT NULL COMMENT '聊天内容',
  `aac604` varchar(100) DEFAULT NULL COMMENT '日期',
  `aac605` int(20) DEFAULT NULL COMMENT '是否回复',
  `aac606` varchar(20) DEFAULT NULL COMMENT '医生名',
  PRIMARY KEY (`aac601`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ac06
-- ----------------------------
INSERT INTO `ac06` VALUES ('15', '张三', '咨询医生：【丘传至】我头疼', '2019-04-09', '0', null);
INSERT INTO `ac06` VALUES ('16', '张三', '咨询医生：【丘传至】你好丘医生，我头疼', '2019-04-09', '1', null);
INSERT INTO `ac06` VALUES ('17', '张三', '丘传至你好，我不头疼', '2019-04-09', '1', null);
INSERT INTO `ac06` VALUES ('18', '张三', '咨询医生：【丘传至】总头疼', '2019-04-09', '0', null);
INSERT INTO `ac06` VALUES ('19', '张三', '咨询医生：【丘传至】总头疼', '2019-04-09', '1', null);
INSERT INTO `ac06` VALUES ('20', '张三', '丘传至1111', '2019-04-09', '1', null);

-- ----------------------------
-- Table structure for `ac07`
-- ----------------------------
DROP TABLE IF EXISTS `ac07`;
CREATE TABLE `ac07` (
  `aac701` int(20) NOT NULL AUTO_INCREMENT COMMENT '拍班主键',
  `aac702` varchar(20) DEFAULT NULL COMMENT '姓名',
  PRIMARY KEY (`aac701`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ac07
-- ----------------------------
INSERT INTO `ac07` VALUES ('1', '丘传至');
INSERT INTO `ac07` VALUES ('2', '梁志军');
INSERT INTO `ac07` VALUES ('3', '蔡晓红');
INSERT INTO `ac07` VALUES ('4', '林坚');
INSERT INTO `ac07` VALUES ('5', '庄捷秋');
INSERT INTO `ac07` VALUES ('6', '陈波蓓');
INSERT INTO `ac07` VALUES ('7', '吕杰强');
INSERT INTO `ac07` VALUES ('8', '庄捷秋');
INSERT INTO `ac07` VALUES ('9', '林坚');
INSERT INTO `ac07` VALUES ('10', '丘传至');
INSERT INTO `ac07` VALUES ('11', '蔡晓红');
INSERT INTO `ac07` VALUES ('12', '吕杰强');
INSERT INTO `ac07` VALUES ('13', '梁志军');
INSERT INTO `ac07` VALUES ('14', '庄捷秋');
INSERT INTO `ac07` VALUES ('15', '吕杰强');
INSERT INTO `ac07` VALUES ('16', '梁志军');
INSERT INTO `ac07` VALUES ('17', '蔡晓红');
INSERT INTO `ac07` VALUES ('18', '梁志军');
INSERT INTO `ac07` VALUES ('19', '丘传至');
INSERT INTO `ac07` VALUES ('20', '林坚');
INSERT INTO `ac07` VALUES ('21', '陈波蓓');
INSERT INTO `ac07` VALUES ('22', '蔡晓红');
INSERT INTO `ac07` VALUES ('23', '吕杰强');
INSERT INTO `ac07` VALUES ('24', '庄捷秋');
INSERT INTO `ac07` VALUES ('25', '丘传至');
INSERT INTO `ac07` VALUES ('26', '林坚');
INSERT INTO `ac07` VALUES ('27', '丘传至');
INSERT INTO `ac07` VALUES ('28', '林坚');
INSERT INTO `ac07` VALUES ('29', '吕杰强');
INSERT INTO `ac07` VALUES ('30', '庄捷秋');
INSERT INTO `ac07` VALUES ('31', '蔡晓红');

-- ----------------------------
-- Table structure for `ac08`
-- ----------------------------
DROP TABLE IF EXISTS `ac08`;
CREATE TABLE `ac08` (
  `aac801` int(20) NOT NULL AUTO_INCREMENT,
  `aac802` varchar(80) DEFAULT NULL COMMENT '登录名',
  `aac803` varchar(80) DEFAULT NULL COMMENT '真实名',
  `aac804` varchar(80) DEFAULT NULL COMMENT '电话',
  `aac805` varchar(80) DEFAULT NULL COMMENT '身份证',
  `aac806` varchar(300) DEFAULT NULL COMMENT '头像',
  `aac807` varchar(300) DEFAULT NULL COMMENT '医疗专长',
  `aac808` int(20) DEFAULT NULL COMMENT '是否请假',
  `aac809` varchar(20) DEFAULT NULL COMMENT '所属科室',
  PRIMARY KEY (`aac801`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ac08
-- ----------------------------
INSERT INTO `ac08` VALUES ('1', 'qiucz', '丘传至', '18884545451', '412113199903215647', 'images/taitongjj13.jpg', '拥有大大小小各类手术经验是一个经验十分丰富的医生2', '1', '骨科');
INSERT INTO `ac08` VALUES ('5', 'liangzj', '梁志军', '13260119530', '212113198903014657', 'images/taitongjj360.jpg', '拥有大大小小各类手术经验是一个经验十分丰富的医生', '1', '神经外科');
INSERT INTO `ac08` VALUES ('6', 'caixh', '蔡晓红', '15877202699', '383903198503215634', 'images/taitongjj361.jpg', '拥有大大小小各类手术经验是一个经验十分丰富的医生', '1', '泌尿科');
INSERT INTO `ac08` VALUES ('7', 'linj', '林坚', '15511774834', '223761198305334618', 'images/taitongjj360.jpg', '拥有大大小小各类手术经验是一个经验十分丰富的医生', '1', '普外科');
INSERT INTO `ac08` VALUES ('8', 'zhuangjq', '庄捷秋', '13923749463', '312634199887282447', 'images/taitongjj360.jpg', '拥有大大小小各类手术经验是一个经验十分丰富的医生', '1', '小儿科');
INSERT INTO `ac08` VALUES ('9', 'chenpb', '陈波蓓', '19984247359', '433113199913345625', 'images/taitongjj360.jpg', '拥有大大小小各类手术经验是一个经验十分丰富的医生', '1', '耳鼻喉科');
INSERT INTO `ac08` VALUES ('10', 'lvjq', '吕杰强', '18189846763', '312313199988215663', 'images/taitongjj360.jpg', '拥有大大小小各类手术经验是一个经验十分丰富的医生', '1', null);
INSERT INTO `ac08` VALUES ('11', 'wangfei', '王非', '15447545446', '439014199064124373', 'images/taitongjj364.jpg', '擅长：儿碍疾病性如：鼾症、阻塞性睡眠呼吸暂停综合征(包括入睡时打呼噜、鼻塞、张口呼吸、呼吸用力、睡眠不安、多汗、遗尿等)、失眠（包括入睡困难、频繁觉醒和睡眠不足等）或白天嗜睡或多动注意力不集中、异态睡眠（夜惊、梦魇、梦游、梦话等）、婴儿昼夜颠倒、磨牙、发作性睡病等，及哮喘、过敏性鼻炎、慢性咳嗽、肺炎等呼吸系统疾病的诊治。', '1', '妇科');

-- ----------------------------
-- Table structure for `tt_address`
-- ----------------------------
DROP TABLE IF EXISTS `tt_address`;
CREATE TABLE `tt_address` (
  `add_id` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `add_name` varchar(50) DEFAULT NULL COMMENT '地址名称',
  `add_content` varchar(200) DEFAULT NULL COMMENT '具体地址',
  `add_phone_owner` varchar(50) DEFAULT NULL COMMENT '联系人名字',
  `add_phone_number` varchar(50) DEFAULT NULL COMMENT '电话号码',
  `add_email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`add_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tt_address
-- ----------------------------
INSERT INTO `tt_address` VALUES ('1', 'CAESER科技有限公司', '牛ICP备888888888号', null, null, 'caeser@mail.com');
INSERT INTO `tt_address` VALUES ('2', '国内总部', '北京市海淀区8-8号总部大厦888号（888888）', '服务热线', '0008-668888(FAX)', null);
INSERT INTO `tt_address` VALUES ('3', '国外总部', 'San Francisco-Green avenue188（23333）', '服务热线', '2431-3222333(FAX)', null);
INSERT INTO `tt_address` VALUES ('4', '俄罗斯分公司', 'Moscow the Kremlin', '二狗子', '189233331299', null);
INSERT INTO `tt_address` VALUES ('5', '英国分公司', 'London', '李柱子', '189244442444', null);
INSERT INTO `tt_address` VALUES ('6', '加拿大分公司', 'Canada', '瓜娃子', '181255552555', null);

-- ----------------------------
-- Table structure for `tt_imgurl`
-- ----------------------------
DROP TABLE IF EXISTS `tt_imgurl`;
CREATE TABLE `tt_imgurl` (
  `img_id` int(10) NOT NULL AUTO_INCREMENT,
  `img_url_name` varchar(200) DEFAULT NULL COMMENT 'url地址',
  PRIMARY KEY (`img_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tt_imgurl
-- ----------------------------
INSERT INTO `tt_imgurl` VALUES ('1', 'taitongjj364.jpg');
