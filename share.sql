/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50540
Source Host           : localhost:3306
Source Database       : share

Target Server Type    : MYSQL
Target Server Version : 50540
File Encoding         : 65001

Date: 2019-07-25 09:50:46
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for account
-- ----------------------------
DROP TABLE IF EXISTS `account`;
CREATE TABLE `account` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) DEFAULT NULL,
  `paypwd` varchar(20) DEFAULT NULL,
  `paymoney` double(10,2) DEFAULT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `userid` (`userid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of account
-- ----------------------------
INSERT INTO `account` VALUES ('1', '1', '666666', '10000.00', '2019-07-16 10:57:19');
INSERT INTO `account` VALUES ('2', '1', '55', '111.00', '2019-07-16 11:15:37');
INSERT INTO `account` VALUES ('3', '1', '2', '23.00', '2019-07-17 15:30:31');

-- ----------------------------
-- Table structure for address
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `consignee` varchar(20) DEFAULT NULL,
  `telephone` varchar(11) DEFAULT NULL,
  `postcard` varchar(20) DEFAULT NULL,
  `detailaddress` varchar(100) DEFAULT NULL,
  `provinceid` int(11) NOT NULL,
  `cityid` int(11) DEFAULT NULL,
  `streetid` int(11) DEFAULT NULL,
  `isdefault` varchar(20) DEFAULT '否' COMMENT '默认的为1',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `addprovince` (`provinceid`) USING BTREE,
  KEY `cityid` (`cityid`) USING BTREE,
  KEY `streetid` (`streetid`) USING BTREE,
  KEY `userid` (`userid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of address
-- ----------------------------
INSERT INTO `address` VALUES ('15', '1', '廖泽铭', '17679210786', '435400', '南昌大学青山湖校区', '1', '4', '4', '1');
INSERT INTO `address` VALUES ('19', '6', 'qwe', 'qwe', 'qe', 'qwe', '1', '1', '1', '1');
INSERT INTO `address` VALUES ('20', '8', '刘', '1233213', '311234', '南昌大学', '1', '1', '1', '1');

-- ----------------------------
-- Table structure for city
-- ----------------------------
DROP TABLE IF EXISTS `city`;
CREATE TABLE `city` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `provinceid` int(11) NOT NULL,
  `cname` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `addstreet` (`provinceid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of city
-- ----------------------------
INSERT INTO `city` VALUES ('1', '1', '上饶市');
INSERT INTO `city` VALUES ('2', '1', '赣州市');
INSERT INTO `city` VALUES ('3', '4', '厦门市');
INSERT INTO `city` VALUES ('4', '1', '南昌市');

-- ----------------------------
-- Table structure for collections
-- ----------------------------
DROP TABLE IF EXISTS `collections`;
CREATE TABLE `collections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) DEFAULT NULL,
  `projectid` int(11) DEFAULT NULL,
  `starttime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `fk_collection_users` (`userid`) USING BTREE,
  KEY `fk_collection_project` (`projectid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of collections
-- ----------------------------
INSERT INTO `collections` VALUES ('21', '8', '34', '2019-07-21 22:48:53');
INSERT INTO `collections` VALUES ('22', '1', '45', '2019-07-24 14:37:48');
INSERT INTO `collections` VALUES ('23', '1', '38', '2019-07-24 15:37:04');
INSERT INTO `collections` VALUES ('24', '1', '59', '2019-07-25 09:46:30');

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) DEFAULT NULL,
  `projectid` int(11) DEFAULT NULL,
  `content` varchar(300) DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  `starttime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `images` varchar(6000) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `fk_comment_users` (`userid`) USING BTREE,
  KEY `fk_comment_project` (`projectid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES ('14', '1', '41', '123123123', '普通众筹', '2019-07-20 23:39:38', '3e4cc7a5-722b-4dd9-8546-6b18d09fa969.jpg,');
INSERT INTO `comment` VALUES ('15', '1', '36', '好帅啊', '普通众筹', '2019-07-21 18:06:00', '3e4cc7a5-722b-4dd9-8546-6b18d09fa969.jpg,');
INSERT INTO `comment` VALUES ('16', '1', '50', '哈哈哈哈哈哈', '公益众筹', '2019-07-21 18:20:52', 'd760fca2-6630-49ca-867f-c6e59d51450b.jpg,');
INSERT INTO `comment` VALUES ('17', '1', '32', 'asdasdasd', '普通众筹', '2019-07-24 18:38:56', 'b5fb49d9-198e-4fcc-ae8e-878966a5914d.jpg,3d273068-9a8f-4b72-92d0-9f1d2cc8c68a.jpg,');
INSERT INTO `comment` VALUES ('18', '1', '34', '很好用啊', '普通众筹', '2019-07-24 18:47:33', 'f167eb8b-25a8-408f-90a2-bdfd8a3d4ca2.jpeg,b69462a5-dfe8-43ad-8904-6bf9b2fc578b.jpg,');
INSERT INTO `comment` VALUES ('19', '1', '32', '很好用啊 xxxxxxxxxx', '普通众筹', '2019-07-25 09:28:18', '4f184170-b77e-44cd-88e1-bdb0f3067356.jpg,5e9fbc7b-e1c3-4d65-b86a-2b3c96913c0d.jpg,');
INSERT INTO `comment` VALUES ('20', '1', '41', '非常以及特别的好', '普通众筹', '2019-07-25 09:44:25', 'ad3dc07f-1180-4492-bd13-4dbdca2109af.jpg,8bbf0643-296c-4da1-a027-da17544650a3.jpg,eb8c939f-4e3b-4c55-9b00-4814d9ec6825.jpg,');

-- ----------------------------
-- Table structure for kind
-- ----------------------------
DROP TABLE IF EXISTS `kind`;
CREATE TABLE `kind` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  `introduce` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of kind
-- ----------------------------
INSERT INTO `kind` VALUES ('1', '影音', '描述公益的一类众筹');
INSERT INTO `kind` VALUES ('2', '公益', '描述区块链的一类众筹');
INSERT INTO `kind` VALUES ('3', '书籍', '描述农业的一类众筹');
INSERT INTO `kind` VALUES ('4', '娱乐', '描述出版的一类众筹');
INSERT INTO `kind` VALUES ('5', '科技', '描述娱乐的一类众筹');
INSERT INTO `kind` VALUES ('6', '设计', '描述艺术的一类众筹');
INSERT INTO `kind` VALUES ('7', '农业', '描述农业的一类众筹');
INSERT INTO `kind` VALUES ('8', '动漫', '描述动漫的一类众筹');
INSERT INTO `kind` VALUES ('9', '游戏', '描述游戏的一类众筹');
INSERT INTO `kind` VALUES ('10', '其他', '其他好多类的众筹');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` varchar(32) NOT NULL,
  `userid` int(11) NOT NULL,
  `addressid` int(11) NOT NULL,
  `projectid` int(11) NOT NULL,
  `paytype` varchar(20) DEFAULT NULL,
  `paymoney` double(11,0) DEFAULT NULL,
  `ispay` varchar(20) DEFAULT NULL,
  `invitecode` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `orderuser` (`userid`) USING BTREE,
  KEY `orderaddress` (`addressid`) USING BTREE,
  KEY `orderproject` (`projectid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('201971921235785', '1', '15', '43', '1', '50', '0', '12332');
INSERT INTO `orders` VALUES ('2019719212534528', '1', '15', '45', '1', '10', '0', '');
INSERT INTO `orders` VALUES ('2019719212820632', '1', '15', '36', '1', '169', '0', '');
INSERT INTO `orders` VALUES ('20197192131268', '1', '15', '39', '1', '318', '1', '');
INSERT INTO `orders` VALUES ('2019719213237605', '1', '15', '32', '1', '200', '1', '');
INSERT INTO `orders` VALUES ('201971921364889', '1', '15', '33', '1', '50', '1', '');
INSERT INTO `orders` VALUES ('2019719213746253', '1', '15', '46', '1', '708', '1', '');
INSERT INTO `orders` VALUES ('2019719213846824', '1', '15', '46', '1', '708', '0', '');
INSERT INTO `orders` VALUES ('2019719213857906', '1', '15', '46', '1', '708', '0', '');
INSERT INTO `orders` VALUES ('2019719214044605', '1', '15', '46', '1', '708', '0', '');
INSERT INTO `orders` VALUES ('201971922257429', '1', '15', '34', '1', '110', '0', '');
INSERT INTO `orders` VALUES ('201971922261369', '1', '15', '34', '1', '110', '1', '');
INSERT INTO `orders` VALUES ('2019719223044963', '1', '15', '32', '1', '200', '1', '');
INSERT INTO `orders` VALUES ('2019719223123354', '1', '15', '42', '1', '49', '1', '');
INSERT INTO `orders` VALUES ('2019719223159547', '1', '15', '36', '1', '169', '1', '');
INSERT INTO `orders` VALUES ('201971922402146', '1', '15', '32', '1', '200', '1', '');
INSERT INTO `orders` VALUES ('2019719224642805', '1', '15', '32', '1', '200', '1', '');
INSERT INTO `orders` VALUES ('2019719225951573', '1', '15', '34', '1', '110', '1', '');
INSERT INTO `orders` VALUES ('201971922598528', '1', '15', '43', '1', '50', '1', '');
INSERT INTO `orders` VALUES ('2019719232721279', '1', '15', '33', '1', '50', '0', '');
INSERT INTO `orders` VALUES ('20197192332724', '1', '15', '36', '1', '169', '1', '');
INSERT INTO `orders` VALUES ('201972017130131', '1', '15', '38', '1', '299', '1', '');
INSERT INTO `orders` VALUES ('2019720171436912', '1', '15', '38', '1', '299', '1', '');
INSERT INTO `orders` VALUES ('2019720173625119', '1', '15', '46', '1', '708', '1', '');
INSERT INTO `orders` VALUES ('2019720174940549', '1', '15', '34', '1', '110', '1', '');
INSERT INTO `orders` VALUES ('2019720175456825', '1', '15', '41', '1', '1899', '1', '');
INSERT INTO `orders` VALUES ('2019720175834885', '1', '15', '36', '1', '169', '0', '');
INSERT INTO `orders` VALUES ('2019720181353669', '1', '15', '50', '1', '689', '1', '');
INSERT INTO `orders` VALUES ('20197211813831', '1', '15', '34', '1', '110', '1', '123456');
INSERT INTO `orders` VALUES ('2019724143756871', '1', '15', '45', '1', '10', '0', '');
INSERT INTO `orders` VALUES ('201972594650545', '1', '15', '42', '1', '49', '1', '');

-- ----------------------------
-- Table structure for project
-- ----------------------------
DROP TABLE IF EXISTS `project`;
CREATE TABLE `project` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) DEFAULT NULL,
  `typeid` int(11) DEFAULT NULL,
  `kindid` int(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `introduce` varchar(200) DEFAULT NULL,
  `detail` varchar(500) DEFAULT NULL,
  `detailvido` varchar(255) DEFAULT NULL,
  `rule` varchar(200) DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL,
  `imagelist` varchar(6000) DEFAULT NULL,
  `needmoney` double(10,2) DEFAULT NULL COMMENT '需要的总金额',
  `supmoney` double(10,2) DEFAULT NULL COMMENT '单价',
  `backmoney` double(10,2) DEFAULT NULL,
  `backcontent` varchar(100) DEFAULT NULL,
  `backimage` varchar(6000) CHARACTER SET utf8mb4 DEFAULT NULL,
  `backtime` int(11) DEFAULT NULL,
  `sendmoney` double(10,2) DEFAULT NULL,
  `statue` varchar(10) CHARACTER SET utf8mb4 DEFAULT '1' COMMENT '1.待众筹 2众筹中 3:完成众筹',
  `startdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `deadline` datetime DEFAULT NULL,
  `isable` char(2) DEFAULT '0' COMMENT '预览后是否确认提交',
  `isticket` char(2) DEFAULT '0' COMMENT '是否开发票',
  `isforbid` char(2) DEFAULT '2' COMMENT '审核   0：未通过   1：通过  2：待确认',
  `numsup` int(11) DEFAULT '0' COMMENT '支持人数',
  `numcol` int(11) DEFAULT '0',
  `backtype` varchar(50) DEFAULT NULL,
  `teambrief` varchar(255) DEFAULT NULL,
  `teamdetail` varchar(255) DEFAULT NULL,
  `teamtel` varchar(20) DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `fk_project_users` (`userid`) USING BTREE,
  KEY `fk_project_type` (`typeid`) USING BTREE,
  KEY `fk_project_kind` (`kindid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of project
-- ----------------------------
INSERT INTO `project` VALUES ('32', '1', '1', '1', '卫领0压力疗愈耳机', '压力山大的都市，你是如何舒缓压力的？全民焦虑时代，你是怎样愉悦身心的？卫领0压力疗愈耳机，以超保真音质+心灵疗愈内容，舒缓压力、缓解焦虑，带你的身心去山河湖海旅行，7月7日，卫领上市发布会+京东众筹启', '全民焦虑，已成为我国中青年群体的生活新常态。 我们每天努力工作，坚韧生活，但来自事业、家庭、健康、 社会的种种焦虑却如影随形、萦绕心间，才下眉头、又上心头。 但哲人曾说：世上只有一种英雄主义，就是你看', 'https://vod.300hu.com/4c1f7a6atransbjngwcloud1oss/181bf18e201392241334865921/v.f30.mp4', '众筹不是商品交易。支持者根据自己的判断选择、支持众筹项目，与发起人共同实现梦想并获得发起人承诺的回报，众筹存在一定风险。', '8b4c0ff7-d22b-4259-b5b1-d39469abb690.jpg', 'd77dfa69-eb86-4656-923e-bddd97c29459.jpg,3a330516-b31b-4a0e-af81-df6a57290872.jpg,5a41f06f-5acb-4703-8a02-ab1c371063c3.jpg,c9a83c15-f7f8-41f5-a3c0-66219fea855b.jpg,269f3fc3-60df-4b12-92e8-bf012a322eae.jpg,', '160435.00', '200.00', '988.00', '988元卫领0压力疗愈耳机', 'd77dfa69-eb86-4656-923e-bddd97c29459.jpg,3a330516-b31b-4a0e-af81-df6a57290872.jpg,5a41f06f-5acb-4703-8a02-ab1c371063c3.jpg,c9a83c15-f7f8-41f5-a3c0-66219fea855b.jpg,269f3fc3-60df-4b12-92e8-bf012a322eae.jpg,6fd5f982-9a46-4fd0-adde-576849e9b4df.jpg,', '30', '0.00', '1', '2019-07-14 12:57:56', '2019-07-30 00:00:00', '1', '0', '1', '100', '0', '1', '卫领官方旗舰店', 'Wimlim卫领为原创品牌，品牌致力于为广大消费者提供更高音质的听音产品，其产品线包含头戴式耳机、蓝牙耳机、迷你耳机、耳塞式耳机、播放器等，公司将在未来研发出更完善的产品，以满足客户的需求。我们将以技术为基础，以质量为核心，以诚信为经营之本，与广大客户携手共创美好的未来！', '0755-29595819');
INSERT INTO `project` VALUES ('33', '6', '1', '6', 'thinkplus便携支架', '无纸化办公的时代，意味着面对电脑的时间越来越长。8小时以上甚至更久的电脑工作时间已经成为常态，脖子长期保持僵硬状态，肩周炎、颈椎病等也随之而来。“工欲善其事，必先利其器”。', 'thinkpuls支架采用人体工学设计，可最大限度地契合人们在放松状态下的姿势，让我们告别埋头苦干，不做低头族。我们可以根据自己舒适的姿势，通过调节杆可实现多档位调节，8°角，双手打字更舒适;', '', '众筹不是商品交易。支持者根据自己的判断选择、支持众筹项目，与发起人共同实现梦想并获得发起人承诺的回报，众筹存在一定风险', '0c9e36ce-db05-4dbd-a83e-b979e9ddba77.jpg', '037b18b0-ed14-4135-85d0-8797c90582a7.jpg,5456b962-fd07-4215-a027-bd1fee372cd2.jpg,d9364bae-7a96-4c6b-93d2-f8377fccfece.jpg,3b7827d8-cb93-4d24-8363-5b442d53ab0e.jpg,f32e1233-8faf-452b-a74d-269380f30719.jpg,', '115800.00', '50.00', '188.00', 'thinkplus便携电脑支架,ThinkPad鼠标垫', '037b18b0-ed14-4135-85d0-8797c90582a7.jpg,5456b962-fd07-4215-a027-bd1fee372cd2.jpg,d9364bae-7a96-4c6b-93d2-f8377fccfece.jpg,3b7827d8-cb93-4d24-8363-5b442d53ab0e.jpg,f32e1233-8faf-452b-a74d-269380f30719.jpg,6d8ffc13-c09e-4be9-b2a8-d431b3049630.jpg,e56217fa-0f3e-49c3-a4d6-1d115dda1761.jpg,', '30', '0.00', '1', '2019-07-14 13:22:42', '2019-07-30 00:00:00', '1', '1', '1', '111', '0', '1', '我爱乔治2018', '从1996年开始，联想电脑销量一直位居中国国内市场首位；2005年，联想集团收购IBM PC（Personal computer，个人电脑）事业部；2013年，联想电脑销售量升居世界第一，成为全球最大的PC生产厂商。2014年10月，联想集团宣布了该公司已经完成对摩托罗拉移动的收购。', '13675167290');
INSERT INTO `project` VALUES ('34', '1', '1', '5', '咕咚跑步精灵，预防跑步损伤', '7月9日，咕咚跑步精灵正式上市发售，此款外置智能芯片早在年初的2019CES中已初次亮相并获得热烈关注，此次产品首发将登录京东众筹，进行为期28天的首发众筹活动', '一、9种跑姿识别，实时语音指导纠正。二、十一项运动数据全记录，随身“跑步顾问”助你跑出专业度。三、100+节专业跑步健身课程，金牌教练亲身示范，让跑步更科学不盲目', 'https://vod.300hu.com/4c1f7a6atransbjngwcloud1oss/4080f92a200764794570608641/v.f30.mp4', '众筹不是商品交易。支持者根据自己的判断选择、支持众筹项目，与发起人共同实现梦想并获得发起人承诺的回报，众筹存在一定风险。', '2251aeff-3690-48d8-a2c9-0b27d13eb857.jpg', '65f819d9-6d2a-43ac-9062-c600dab671a9.jpg,7c188c24-541b-4ead-b881-0543d4d55d8d.jpg,748a65b0-f2ac-4c3f-b28e-fce38be56cd7.jpg,b35594d2-07ff-4f9c-bfe2-6c46a3cc4067.jpg,2d6c66ca-4927-4de5-8d13-78cf1259292a.jpg,', '173586.00', '100.00', '149.00', '感谢您的支持！您将以149元众筹优惠价获得市场售价199元的咕咚跑步精灵一枚，赠咕咚专业马拉松跑步袜两双装（赠品颜色随机）', '65f819d9-6d2a-43ac-9062-c600dab671a9.jpg,7c188c24-541b-4ead-b881-0543d4d55d8d.jpg,748a65b0-f2ac-4c3f-b28e-fce38be56cd7.jpg,b35594d2-07ff-4f9c-bfe2-6c46a3cc4067.jpg,2d6c66ca-4927-4de5-8d13-78cf1259292a.jpg,9773851d-4f7e-4911-8441-b82f1f60d239.jpg,789c0a4e-8802-4bf7-98a6-99f9db3dad6d.jpg,', '30', '10.00', '1', '2019-07-14 13:33:55', '2019-07-31 00:00:00', '1', '1', '1', '522', '0', '1', 'codoon官方旗舰店', '咕咚是互联网社交的头部品牌，用户数量已超过1亿。咕咚以运动大数据为基础，攻克各种运动装备技术壁垒，以智能运动鞋服产品为核心，致力于打造“高度交互的科学训练、全新运动社交场景、个性化数据定制、智能升级成长体系”于一体的AI运动综合平台，让运动更安全、科学、有效、有趣！', '400-060-6090');
INSERT INTO `project` VALUES ('35', '6', '1', '6', '界道电子烟时尚与健康完美结合', '中研碧诚致力为“改善烟民健康”而生，为人们提供健康吸烟的解决方案，推出电子烟—TNB加热不燃烧产品。以健康为导向的产品定位，为消费者带来了全新的体验。', '中研碧诚致力为“改善烟民健康”而生，为人们提供健康吸烟的解决方案，推出电子烟—TNB加热不燃烧产品。以健康为导向的产品定位，为消费者带来了全新的体验。', 'null', '众筹不是商品交易。支持者根据自己的判断选择、支持众筹项目，与发起人共同实现梦想并获得发起人承诺的回报，众筹存在一定风险。', '38425d62-eed0-4f5c-9240-e4d9c54222ec.jpg', '1fdf3a30-6934-40a7-bb51-3fc5357d18ab.jpg,dd45d65f-c0f2-486d-8e36-1137edb57b73.jpg,e9042c0e-1762-4e10-ae79-11d55279df03.jpg,a4342e40-98fc-4b48-906a-a82ae00d965d.jpg,', '57040.00', '88.00', '600.00', '1.原装雾化烟弹 1个（仅烟弹，不含烟杆）口味有（醇香烟草、冰西瓜、 冰西柚、冰红酒味、橘子汽水）', '1fdf3a30-6934-40a7-bb51-3fc5357d18ab.jpg,dd45d65f-c0f2-486d-8e36-1137edb57b73.jpg,e9042c0e-1762-4e10-ae79-11d55279df03.jpg,a4342e40-98fc-4b48-906a-a82ae00d965d.jpg,679d449f-620c-4c79-9f04-4edea7b952fe.jpg,09c2410c-efb1-4137-a1c4-c10d23e5b520.jpg,0b1a391d-7118-4fe9-aa2f-e6b2ee7e7d3a.jpg,', '30', '11.00', '1', '2019-07-14 14:02:56', '2019-08-01 00:00:00', '1', '0', '2', '12', '0', '1', '猫耳朵科技', '界道品牌团队是一个年轻的团队，团队掌舵人毕业于上 海复旦大学，先后任职于本田、大众、广汽乘用车集团 等国内外知名企业高管职位，团队核心成员来自爱立信、 华为等高科技公司；他们有观点、有创意，共同承诺、 共同承担、共同分享，秉承着对健康、时尚、快乐的生 活方式的追求，创立界道电子烟团队，力争帮助中国亿 万烟民改善吸烟方式，从而降低传统香烟和二手烟对人 体的伤害。', '15818562802');
INSERT INTO `project` VALUES ('36', '6', '1', '1', '国际潮牌EASTPAK双肩包', '1952年，EASTPAK诞生于美国东海岸，最初是以制造美军箱包起家，奠定了产品的高标准和高品质，并以耐用的坚毅品质和非凡的背包设计著称。', '以经典军包汲取灵感，代表着追求军旅生活的追求与拼搏，继承品牌一贯的“简单就是好”设计理念，复刻经典双肩包型，注入时代气息，融合现代设计，实用与时尚兼备。', 'https://vod.300hu.com/4c1f7a6atransbjngwcloud1oss/3c5c0f40196273453018980353/v.f30.mp4', '众筹不是商品交易。支持者根据自己的判断选择、支持众筹项目，与发起人共同实现梦想并获得发起人承诺的回报，众筹存在一定风险。', '78d2e73f-b4b4-4977-9365-f098409f6405.jpg', '93f76119-972f-4282-b1ec-9c0827be0758.jpg,7e92badf-44b5-4ddc-95b9-baecfef6bb3e.jpg,ecdefd4e-20d3-4c9f-a3ba-3bf582d79f5e.jpg,84d3abe7-82b6-48f7-959e-67b3a221e291.jpg,733194e1-8a14-4f13-b4e5-0ae9a90cd2e8.jpg,', '63600.00', '159.00', '300.00', 'EASTPAK双肩包一个', '93f76119-972f-4282-b1ec-9c0827be0758.jpg,7e92badf-44b5-4ddc-95b9-baecfef6bb3e.jpg,ecdefd4e-20d3-4c9f-a3ba-3bf582d79f5e.jpg,84d3abe7-82b6-48f7-959e-67b3a221e291.jpg,733194e1-8a14-4f13-b4e5-0ae9a90cd2e8.jpg,6b2064de-590c-405f-8124-759fec06f57d.jpg,', '30', '10.00', '1', '2019-07-14 14:08:08', '2019-07-29 00:00:00', '1', '1', '1', '152', '0', '1', 'EASTPAK箱包', 'EASTPAK是世界著名的专业包囊及器材品牌，于1952年诞生于美国东海岸。最初是以制造美军箱包起家，奠定了产品的高标准和高品质，并以耐用的坚毅品质和非凡的背包设计著称。', '020-34215660');
INSERT INTO `project` VALUES ('37', '6', '1', '1', '《筷礼食器》高端红木筷子餐具', '筷子作为中华文明的象征，自古以来就是颇受欢迎的“国礼”之一。虽然看上去并不那么“贵重”，却凝聚着国人“珍贵”的诚意。', '筷箸一双成器，代表着平等合作、包容互鉴、互利共赢的“箸精神”，与合作、开放、共赢的“丝路精神”深度契合。此外，筷子还传递着协作共赢、同甘共苦、诚直和睦、快乐平安、幸福圆满的美好祝愿。', '', '众筹不是商品交易。支持者根据自己的判断选择、支持众筹项目，与发起人共同实现梦想并获得发起人承诺的回报，众筹存在一定风险。', 'c5245b38-7c4f-4bd5-8fcc-daea9af94389.jpg', '83da1a92-af51-4c71-81cd-bbda7812d1cb.jpg,ef5d98e4-502c-468c-a766-dc3443841fcf.jpg,a085a7c2-74c5-4db8-a618-e9c0af3329a4.jpg,9e6a2a2b-ac86-4ecd-b8c5-462c707c17d2.jpg,3604b7dd-5be9-4d67-9367-1d9923e7e5f7.jpg,', '1818.00', '68.00', '100.00', '便当伴侣 实木便当盒+和风4件套*1套', '83da1a92-af51-4c71-81cd-bbda7812d1cb.jpg,ef5d98e4-502c-468c-a766-dc3443841fcf.jpg,a085a7c2-74c5-4db8-a618-e9c0af3329a4.jpg,9e6a2a2b-ac86-4ecd-b8c5-462c707c17d2.jpg,3604b7dd-5be9-4d67-9367-1d9923e7e5f7.jpg,392adeea-b6ce-4fc7-8911-8e2f5775b91b.jpg,7cd3287e-6141-499a-b497-81e0dba309fe.jpg,', '30', '6.00', '1', '2019-07-14 14:15:34', '2019-07-31 00:00:00', '1', '1', '0', '122', '0', '1', '珍式家居-方珍', '珍式家居从事红木筷子定制产品，一个姑娘返乡创业，妇女带头创业领头人，带动贫困妇女就业创业，让家庭收入增收，让留守妇女不用出门也可以实现工资收入。', '18671075752');
INSERT INTO `project` VALUES ('38', '6', '1', '1', '【故宫文创美物】皇室合环项链', '孝贤皇后年仅37岁就病死于东巡回京途中，乾隆深为哀恸，特命人打造了这只蚩尤环，挂在腰间，以示思念。爱之深，思之切', '合环项链创意灵感来源于故宫博物院藏“白玉蚩尤环”。此款藏品原件构思精巧，工艺精湛，合而为一，分则为二，显示了古代工匠的非凡技艺。', 'https://vod.300hu.com/4c1f7a6atransbjngwcloud1oss/5c3f48ff190848412638834689/v.f30.mp4', '众筹不是商品交易。支持者根据自己的判断选择、支持众筹项目，与发起人共同实现梦想并获得发起人承诺的回报，众筹存在一定风险。', '3b6779ae-794d-4307-b7a8-b34c133af735.jpg', '5b96f756-5ae4-4172-8ae3-ed1927bc0097.jpg,c4dc8aa4-a230-481e-9c15-4176375e7843.jpg,560dc706-775a-4fa2-a0dc-cb7319ca2383.jpg,d03238a5-79ee-4daa-a0cc-c2b736d8cea0.jpg,fbf2a431-1a69-4f9d-983c-ee7b42b1808a.jpg,', '51724.00', '299.00', '349.00', '精美礼盒一份', '5b96f756-5ae4-4172-8ae3-ed1927bc0097.jpg,c4dc8aa4-a230-481e-9c15-4176375e7843.jpg,560dc706-775a-4fa2-a0dc-cb7319ca2383.jpg,d03238a5-79ee-4daa-a0cc-c2b736d8cea0.jpg,fbf2a431-1a69-4f9d-983c-ee7b42b1808a.jpg,a0b7c2a3-bdf5-4615-92f0-8903210ad423.jpg,', '30', '0.00', '1', '2019-07-14 14:21:04', '2019-08-14 00:00:00', '1', '0', '1', '2012', '0', '1', '溯芳斋奉旨造物', '我们核心团队都毕业于各大美术学院，艺术家的梦从未远离，创作一件作品时候的用心与雕琢，正契合了备受推崇的「工匠精神」，而多年的品牌推广经验又为产品的定位与宣传做了精准判断，最后通过无所不在的互联网把以上这些特质整合到一起，使我们成为了：拥有「艺术审美」+「工匠精神」+「品牌思维」+「互联网+」的文创梦之队。', '15280761619');
INSERT INTO `project` VALUES ('39', '6', '1', '9', '健康养生 桑葚美酒 六月紫', '我们以优质桑葚为主要原料，破碎之后，经过第一次5天发酵；经过分离之后，进行第二次10天发酵，进行二次分离，经过两次低温发酵后存放酒罐6个月。', '优质珍贵的桑葚酒酿制而成每一道工序我都是用心在做，做良心产品，产品做好了，才有信心卖出去，放心地交到消费者手中，酒卖的多了就能带动当地贫困农户增产增收，给乡亲们一个交代，给自己一个交代。', 'https://vod.300hu.com/4c1f7a6atransbjngwcloud1oss/4be9338b193674269770194945/v.f30.mp4', '众筹不是商品交易。支持者根据自己的判断选择、支持众筹项目，与发起人共同实现梦想并获得发起人承诺的回报，众筹存在一定风险。', '239a9702-2f59-42c2-b05c-f8b57fe5017a.jpg', '2c1bc010-5d7d-47d0-a879-feb3a6a0a930.jpg,70ff47a5-ad74-4e06-9af1-c308bdd04800.jpg,53ade8b6-6284-4b98-b161-6538ab21f0d7.jpg,', '76635.00', '298.00', '699.00', '桑葚酒', '2c1bc010-5d7d-47d0-a879-feb3a6a0a930.jpg,70ff47a5-ad74-4e06-9af1-c308bdd04800.jpg,53ade8b6-6284-4b98-b161-6538ab21f0d7.jpg,08d50135-ec06-4f3f-b078-723db59a6bd7.jpg,9cbbe040-24ff-4e0b-9efb-f9b057f8cb67.jpg,2c298502-d045-4ad8-8795-aa42088d2488.jpg,', '30', '20.00', '3', '2019-07-14 14:25:00', '2019-07-27 00:00:00', '1', '1', '1', '20', '0', '1', '一颗桑树', '一个热爱家乡的团队，在国家扶贫政策的支持下，与当地农户合作签订保底收购协议，并与陕药集团达成扶贫合作伙伴，利用现代生物工程技术，经低温发酵酿制而成珍贵原汁桑葚酒，桑茶等以“一棵桑树”为代表的系列产品，并致力于把扶贫的优质成果呈现给大家。', '18514820619');
INSERT INTO `project` VALUES ('40', '6', '1', '6', '莎士比亚LED隐形风扇吊灯', '市场上吊扇灯可分为2大类：有扇叶吊扇灯、隐形吊扇灯。其中 隐形吊扇灯是普通吊扇灯的升级版。它的扇叶是可以伸缩的，平 时不用的时候扇叶隐藏在灯的上方，看起来就是一盏LED灯，美 观整洁。', '创造出比传统隐形吊扇更为实用的设计。就是把一体 式转动盘变为多个转动座，按个人喜好制定叶片的数量。从而打 破了传统隐形吊扇灯的固定结构，外观看上去更简约时尚。', '', '众筹不是商品交易。支持者根据自己的判断选择、支持众筹项目，与发起人共同实现梦想并获得发起人承诺的回报，众筹存在一定风险。', '3c1739b0-ee89-4a47-baf4-3bf73c67f234.jpg', '85e996b4-1d6b-48e0-842c-3584d71cbe87.jpg,0b0fc84b-2aa6-43c5-830a-6232ca2ad94c.jpg,d63ae366-de41-428c-ba6d-60660f4e52b6.jpg,61d4b269-d092-4ce9-bd9e-49a80e474591.gif,531be33f-fd6c-496b-acef-9445978d0509.jpg,', '41800.00', '536.00', '999.00', '莎士比亚隐形吊扇灯*1套', '85e996b4-1d6b-48e0-842c-3584d71cbe87.jpg,0b0fc84b-2aa6-43c5-830a-6232ca2ad94c.jpg,d63ae366-de41-428c-ba6d-60660f4e52b6.jpg,61d4b269-d092-4ce9-bd9e-49a80e474591.gif,531be33f-fd6c-496b-acef-9445978d0509.jpg,b45771ad-f247-4bc5-bad0-dd5b4c4356b3.jpg,918ad101-aaf0-4af8-a16b-f17bfc95986d.jpg,', '30', '31.00', '3', '2019-07-14 14:30:12', '2019-07-31 00:00:00', '1', '0', '0', '200', '0', '1', 'jd_史考特的23事', '中合电机的母公司 溪泉电器有限公司创立于1949年,距今已有60余年历史,是台湾第一家成功出口美国的装饰吊扇制造厂。作为装饰吊扇业界中,早期就已外销到世界各国的先进工厂之一,中合电机对于质量的坚持,格外严格,但是这种几近严苛的质量要求,却是中合电机至今屹立不摇的最主要精神。', '18025655750');
INSERT INTO `project` VALUES ('41', '1', '1', '5', '自己洗拖布的机器人', '我们研发了哇力N1拖地机器人，在强力大脑 运算基础上（激光导航、智能规划）新增具有自动清洁拖布的集 扫、吸、拖三种功能于一身的全自动地面清洁机器人', '将增压拖 地与自动清洗拖布的核心技术融入扫地机中，真正解决消费者的 拖地难，洗拖布更难的问题，让拖地更轻松，更智能！', 'https://vod.300hu.com/4c1f7a6atransbjngwcloud1oss/47b804d4196926552314269697/v.f30.mp4', '众筹不是商品交易。支持者根据自己的判断选择、支持众筹项目，与发起人共同实现梦想并获得发起人承诺的回报，众筹存在一定风险。', '8eb6efd5-5af9-4333-9fd5-f462d3169a2a.gif', 'd0797dff-dc6f-47e1-ba2d-5badcc0f1346.jpg,d9a2c9e6-a127-4dc2-a930-6f73f24c7faf.jpg,072c37cf-798f-400e-9978-fee88ddb5b61.jpg,769e5543-440b-42ed-a80a-a37edb2d7e28.jpg,4fd20548-98ee-4dee-8866-ba1c52414625.jpg,', '731751.00', '1899.00', '888.00', 'Venii机器人N1*1、一次性尘袋*10\r\n拖布*1、边刷*1、一次性尘袋*10、非一次性尘袋*1、滚刷*1\r\n云台*1、拖布*1、边刷*1、一次性尘袋*10、非一次性尘袋*1、滚刷*1', 'd0797dff-dc6f-47e1-ba2d-5badcc0f1346.jpg,d9a2c9e6-a127-4dc2-a930-6f73f24c7faf.jpg,072c37cf-798f-400e-9978-fee88ddb5b61.jpg,769e5543-440b-42ed-a80a-a37edb2d7e28.jpg,4fd20548-98ee-4dee-8866-ba1c52414625.jpg,b462a00e-b1a1-4e79-90d6-f1a6df240e7b.jpg,887f3709-2445-4d18-9fed-3aecb1bd0f60.jpg,3fd62553-bc92-4e1b-b43b-d7b4d7efbe7e.jpg,', '30', '0.00', '2', '2019-07-14 14:36:41', '2019-07-29 00:00:00', '1', '0', '1', '201', '0', '1', 'Venii机器人', '成都家有为力机器人技术有限公司（Veniibot）坐落于中国（四川）自由贸易试验区成都市高新区软件园，是一家专门研发人工智能和机器人技术的高技术企业，扫地机拖布自清洁技术开创者，为行业客户提供服务机器人整体解决方案和开发服务。已研发出全球首款自己洗拖布的扫地机器人。', '400-888-4616');
INSERT INTO `project` VALUES ('42', '7', '0', '2', '“爱你就是一辈子”', '我们承诺将您的爱心落到实处 确保爰心狗粮足量捐赠 所有物资发放将在漫茏和宠诺公益的微 信公众号、微博平台及时公示； ', '你可以是流浪动物救助基地，也可以是群护点的 照看人.请填写表 格说出你和它的暖心故事，也许收到礼物的就是 你！', 'https://jdvodoss.jcloudcache.com/vodtransgzp1251412368/9031868223129246839/v.f30.mp4', '众筹不是商品交易。支持者根据自己的判断选择、支持众筹项目，与发起人共同实现梦想并获得发起人承诺的回报，众筹存在一定风险。', '6fa8126c-447e-4baa-9cd8-ba5a34e88b85.jpg', '94dededd-5480-4f54-aab2-034e1a301e4b.jpg,35736f82-763b-4ac1-bc7e-f599132f391c.jpg,22ff146e-6a0b-460a-8f9d-a39c01d7aac1.jpg,5d846228-fca2-4e46-8a7b-f1a0116e159b.jpg,f883b064-fefe-49d6-bd26-1f80d38886b9.jpg,', '106776.00', '49.00', '0.00', '犬粮零食礼包1份', '94dededd-5480-4f54-aab2-034e1a301e4b.jpg,35736f82-763b-4ac1-bc7e-f599132f391c.jpg,22ff146e-6a0b-460a-8f9d-a39c01d7aac1.jpg,5d846228-fca2-4e46-8a7b-f1a0116e159b.jpg,f883b064-fefe-49d6-bd26-1f80d38886b9.jpg,421deb09-2d9e-47e5-a27a-7c479ffca525.jpg,ceeef3d3-c2ae-45fb-a074-be6cd67b0b26.jpg,', '30', '0.00', '2', '2019-07-14 14:49:30', '2019-07-24 00:00:00', '1', '0', '1', '121', '0', '0', '漫宠相伴', '漫宠是研究和传播科学养宠知识、推广文明养宠理念、提供安全放心宠物用品的公司，由漫行文化（刀刀狗）和耐威克合资成立。漫宠将以刀刀狗的文化内涵“陪伴”为核心理念，通过对宠物行为心理的分析，提供不同阶段的养宠知识。我们不单从养宠者的视角来感受，也从宠物的角度来思考。漫宠致力提供最专业的养宠知识，打造“人宠共享”的服务的平台。', '021-66058175');
INSERT INTO `project` VALUES ('43', '7', '0', '1', '《老无所依》', '《如果有一天我老无所依》是中国首部以孝道为主题的题材电影，《如果有一天我老无所依》目前正在筹拍当中。', '电影《老无所依》由东方明星谷影视和大百姓时代传媒联合出品，由中国著名学者钟情担当总制片人，台湾重量级电影人侯孝贤监制，国内知名导演刘静担纲总导演。作为一部以传递孝道文化为出发点的电影大片', '', '众筹不是商品交易。支持者根据自己的判断选择、支持众筹项目，与发起人共同实现梦想并获得发起人承诺的回报，众筹存在一定风险。', '5aa7d6f6-3a02-4def-b3a8-30d9d17eadd4.jpg', '72dbd4a2-7423-4a06-92b3-8ab72c797955.jpg,ab6e1e26-db66-4e30-a424-0cf96ed874b3.jpg,ec831cab-6f8d-471b-9ec7-94491f626a9f.jpg,', '55100.00', '50.00', '0.00', '1.电子版感谢信。 2.电影《老无所依》珍藏版T恤一套（请备注尺码，若无备注，则默认M码），珍藏版水杯一个，并附带导演和演员签名。 3.电影《老无所依》不公开的花絮剪辑DVD一张。', '72dbd4a2-7423-4a06-92b3-8ab72c797955.jpg,ab6e1e26-db66-4e30-a424-0cf96ed874b3.jpg,ec831cab-6f8d-471b-9ec7-94491f626a9f.jpg,66c60a95-936a-4414-9533-920aa358314e.jpg,eac1eeac-1549-4ec0-ba7a-d2f5e5550a88.jpg,74c77fed-de56-4e70-ba55-154831336a31.jpg,', '30', '0.00', '3', '2019-07-14 14:54:34', '2019-07-18 00:00:00', '1', '0', '1', '54', '0', '0', '花果山娱乐', '剧组成员由导演：刘静（中国微电影产业同盟会会长），策划：周国强（中国微电影产业同盟会监事长），编剧：张飞。 支持团体有：福州猴子哥哥网络科技有限公司，深圳市乐享生活娱乐传媒有限公司，深圳大百姓时代文化传媒有限公司，花果山影视培训基地，中国微电影产业同盟会，国家老龄委，养老促进会等公司或机构。', '0000-1111');
INSERT INTO `project` VALUES ('44', '1', '0', '2', '救助流浪猫行动', '每天，城市中的流浪猫数量日益增多，也有越来越多的猫咪在流浪中死亡，拯救流浪猫，需要大家的力量', '城市流浪动物公益组织，成立于2011年9月，提倡一个全新的科学流浪动物保护理念；提供一个温暖有爱的流浪动物救助者交流互动平台。', 'https://jdvodoss.jcloudcache.com/vodtransgzp1251412368/9031868223034526579/f0.f30.mp4', '众筹不是商品交易。支持者根据自己的判断选择、支持众筹项目，与发起人共同实现梦想并获得发起人承诺的回报，众筹存在一定风险。', '334efac3-1bf7-4f57-a7cc-ed044cf503d3.jpg', 'f7fa2f39-29c5-45f2-ad4b-38b21c2e0b56.jpg,ceffb6ee-b6fa-4df5-8f84-b2bc2f9ef048.jpg,4251f365-374e-4ca3-bf41-dd0517e4a937.jpg,47d68ac5-974e-4d9d-b5b2-421b06df2ecd.jpg,1fc38c69-5d60-46db-bdbc-88fddd551cf2.jpg,', '39053.00', '39.00', '0.00', '可获得猫薄荷味萌爪呵护手霜 +猫薄荷种子+樱桃倾心修颜乳试用装+专属爱心感谢卡', 'f7fa2f39-29c5-45f2-ad4b-38b21c2e0b56.jpg,ceffb6ee-b6fa-4df5-8f84-b2bc2f9ef048.jpg,4251f365-374e-4ca3-bf41-dd0517e4a937.jpg,47d68ac5-974e-4d9d-b5b2-421b06df2ecd.jpg,1fc38c69-5d60-46db-bdbc-88fddd551cf2.jpg,f3cc8fbc-f7ed-4042-be5f-029f877984a5.jpg,a094d8ca-7e1e-46d3-ad1b-75da73235dc2.jpg,fd524116-bfe2-4ca5-a859-f70e05f4be23.jpg,', '30', '10.00', '3', '2019-07-14 15:00:22', '2019-07-31 00:00:00', '1', '0', '0', '11', '0', '1', 'JuicyTango狂想曲', 'JuicyTango觉醒甜果是相宜本草推出的天然护理品牌，选取天然成分，实证温和有效。为肌肤注入满满活力，开启轻盈雀跃的护肤体验。', '021-61839101');
INSERT INTO `project` VALUES ('45', '7', '0', '3', '筹建最高公益图书馆', '有一群孩子，生活在平均海拔5300多米的高寒地带，这里冬季长达9个月，孩子们学习条件艰苦，但他们从未停止', 'I DO基金组织发起“筑梦行动”，目的是建立世界上海拔最高的儿童公益图书馆，让阅读为孩子们的梦想插上翅膀。', 'https://jdvodoss.jcloudcache.com/vodtransgzp1251412368/9031868223015646692/f0.f30.mp4', '众筹不是商品交易。支持者根据自己的判断选择、支持众筹项目，与发起人共同实现梦想并获得发起人承诺的回报，众筹存在一定风险。', '8055f0c2-92b1-4287-b889-426aadf7b173.jpg', '168e6af2-0d06-41bf-acab-92db0231f83a.jpg,2bf709d6-3999-4e36-94d4-d9c89d0f0f4f.jpg,76366c35-8aad-4f58-9454-87535aef6a80.jpg,4e4482bb-f0d0-4e89-ac26-68a8ed57d70b.jpg,7a2f00dc-3108-4298-8f41-a41fd941ef76.jpg,', '48244.00', '10.00', '0.00', 'I Do基金电子版感谢卡，电子捐赠证书（请备注您的邮箱）', '168e6af2-0d06-41bf-acab-92db0231f83a.jpg,2bf709d6-3999-4e36-94d4-d9c89d0f0f4f.jpg,76366c35-8aad-4f58-9454-87535aef6a80.jpg,4e4482bb-f0d0-4e89-ac26-68a8ed57d70b.jpg,7a2f00dc-3108-4298-8f41-a41fd941ef76.jpg,f6ebd064-1dda-4263-9fc1-38d368eea88a.jpg,', '30', '0.00', '3', '2019-07-14 15:05:19', '2019-07-27 00:00:00', '1', '0', '1', '45', '0', '0', '中华慈善总会IDO基金', '中华慈善总会成立于1994年，是经中国政府批准依法注册登记，由热心慈善事业的公民、法人及其他社会组织志愿参加的全国性非营利公益社会团体，目前在全国拥有361个会员单位。', '0000-1111');
INSERT INTO `project` VALUES ('46', '1', '0', '1', '老兵摄影集公益众筹', '著名纪录片导演蒋能杰的抗战老兵系列纪录片之一，该片不只关注抗战老兵，还深刻探讨日益严峻的养老问题', '该片于2012年启动拍摄，近五年来数十次前往拍摄记录。遗憾由于经费问题迟迟没有完成后期制作，希望通过众筹完成影片。', 'https://jdvodoss.jcloudcache.com/vodtransgzp1251412368/9031868223098821885/v.f30.mp4', '众筹不是商品交易。支持者根据自己的判断选择、支持众筹项目，与发起人共同实现梦想并获得发起人承诺的回报，众筹存在一定风险。', '4a428fd9-b51b-48e5-b13e-9e38d385502e.jpg', 'e9f7429c-051a-4f6e-b416-4521211bfc9e.jpg,3a44e54c-3af6-440d-b75e-c3f5d3e3b067.jpg,', '40850.00', '688.00', '0.00', '送抗战老兵纪录片《最后的心愿》光碟一张，附摄影师本人签名；摄影师签名《中国抗战老兵》摄影巡展海报一张；送《日本降书》1:1影印本一份', 'e9f7429c-051a-4f6e-b416-4521211bfc9e.jpg,3a44e54c-3af6-440d-b75e-c3f5d3e3b067.jpg,e0710a56-80fe-4914-8a92-c6a7950fac50.jpg,3a3639fa-13dd-47b1-8882-c561da863f09.jpg,c6c060e2-a69c-4a32-85d9-5991d9252cfb.jpg,', '30', '20.00', '3', '2019-07-14 15:13:46', '2019-07-31 00:00:00', '1', '0', '1', '54', '0', '1', '蒋晖', '关爱抗战老兵志愿者、摄影师蒋晖，从09开始拍摄抗战老兵题材，广西、湖南、香港、缅甸…… 6年间我用拍下照片敲打着人们的瞳孔。从2011年开始参加平遥国际影展、大理国际影展、连州国际影展等多个影展，并举办个人影展，通过照片倡导关爱抗战老兵。2013年《被遗忘的抗战面孔》在网易专题中点击量过百万。', '0000-1111');
INSERT INTO `project` VALUES ('47', '7', '0', '1', '羽泉的礼物-艾洛维激光电视', '中国SOS儿童村组织携手医诺千金公益基金，发起此项公益活动，帮助改善孩子生活', '618临近，全民年中购物狂欢的气氛日渐浓郁，为了获得广大消费者青睐，各大企业紧锣密鼓的推出各类营销活动。在这之中，京东众筹携手知名艺人“羽泉”、医诺千金公益基金共同发起“羽泉的礼物”之京东众筹618', '', '众筹不是商品交易。支持者根据自己的判断选择、支持众筹项目，与发起人共同实现梦想并获得发起人承诺的回报，众筹存在一定风险。', '52cde7ae-05c2-4cc3-9d08-4101aab06f68.jpg', 'a6667c9d-cccd-44f9-8e51-02e57116be29.jpg,a776117e-8cdb-4727-af27-00a5a699b52b.jpg,88a373bf-b91b-4dec-b2c9-42baad405756.jpg,f2b13624-b53f-4670-baaf-7b783b622782.jpg,5220b57b-2acc-447a-b012-d8275c840ada.jpg,', '36200.00', '159.00', '0.00', '洛维激光电视VH700', 'a6667c9d-cccd-44f9-8e51-02e57116be29.jpg,a776117e-8cdb-4727-af27-00a5a699b52b.jpg,88a373bf-b91b-4dec-b2c9-42baad405756.jpg,f2b13624-b53f-4670-baaf-7b783b622782.jpg,5220b57b-2acc-447a-b012-d8275c840ada.jpg,0b465e90-eaef-4697-8f3d-fcdee030878a.jpg,', '30', '30.00', '2', '2019-07-14 15:19:39', '2019-08-08 00:00:00', '1', '1', '1', '36', '0', '1', '风暴且龙虾', '江苏艾洛维显示科技股份有限公司是一家专业从事视觉显示系统研发、生产、销售与服务的国家级高新技术企业旗下“艾洛维inovel”品牌拥有激光电视、超短焦投影电视、便携智能投影、商用教育激光投影机、高清高亮工程投影机、大屏幕拼接显示系统等系列产品。', '400-096-1088');
INSERT INTO `project` VALUES ('48', '7', '0', '9', '恩施天然富硒米公益众筹', '恩施天然富硒米公益众筹开始了', '恩施的农人辛勤奉献一生，却因为交通不便、信息闭塞、抵御自然灾害和市场风险能力较弱等等原因失去了太多脱贫致富的机会', '', '众筹不是商品交易。支持者根据自己的判断选择、支持众筹项目，与发起人共同实现梦想并获得发起人承诺的回报，众筹存在一定风险。', '12f8df1b-1097-461a-9d1b-e82861f179cb.jpg', '60b0450a-b001-44b5-a739-ae588888a1e5.jpg,e415332c-f735-4d6c-8da9-16c0bf701c23.jpg,e857e6fa-507b-4eaa-80db-563110cd4651.jpg,', '54701.00', '58.00', '0.00', '世界硒都有机天然硒米4斤装，买一袋送一袋，共计8斤包邮；限量500份', '60b0450a-b001-44b5-a739-ae588888a1e5.jpg,e415332c-f735-4d6c-8da9-16c0bf701c23.jpg,e857e6fa-507b-4eaa-80db-563110cd4651.jpg,12f2665a-8251-41ca-a267-99b5a0cf5536.jpg,', '30', '10.00', '3', '2019-07-14 15:23:28', '2019-07-27 00:00:00', '1', '0', '1', '45', '0', '1', '真的有料旗舰店', '我们希望通过互联网连接人与食物，去解决社会和农业的基本问题，帮助每一个良心种植的新农人记录和传播。借力于互联网的透明、高效为用户优中选优、为高品质食物支付溢价。给良心农人带去回报，打造安心健康食品的信任消费生态，还原食物真实的味道。', '400-962-1617');
INSERT INTO `project` VALUES ('49', '7', '0', '1', '贝蒂×刀刀狗 寻梦记', '我们希望通过公益与贝蒂盲盒的合作，让每一个开心买到贝蒂娃娃的人，同时获得一种爱心传递的方式，在关注与购买盲盒的同时，能够关注西藏孩子们的艺术梦想，人人公益，传递梦想的力量。', '并希望通过募得相应资金帮助藏区特殊儿童，让每个孩子都能像贝蒂那样爱幻想爱冒险。\r\n我们也将邀请热心参与众筹的用户，参与我们后续的公益活动。', '', '众筹不是商品交易。支持者根据自己的判断选择、支持众筹项目，与发起人共同实现梦想并获得发起人承诺的回报，众筹存在一定风险。', 'cc5791b6-204f-4de7-91a9-c0aa8f435d8d.jpg', '12ad1dea-b351-4477-b635-71221c0b52ae.jpg,27603526-475a-4c48-849a-6f2d991816be.jpg,9f517ef0-5041-4ee3-8fdd-ae592a67b20c.jpg,59e0a88a-b73c-4141-917a-36467b5d2dd1.jpg,8d8cd3eb-b6a8-415d-9561-c5f527dc9ee2.jpg,', '10120.00', '48.00', '0.00', '刀刀狗DIY公仔*1 随机贝蒂盲盒产品*1', '12ad1dea-b351-4477-b635-71221c0b52ae.jpg,27603526-475a-4c48-849a-6f2d991816be.jpg,9f517ef0-5041-4ee3-8fdd-ae592a67b20c.jpg,59e0a88a-b73c-4141-917a-36467b5d2dd1.jpg,8d8cd3eb-b6a8-415d-9561-c5f527dc9ee2.jpg,d631c158-dc1f-4119-b271-07017571718a.jpg,a09a0a5e-01f5-43df-8259-781b12955bc7.jpg,', '30', '0.00', '3', '2019-07-14 15:27:14', '2019-07-27 00:00:00', '1', '0', '0', '44', '0', '1', 'manmeng8', '上海漫行文化有限公司是一家动漫IP类型的公司，主营IP新内容创造与衍生品开发业务，公司成立于2011年12 月2日，现在有员工数20人。联合创始人慕容引刀作为中国原创动画的领军人物，其塑造的刀刀狗动漫形象，被誉为“中国的史努比”，并被广大读者所喜爱。', '021-54566875');
INSERT INTO `project` VALUES ('50', '7', '0', '2', '生态小白鞋', 'EcoCare产品的每一个环节每一个步 骤都以此为出发点，这是我们的梦想和理念，我们要让产品去说话去证明，我们 将为此竭尽全力', ':众筹结束后，我们会公示公益行为，精准用在学校图书馆/学生曰用品等。 大部分的利润会用在新产品的研发上面，为下一次公益行动（比如植t对等）做准 备。 一个产品，匠心做◊这就是曾小白', '', '众筹不是商品交易。支持者根据自己的判断选择、支持众筹项目，与发起人共同实现梦想并获得发起人承诺的回报，众筹存在一定风险。', '072c6339-ed2f-4010-81cc-c1bb33c66fff.jpg', 'ba8071cf-a189-4ebc-8a42-24b59ab64209.jpg,8f62a7f2-b08f-46f1-9e52-8ae617d96542.jpg,3bf79a31-b39e-4b1e-9bca-49800bb1dd0b.jpg,8bd1d930-555a-4603-8f03-f07dc2fda506.jpg,ab247294-5908-43db-aa39-25cf06e25e05.jpg,', '1031355.00', '679.00', '0.00', '生态小白鞋1双 （亮蓝色、明黄色、生态白、绿茶色，四色可选）', 'ba8071cf-a189-4ebc-8a42-24b59ab64209.jpg,8f62a7f2-b08f-46f1-9e52-8ae617d96542.jpg,3bf79a31-b39e-4b1e-9bca-49800bb1dd0b.jpg,8bd1d930-555a-4603-8f03-f07dc2fda506.jpg,ab247294-5908-43db-aa39-25cf06e25e05.jpg,78643382-62c7-4ccc-972f-1b9a619796f1.jpg,', '30', '10.00', '2', '2019-07-14 15:31:20', '2019-08-02 00:00:00', '1', '0', '1', '100', '0', '1', 'GEEKUP', '深圳市极客优品科技有限公司针对电商运营服务,电商解决方案，打造成电子商务一体化的品牌服务，专注塑造品牌力量、整合创意的无限可能，为传统品牌客户提供产品设计、品牌推广、电子商务运营、视频制作、众筹黑科技、搜索优化、客户管理与维护、店铺营销策划、 日常运营等一站式电商解决方案。', '13825761769');
INSERT INTO `project` VALUES ('51', '7', '0', '3', '滕氏布糊画 助力残疾人就业', '画如其名，就是用布糊的画。但这布绝非是普通衣料的布，画也不是我们常见的布贴画。布糊画用料非常讲究，以各色真丝面料为主，佐之以纸板、珠花、海绵、绢花、首饰和金丝银线等辅料', '滕氏布糊画传承人滕桂岩在制作布糊画的十余年间里，创作出一幅幅栩栩如生的作品，还帮助一批残障人士找到了谋生之路', '', '众筹不是商品交易。支持者根据自己的判断选择、支持众筹项目，与发起人共同实现梦想并获得发起人承诺的回报，众筹存在一定风险。', 'ddf676de-2f24-4816-9391-d6328d9018f9.jpg', '937850e0-83b7-41a0-910a-4a9e0d374fa4.jpg,5486399a-bf14-44f3-963e-e7899f61305d.jpg,25b417e6-0a9e-4e81-b047-3be8f9ca858e.jpg,', '11615.00', '220.00', '0.00', '可获得七寸布糊画生肖瓷盘一个，请标注你选择布糊画的产品编号（该产品包邮只限于中国大陆地区、港、澳、台除外）', '937850e0-83b7-41a0-910a-4a9e0d374fa4.jpg,5486399a-bf14-44f3-963e-e7899f61305d.jpg,25b417e6-0a9e-4e81-b047-3be8f9ca858e.jpg,f9d8b4c9-8f8e-45e4-99bc-793beaf4ffc1.jpg,', '30', '0.00', '3', '2019-07-14 15:35:10', '2019-07-29 00:00:00', '1', '0', '1', '6', '0', '1', '北京艺能爱心基金会', '北京艺能爱心基金会于2012年成立。拟打造一个可持续发展的公益平台，为社会公益人士及企业、志愿者团队提供一个公开、诚信、共享、互益的公益环境，从而实现对社会弱势群体的扶持和资助。 基金会的资助范围包括：支教助学、扶老助残、救灾救济、公益援助、组织志愿服务等。 基金会一贯秉承“让爱心传递的更远”的宗旨', '0000-1111');
INSERT INTO `project` VALUES ('58', '1', '0', '2', 'hahah', 'xxxxxxxx', 'adasad', 'qwewqe', 'ewqewqweq', 'e689e336-4ecb-4cf7-91c6-248846929644.jpg', '5a3a3113-232c-489a-8527-10f80e198022.jpg,5ac6e0e9-dc27-48fa-a023-64af959b9f18.jpg,94c7db87-217a-40fa-8e64-e17fa7a8ad8a.jpg,0ed30a3e-4bcd-473c-9c6a-3fe9501ac434.jpg,', '11222.00', '112.00', '12.00', '213', '5a3a3113-232c-489a-8527-10f80e198022.jpg,5ac6e0e9-dc27-48fa-a023-64af959b9f18.jpg,94c7db87-217a-40fa-8e64-e17fa7a8ad8a.jpg,0ed30a3e-4bcd-473c-9c6a-3fe9501ac434.jpg,5a553807-0ed2-4973-966b-660cb7b83516.jpg,add6fec2-a7cc-4e78-abe9-29e31d5910a4.jpg,b8b4be20-e9bc-4953-8a26-2bd5490787c5.jpg,182185d4-e370-462e-9556-b23ecda57937.jpg,', '30', '11.00', '1', '2019-07-24 16:53:01', '2019-07-26 00:00:00', '1', '1', '0', '0', '0', '1', 'weq', 'qew', 'qwe');
INSERT INTO `project` VALUES ('59', '1', '1', '2', 'qqqqqqqqq', 'qqqqq', 'qqqqqqq', 'https://vod.300hu.com/4c1f7a6atransbjngwcloud1oss/538f2612206455827367272449/v.f30.mp4', 'aaaa', '6d67d174-9aff-4ab4-ab11-0c22c994d08e.jpg', '5cbc6edd-ebe5-4978-a177-92b784f67d6f.jpg,c3e5b567-5c34-4c27-b1ee-41fb3d121d78.jpg,d845f868-2b0f-42ed-9515-1783a408ac0a.jpg,443339d2-1826-4056-a372-2d3ac2bc6ee8.jpg,1b600c9f-8cbc-42c3-a0fd-7e6b8f8ebc69.jpg,', '123.00', '123.00', null, '213', '5cbc6edd-ebe5-4978-a177-92b784f67d6f.jpg,c3e5b567-5c34-4c27-b1ee-41fb3d121d78.jpg,d845f868-2b0f-42ed-9515-1783a408ac0a.jpg,443339d2-1826-4056-a372-2d3ac2bc6ee8.jpg,1b600c9f-8cbc-42c3-a0fd-7e6b8f8ebc69.jpg,2fc709a9-b668-41f2-9f90-a0c5207950e8.jpg,7886e2c5-6e14-445d-bdc4-56f710600e38.jpg,', '30', '11.00', '1', '2019-07-25 09:46:13', '2019-07-31 00:00:00', '0', '1', '0', '0', '0', '1', 'aaa', 'aaaaaaa', 'aaaaa');

-- ----------------------------
-- Table structure for province
-- ----------------------------
DROP TABLE IF EXISTS `province`;
CREATE TABLE `province` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pname` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of province
-- ----------------------------
INSERT INTO `province` VALUES ('1', '江西省');
INSERT INTO `province` VALUES ('2', '浙江省');
INSERT INTO `province` VALUES ('3', '湖南省');
INSERT INTO `province` VALUES ('4', '福建省');

-- ----------------------------
-- Table structure for street
-- ----------------------------
DROP TABLE IF EXISTS `street`;
CREATE TABLE `street` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sname` varchar(10) DEFAULT NULL,
  `cityid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `cityid` (`cityid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of street
-- ----------------------------
INSERT INTO `street` VALUES ('1', '双港东大道', '4');
INSERT INTO `street` VALUES ('2', '丰溪街道', '3');
INSERT INTO `street` VALUES ('3', '艾溪湖东路', '4');
INSERT INTO `street` VALUES ('4', '青山湖大道', '4');

-- ----------------------------
-- Table structure for support
-- ----------------------------
DROP TABLE IF EXISTS `support`;
CREATE TABLE `support` (
  `id` varchar(32) NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `projectid` int(11) DEFAULT NULL,
  `money` double(10,2) DEFAULT NULL,
  `starttime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `ispay` int(11) DEFAULT NULL COMMENT '是否购买',
  `tryout` int(11) DEFAULT '0' COMMENT 'iswin',
  `iswin` int(11) DEFAULT '0',
  `invitecode` varchar(15) DEFAULT '' COMMENT '邀请码',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `fk_support_users` (`userid`) USING BTREE,
  KEY `fk_support_project` (`projectid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of support
-- ----------------------------
INSERT INTO `support` VALUES ('106', '1', '41', '1899.00', null, '1', null, null, '');
INSERT INTO `support` VALUES ('17', '1', '32', '200.00', '2019-07-19 22:31:15', '1', null, null, '');
INSERT INTO `support` VALUES ('2019720181353669', '1', '50', '689.00', '2019-07-20 18:14:29', '1', null, null, '');
INSERT INTO `support` VALUES ('20197211813831', '1', '34', '110.00', '2019-07-21 18:02:47', '1', null, null, '123456');
INSERT INTO `support` VALUES ('201972594650545', '1', '42', '49.00', '2019-07-25 09:47:42', '1', null, null, '');
INSERT INTO `support` VALUES ('54', '1', '43', '50.00', '2019-07-19 22:59:38', '1', null, null, '');
INSERT INTO `support` VALUES ('56', '1', '34', '110.00', '2019-07-19 23:00:46', '1', null, null, '');
INSERT INTO `support` VALUES ('57', '1', '36', '169.00', '2019-07-19 23:03:33', '1', null, null, '');

-- ----------------------------
-- Table structure for type
-- ----------------------------
DROP TABLE IF EXISTS `type`;
CREATE TABLE `type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  `introduce` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of type
-- ----------------------------
INSERT INTO `type` VALUES ('0', '公益众筹', '公益众筹是一类无回报或者少量回报的众筹');
INSERT INTO `type` VALUES ('1', '普通众筹', '普通众筹是一类可以获得回报的众筹');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fname` varchar(20) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(64) DEFAULT NULL,
  `rtime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `isadmin` char(2) DEFAULT '0',
  `isforbid` char(2) DEFAULT '0',
  `isable` char(2) DEFAULT '0',
  `name` varchar(10) DEFAULT NULL,
  `idcard` varchar(18) DEFAULT NULL,
  `headimg` varchar(100) DEFAULT '1.jpg',
  `introduce` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '廖泽铭', '17679210786', '17679210786', 'e10adc3949ba59abbe56e057f20f883e', null, '0', '0', '0', 'lzm', null, '4b033e7d-ff0b-4d72-857f-190d04466944.jpg', '哈哈哈');
INSERT INTO `user` VALUES ('2', '余生臣', '17679210786', '17679210786', 'e10adc3949ba59abbe56e057f20f883e', '2019-07-22 09:54:05', '1', '0', '0', null, '1515151231221', '1.jpg', '哈哈哈哈啊哈哈哈哈哈');
INSERT INTO `user` VALUES ('3', 'lzm123', '110', '17679210786', 'e10adc3949ba59abbe56e057f20f883e', null, '0', '0', '0', 'lzm', null, '4395d390-84ed-4296-9c6f-dfefab8e27f7.jpg', 'zzzzzzzz');
INSERT INTO `user` VALUES ('4', 'lzm', '13995929329', '3@qq.com', '81dc9bdb52d04dc20036dbd8313ed055', null, '0', '0', '0', '123', null, '', '2132321321');
INSERT INTO `user` VALUES ('5', '廖泽铭12', '13995929309', '13298359847@qq.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', '0', '0', '廖泽铭', null, '', '哈哈哈');
INSERT INTO `user` VALUES ('6', '213', '13996956565', '1329835847@qq.com', '123', '2019-07-23 11:02:56', '0', '0', '0', '123', '421182199903111790', '1.jpg', '123');
INSERT INTO `user` VALUES ('7', '2314214', '13995929301', '13298358417@qq.com', '123123', '2019-07-23 11:05:10', '0', '0', '0', 'lzm', '421182199903111730', '1.jpg', 'asdddddddddddddddddd');
INSERT INTO `user` VALUES ('8', '23142142', '13995929302', '13298358417@qq.com', '123123', '2019-07-23 11:05:50', '0', '0', '0', 'lzm', '421182199903111730', '1.jpg', 'asdddddddddddddddddd');
INSERT INTO `user` VALUES ('9', 'hahh', '13995929304', '13298358417@qq.com', '123123', '2019-07-23 11:07:04', '0', '0', '0', 'lzm', '421182199903111730', '1.jpg', 'asdddddddddddddddddd');
INSERT INTO `user` VALUES ('10', '5', '13995929308', '13298358417@qq.com', '123123', '2019-07-23 11:08:15', '0', '0', '0', 'lzm', '421182199903111730', '1.jpg', 'asdddddddddddddddddd');
INSERT INTO `user` VALUES ('11', '8252', '13995629309', '1329835847@qq.com', '112', '2019-07-23 11:09:56', '0', '0', '0', '123', '421182199903111730', '1.jpg', '213');
INSERT INTO `user` VALUES ('12', '12', '17679210785', '123456789@qq.com', '123456', '2019-07-23 11:12:11', '0', '0', '0', '天', '421182199920111730', '1.jpg', '哈哈哈哈');
INSERT INTO `user` VALUES ('13', '12334455', '17679210756', '13298@qq.com', '123456', '2019-07-23 11:16:35', '0', '0', '0', '123456', '421182199903111730', '1.jpg', 'zhhzhjz-janioaoif');
INSERT INTO `user` VALUES ('14', '嘻嘻嘻', '15327714400', '132@qq.com', '231231', '2019-07-23 11:18:40', '0', '0', '0', '213', '421182199903111730', '1.jpg', 'asdddddddd');
