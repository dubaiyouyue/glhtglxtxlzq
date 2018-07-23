/*
Navicat MySQL Data Transfer

Source Server         : 1
Source Server Version : 50171
Source Host           : 127.0.0.1:3306
Source Database       : glhtglxtxlzq

Target Server Type    : MYSQL
Target Server Version : 50171
File Encoding         : 65001

Date: 2018-07-23 14:52:42
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `tech`
-- ----------------------------
DROP TABLE IF EXISTS `tech`;
CREATE TABLE `tech` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `domain` varchar(50) DEFAULT 'no date' COMMENT '域名',
  `in_date` date DEFAULT '0000-00-00' COMMENT '注册时间',
  `out_date` date DEFAULT '0000-00-00' COMMENT '到期时间',
  `c_title` varchar(200) DEFAULT 'no date' COMMENT '公司名称',
  `c_name` varchar(80) DEFAULT 'no date' COMMENT '公司联系人',
  `c_tel` bigint(10) unsigned DEFAULT '0' COMMENT '公司联系人电话',
  `c_qq` bigint(20) DEFAULT '0' COMMENT '公司联系人qq',
  `s_name` varchar(20) DEFAULT 'no date' COMMENT '网站代码放在',
  `test_url` varchar(300) DEFAULT 'no date' COMMENT '测试地址',
  `p_d` int(10) unsigned DEFAULT '0' COMMENT '域名价格年',
  `p_s` int(10) unsigned DEFAULT '0' COMMENT '服务器价格年',
  `zt` int(50) unsigned DEFAULT '1' COMMENT '状态',
  `bz` varchar(500) DEFAULT 'no date' COMMENT '备注说明',
  `zt_time` datetime DEFAULT NULL COMMENT '修改时间',
  `s_idc` varchar(20) DEFAULT 'no date' COMMENT '服务器商家',
  `d_idc` varchar(20) DEFAULT 'no date' COMMENT '服务器',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=189 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tech
-- ----------------------------
INSERT INTO `tech` VALUES ('1', 'resonance.com.cn', '2011-12-31', '2016-12-21', '共振公告', '罗旭亚', '15994435661', '1226850955', '未知', 'http://www.resonance.com.cn/', '32', '0', '1', '2015-08-09 到期日期是 西数虚拟主机', '2015-04-14 17:19:40', '西数', '纳网');
INSERT INTO `tech` VALUES ('3', 'resonance.net.cn', '2011-12-21', '2015-12-21', '共振公告', '罗旭亚', '15994435661', '1226850955', '未知', 'http://www.resonance.net.cn/', '32', '0', '1', ' b065【独立IP】--同下纳网 显性URL 网站目录design  旧net官网版本测试链接 rrnnnet.test2.resonance.net.cn', '2015-04-14 18:55:04', '西数', '纳网');
INSERT INTO `tech` VALUES ('5', 'nnhuimei.com', '2012-09-27', '2018-09-27', '南宁慧美整形', '未知', '0', '0', 'no date', 'no date', '52', '0', '2', 'no date', '2015-04-14 19:00:49', 'no date', '纳网');
INSERT INTO `tech` VALUES ('6', 'gxzmjhs.com', '2014-09-27', '2015-09-27', '中美交换生', 'no date', '0', '0', 'no date', 'no date', '0', '0', '2', 'no date', '2015-04-14 19:47:22', 'no date', 'no date');
INSERT INTO `tech` VALUES ('7', 'gxjcsj.com', '0000-00-00', '2013-01-09', '未知', 'no date', '0', '0', 'no date', '未知', '0', '0', '2', '域名已删除', '2015-04-14 19:49:06', '纳网', '纳网');
INSERT INTO `tech` VALUES ('8', '龙誉.com', '0000-00-00', '2014-03-02', '未知', 'no date', '0', '0', 'no date', '未知', '0', '0', '2', '域名已删除', '2015-04-14 19:50:32', '纳网', '纳网');
INSERT INTO `tech` VALUES ('9', 'dragonhonor.com', '0000-00-00', '2014-03-02', '未知', 'no date', '0', '0', 'no date', '未知', '0', '0', '2', '域名已删除', '2015-04-25 02:09:32', 'no date', '纳网');
INSERT INTO `tech` VALUES ('10', 'ltmu948.com', '0000-00-00', '2013-03-14', '未知', 'no date', '0', '0', 'no date', '未知', '0', '0', '2', '域名已删除', '2015-04-25 02:10:54', '纳网', '纳网');
INSERT INTO `tech` VALUES ('11', 'mphifi.com', '0000-00-00', '2013-01-29', '未知', 'no date', '0', '0', 'no date', '未知', '0', '0', '2', '域名已删除', '2015-04-25 02:16:14', '纳网', '纳网');
INSERT INTO `tech` VALUES ('12', 'txhj.me', '0000-00-00', '2013-03-19', '未知', 'no date', '0', '0', 'no date', '未知', '0', '0', '2', '域名已删除', '2015-04-25 02:41:03', '纳网', '纳网');
INSERT INTO `tech` VALUES ('13', 'gxxd889.com', '0000-00-00', '2014-03-23', '未知', 'no date', '0', '0', 'no date', '未知', '0', '0', '2', '域名已删除', '2015-04-25 02:41:06', '纳网', '纳网');
INSERT INTO `tech` VALUES ('14', '五宝堂.com', '0000-00-00', '2013-06-11', '未知', 'no date', '0', '0', 'no date', 'no date', '0', '0', '2', '域名已删除', '2015-04-25 02:41:08', '纳网', '纳网');
INSERT INTO `tech` VALUES ('15', 'wubaotang.com', '0000-00-00', '2013-06-11', '未知', 'no date', '0', '0', 'no date', 'no date', '0', '0', '2', '域名已删除', '2015-04-25 02:41:10', '纳网', '纳网');
INSERT INTO `tech` VALUES ('16', 'darongshan.com.cn', '0000-00-00', '2013-05-11', '未知', 'no date', '0', '0', 'no date', '未知', '0', '0', '2', '域名已删除', '2015-04-25 02:41:13', '纳网', '纳网');
INSERT INTO `tech` VALUES ('17', 'fzgy68.com', '0000-00-00', '2014-01-16', '未知', 'no date', '0', '0', 'no date', '未知', '0', '0', '2', '域名已删除', '2015-04-25 02:46:00', '纳网', '纳网');
INSERT INTO `tech` VALUES ('18', 'lsea-cfzc.com', '0000-00-00', '2014-12-13', '未知', 'no date', '0', '0', 'no date', '未知', '0', '0', '2', '域名已删除', '2015-04-25 02:46:02', '纳网', '纳网');
INSERT INTO `tech` VALUES ('19', 'gxfm98.com', '0000-00-00', '2015-12-04', '疯马酒吧网', 'no date', '0', '0', 'no date', 'http://www.gxfm98.com/', '0', '0', '1', '纳网虚拟主机到期 2015-07-18  1yylls.com.cn', '2015-04-25 02:46:03', '纳网', '纳网');
INSERT INTO `tech` VALUES ('20', 'leilaclub.com', '0000-00-00', '2014-11-30', '未知', 'no date', '0', '0', 'no date', '未知', '0', '0', '2', '域名已删除', '2015-04-25 02:46:04', '纳网', '纳网');
INSERT INTO `tech` VALUES ('21', 'gxjtdc.com', '0000-00-00', '2013-11-23', '未知', 'no date', '0', '0', 'no date', '未知', '0', '0', '2', '域名已删除', '2015-04-25 02:46:06', '纳网', '纳网');
INSERT INTO `tech` VALUES ('22', 'pulefu.com', '0000-00-00', '2015-11-01', '广西普乐福畜牧网', 'no date', '0', '0', 'no date', 'http://www.pulefu.com/', '0', '0', '1', '纳网虚拟主机到期 2015-07-18', '2015-04-25 02:46:07', '纳网', '纳网');
INSERT INTO `tech` VALUES ('23', 'hifi66.com', '0000-00-00', '2013-10-08', '未知', 'no date', '0', '0', 'no date', '未知', '0', '0', '2', '域名已删除', '2015-04-25 02:46:08', '纳网', '纳网');
INSERT INTO `tech` VALUES ('24', 'nnhuimei.com', '0000-00-00', '2018-09-27', '南宁慧美整形', 'no date', '0', '0', 'no date', 'http://nnhuimei.com/', '0', '0', '1', 'no date', '2015-04-25 02:46:09', '纳网', '纳网');
INSERT INTO `tech` VALUES ('25', 'jlfhotel.com', '0000-00-00', '2013-09-18', '未知', 'no date', '0', '0', 'no date', '未知', '0', '0', '2', '域名已删除', '2015-04-25 02:46:11', '纳网', '纳网');
INSERT INTO `tech` VALUES ('26', 'gxtongyuan.com', '0000-00-00', '2013-08-29', '未知', 'no date', '0', '0', 'no date', '未知', '0', '0', '2', '域名已删除', '2015-04-25 02:46:12', '纳网', '纳网');
INSERT INTO `tech` VALUES ('27', 'ZKYNF.com', '0000-00-00', '2013-08-26', '未知', 'no date', '0', '0', 'no date', '未知', '0', '0', '2', '域名已删除', '2015-04-25 02:46:13', '纳网', '纳网');
INSERT INTO `tech` VALUES ('28', 'yylls.com.cn', '0000-00-00', '2013-08-08', '未知', 'no date', '0', '0', 'no date', '未知', '0', '0', '2', '域名已删除', '2015-04-25 02:46:15', '纳网', '纳网');
INSERT INTO `tech` VALUES ('29', 'nnsyjx.com', '0000-00-00', '2014-11-01', '未知', 'no date', '0', '0', 'no date', '未知', '0', '0', '2', '域名已删除', '2015-04-25 02:46:16', '纳网', '纳网');
INSERT INTO `tech` VALUES ('30', '52yt.me', '0000-00-00', '2014-06-04', '未知', 'no date', '0', '0', 'no date', '未知', '0', '0', '2', '域名已删除', '2015-04-25 02:58:19', '纳网', '纳网');
INSERT INTO `tech` VALUES ('31', 'gxweijun.com', '0000-00-00', '2015-05-06', 'no date', 'no date', '0', '0', 'no date', 'http://www.gxweijun.com/', '0', '0', '1', '网站打不开！纳网虚拟主机到期 2015-05-10', '2015-04-25 02:58:21', '纳网', '纳网');
INSERT INTO `tech` VALUES ('32', 'hzzmfdc.com', '0000-00-00', '2016-03-27', '在美房地产', 'no date', '0', '0', 'no date', 'http://www.hzzmfdc.com/', '0', '0', '1', '纳网虚拟主机到期 2016-03-27', '2015-04-25 02:58:22', '纳网', '纳网');
INSERT INTO `tech` VALUES ('33', 'kaoxuhanger.com', '0000-00-00', '2016-03-13', '桂林高旭贸易', 'no date', '0', '0', 'no date', 'http://www.kaoxuhanger.com/', '0', '0', '1', '纳网虚拟主机到期 2016-03-19', '2015-04-25 02:58:23', '纳网', '纳网');
INSERT INTO `tech` VALUES ('34', 'gxrhfc.com', '0000-00-00', '2014-03-08', '未知', 'no date', '0', '0', 'no date', '未知', '0', '0', '2', '域名已删除', '2015-04-25 02:58:25', '纳网', '纳网');
INSERT INTO `tech` VALUES ('35', 'gxnnrhfc.com', '0000-00-00', '2014-01-29', '未知', 'no date', '0', '0', 'no date', '未知', '0', '0', '2', '域名已删除', '2015-04-25 02:58:26', '纳网', '纳网');
INSERT INTO `tech` VALUES ('36', 'dsdktv.com', '0000-00-00', '2016-01-25', '迪斯迪KTV', 'no date', '0', '0', 'no date', 'http://dsdktv.com/', '0', '0', '1', '纳网虚拟主机到期 2016-01-19', '2015-04-25 02:58:27', '纳网', '纳网');
INSERT INTO `tech` VALUES ('37', 'cnyhqs.com', '0000-00-00', '2016-01-25', '诱惑千色网', 'no date', '0', '0', 'no date', 'http://www.cnyhqs.com/', '0', '0', '1', '纳网虚拟主机到期 2016-03-12', '2015-04-25 02:58:29', '纳网', '纳网');
INSERT INTO `tech` VALUES ('38', 'czfood.cc', '0000-00-00', '2014-07-02', '未知', 'no date', '0', '0', 'no date', '未知', '0', '0', '2', '域名已删除', '2015-04-25 03:05:42', '纳网', '纳网');
INSERT INTO `tech` VALUES ('39', '1yylls.com.cn', '0000-00-00', '0000-00-00', 'no date', 'no date', '0', '0', 'no date', 'no date', '0', '0', '2', '【关键词错误】纳网虚拟主机到期 2015-07-18', '2015-04-25 03:19:46', 'no date', 'no date');
INSERT INTO `tech` VALUES ('40', 'qsmdq.com', '0000-00-00', '2017-04-27', '千思买电气', 'no date', '0', '0', 'no date', 'http://qsmdq.com/', '0', '0', '1', '纳网虚拟主机到期 2015-07-18', '2015-04-25 03:25:33', '纳网', '万网');
INSERT INTO `tech` VALUES ('41', 'jialilai99.com', '0000-00-00', '2015-08-25', '佳利来99', 'no date', '0', '0', 'no date', 'http://jialilai99.com/', '0', '0', '1', '纳网香港虚机到期 2016-04-10', '2015-04-25 03:27:01', '纳网', '西数');
INSERT INTO `tech` VALUES ('42', 'che0nd.com', '0000-00-00', '2015-08-01', '车0年代', 'no date', '0', '0', 'no date', 'http://che0nd.com/', '0', '0', '1', '西数虚拟主机', '2015-04-25 03:36:45', '西数', '西数');
INSERT INTO `tech` VALUES ('43', ' hdhjtz.com', '0000-00-00', '2015-08-29', '华都环境投资', 'no date', '0', '0', 'no date', 'http://hdhjtz.com/', '0', '0', '1', '新首页改版20150820上线', '2015-04-25 03:36:48', '云1', '西数');
INSERT INTO `tech` VALUES ('44', 'nsgy.cn', '0000-00-00', '2015-12-11', '融安县南山果业', 'no date', '0', '0', 'no date', 'http://nsgy.cn/', '0', '0', '1', 'no date', '2015-04-25 03:36:50', '云1', '西数');
INSERT INTO `tech` VALUES ('45', 'sunriverep.com', '0000-00-00', '2015-12-19', 'no date', 'no date', '0', '0', 'no date', 'http://sunriverep.com', '0', '0', '1', '网站无法打开！', '2015-04-25 03:36:51', 'no date', '西数');
INSERT INTO `tech` VALUES ('46', 'buildnet.net.cn', '0000-00-00', '2015-12-19', '维安特工地信息化', 'no date', '0', '0', 'no date', 'http://buildnet.net.cn/', '0', '0', '1', 'no date', '2015-04-25 03:36:53', '云1', '西数');
INSERT INTO `tech` VALUES ('47', 'gxdyyj.com', '0000-00-00', '2016-01-08', '广西德源冶金', 'no date', '0', '0', 'no date', 'http://gxdyyj.com/', '0', '0', '1', 'no date', '2015-04-25 03:36:55', '云1', '西数');
INSERT INTO `tech` VALUES ('48', 'gxbaoding.com', '0000-00-00', '2016-02-28', '广西宝鼎进出口贸易', 'no date', '0', '0', 'no date', 'http://gxbaoding.com/', '0', '0', '1', 'no date', '2015-04-25 03:36:57', '云1', '西数');
INSERT INTO `tech` VALUES ('49', 'rwtruck.cn', '0000-00-00', '2016-06-23', '重卡出口瑞沃汽车销售', 'no date', '0', '0', 'no date', 'http://rwtruck.cn/', '0', '0', '1', 'no date', '2015-04-25 03:36:59', '云1', '西数');
INSERT INTO `tech` VALUES ('50', 'gzsj.me', '0000-00-00', '2015-07-03', '南宁共振广告', 'no date', '0', '0', 'no date', 'no date', '0', '0', '1', '公司域名保护注册', '2015-04-25 03:37:00', 'no date', '西数');
INSERT INTO `tech` VALUES ('51', 'gxwgsh.com', '0000-00-00', '2015-07-07', '广西五谷生活', 'no date', '0', '0', 'no date', 'http://gxwgsh.com/', '0', '0', '1', 'no date', '2015-04-25 03:37:02', '云1', '西数');
INSERT INTO `tech` VALUES ('52', 'mingcheyizhan.cn', '0000-00-00', '2015-08-11', '名车驿站', 'no date', '0', '0', 'no date', 'http://mingcheyizhan.cn/', '0', '0', '1', 'no date', '2015-04-25 03:37:04', '云1', '西数');
INSERT INTO `tech` VALUES ('80', 'gxwyly.com', '0000-00-00', '0000-00-00', '五一粮油', 'no date', '0', '0', 'no date', 'http://www.gxwyly.com/', '0', '0', '1', 'no date', '2015-04-25 05:03:50', '云1', '万网');
INSERT INTO `tech` VALUES ('53', 'gxyjys.com.cn', '0000-00-00', '2015-09-01', '广西银迹银饰', 'no date', '0', '0', 'no date', 'http://gxyjys.com.cn/', '0', '0', '1', 'no date', '2015-04-25 03:48:54', '云1', '西数');
INSERT INTO `tech` VALUES ('54', 'yjys.me', '0000-00-00', '2015-09-01', '我司提醒到期页面', 'no date', '0', '0', 'no date', 'http://yjys.me/', '0', '0', '1', '是一个我们公司的提醒页面', '2015-04-25 03:48:57', 'no date', '西数');
INSERT INTO `tech` VALUES ('55', 'glhyst.com', '0000-00-00', '2015-09-02', '桂林华逸生态', 'no date', '0', '0', 'no date', 'http://glhyst.com/', '0', '0', '1', 'no date', '2015-04-25 03:48:59', '云1', '西数');
INSERT INTO `tech` VALUES ('56', 'flutters.com.cn', '0000-00-00', '2015-09-09', '振宇实验室设备', 'no date', '0', '0', 'no date', 'http://www.flutters.com.cn/', '0', '0', '1', 'no date', '2015-04-25 03:49:00', '云1', '西数');
INSERT INTO `tech` VALUES ('57', 'bhhy.cc', '0000-00-00', '2015-09-11', '北海亨颐', 'no date', '0', '0', 'no date', 'http://bhhy.cc/', '0', '0', '1', '网站无法打开！ bhhy-cc.com', '2015-04-25 03:49:02', 'no date', '西数');
INSERT INTO `tech` VALUES ('58', 'gxzhongchang.com', '0000-00-00', '2015-09-22', '众畅旅游网', 'no date', '0', '0', 'no date', 'http://www.gxzhongchang.com/', '0', '0', '1', 'no date', '2015-04-25 03:49:04', '西数云2', '西数');
INSERT INTO `tech` VALUES ('59', 'gxtxjz.com', '0000-00-00', '2015-09-24', '天厦建筑', 'no date', '0', '0', 'no date', 'http://www.gxtxjz.com/', '0', '0', '1', 'no date', '2015-04-25 03:49:06', '西数云2', '西数');
INSERT INTO `tech` VALUES ('60', ' fcgjt.com', '0000-00-00', '2015-09-24', '金梯房地', 'no date', '0', '0', 'no date', 'http://www.fcgjt.com/', '0', '0', '1', 'no date', '2015-04-25 03:49:08', '西数云2', '西数');
INSERT INTO `tech` VALUES ('61', 'gxtkr.com', '0000-00-00', '2015-09-28', '南宁泰科瑞实验室设备', 'no date', '0', '0', 'no date', 'http://gxtkr.com/', '0', '0', '1', 'no date', '2015-04-25 03:49:09', '西数云2', '西数');
INSERT INTO `tech` VALUES ('62', 'gxtxjt.com', '0000-00-00', '2015-09-28', '天厦建筑工程', 'no date', '0', '0', 'no date', 'no date', '0', '0', '1', '网站无法打开！', '2015-04-25 04:01:21', 'no date', '西数');
INSERT INTO `tech` VALUES ('63', 'gxtxjgjt.com', '0000-00-00', '2015-09-28', '天厦建筑工程', 'no date', '0', '0', 'no date', 'no date', '0', '0', '1', '网站无法打开！', '2015-04-25 04:01:25', 'no date', '西数');
INSERT INTO `tech` VALUES ('64', ' ty2010.com', '0000-00-00', '2015-09-28', '桃园房地产', 'no date', '0', '0', 'no date', 'no date', '0', '0', '1', '网站无法打开！', '2015-04-25 04:01:27', 'no date', '西数');
INSERT INTO `tech` VALUES ('65', 'nnsdmzx.com.cn', '0000-00-00', '2015-11-11', '新--南宁市东盟中学', 'no date', '0', '0', 'no date', 'http://nnsdmzx.com.cn/', '0', '0', '1', '新版本2015.05.15上线', '2015-04-25 04:01:30', '西数云2', 'no date');
INSERT INTO `tech` VALUES ('66', '99aqshua.com', '0000-00-00', '2015-11-14', '99刷钻？[旧已关停]', 'no date', '0', '0', 'no date', 'http://new99aqs.test.abc123.hdhjtz.com/', '0', '0', '1', '刷钻平台 西数虚拟主机到期2015-11-14', '2015-04-25 04:01:32', '云1', '西数');
INSERT INTO `tech` VALUES ('67', 'gxykwj.com', '0000-00-00', '2015-11-14', '南宁市乐购商贸', 'no date', '0', '0', 'no date', 'no date', '0', '0', '1', '网站无法打开！', '2015-04-25 04:01:34', 'no date', 'no date');
INSERT INTO `tech` VALUES ('68', 'hongyuegjg.com', '0000-00-00', '2015-12-17', '宏越钢结构工程', 'no date', '0', '0', 'no date', 'http://www.hongyuegjg.com/', '0', '0', '1', 'no date', '2015-04-25 04:01:37', '西数云2', '西数');
INSERT INTO `tech` VALUES ('69', 'gxzmjhs.com', '0000-00-00', '2016-01-23', '中美交换生', 'no date', '0', '0', 'no date', 'http://www.gxzmjhs.com/', '0', '0', '1', 'no date', '2015-04-25 04:01:39', '西数云2', '西数');
INSERT INTO `tech` VALUES ('70', 'jinjiuxf.com', '0000-00-00', '2016-04-09', '金九消防工程', 'no date', '0', '0', 'no date', 'no date', '0', '0', '1', '未上线', '2015-04-25 04:01:42', 'no date', 'no date');
INSERT INTO `tech` VALUES ('71', 'gxxr365.com', '0000-00-00', '2016-04-10', '贵港市祥润贸易', 'no date', '0', '0', 'no date', 'no date', '0', '0', '1', '未上线', '2015-04-25 04:01:44', 'no date', 'no date');
INSERT INTO `tech` VALUES ('78', 'styler22.com', '0000-00-00', '0000-00-00', '薯条公关创意机构', 'no date', '0', '0', 'no date', 'http://www.styler22.com/', '0', '0', '1', 'no date', '2015-04-25 04:54:56', 'no date', 'no date');
INSERT INTO `tech` VALUES ('72', 'w.chinayishujr.hk', '0000-00-00', '0000-00-00', '中艺金融', 'no date', '0', '0', 'no date', 'http://w.chinayishujr.hk/', '0', '0', '1', '域名不在我们公司注册', '2015-04-25 04:14:17', '西数云2', 'no date');
INSERT INTO `tech` VALUES ('73', 'no date', '0000-00-00', '0000-00-00', '意态网上商城', 'no date', '0', '0', 'no date', 'http://xlyitai.test2.resonance.net.cn', '0', '0', '1', '未交付', '2015-04-25 04:18:58', '西数云2', 'no date');
INSERT INTO `tech` VALUES ('74', 'niceteam.cn', '0000-00-00', '2020-05-07', '新影响新华为', 'no date', '0', '0', 'no date', 'http://www.niceteam.cn/', '0', '0', '1', 'no date', '2015-04-25 04:24:49', '西数云2', '万网');
INSERT INTO `tech` VALUES ('75', '水利电力设备.com', '0000-00-00', '0000-00-00', '旭众水利电力设备', 'no date', '0', '0', 'no date', 'http://xn--kcrsk53o79vljk926a.com/', '0', '0', '1', '域名已经交给客户 纳网会员转移', '2015-04-25 04:29:50', '西数云2', 'no date');
INSERT INTO `tech` VALUES ('76', 'gxhuahong.cn', '0000-00-00', '0000-00-00', '华鸿水务集团', 'no date', '0', '0', 'no date', 'http://www.gxhuahong.cn/', '0', '0', '1', 'no date', '2015-04-25 04:47:31', '云1', '35.com');
INSERT INTO `tech` VALUES ('77', 'no date', '0000-00-00', '0000-00-00', '桃园地产测试', 'no date', '0', '0', 'no date', 'http://taoyuan.test.abc123.hdhjtz.com', '0', '0', '1', '只有测试地址 没有客户的域名绑定', '2015-04-25 04:49:21', '云1', 'no date');
INSERT INTO `tech` VALUES ('79', 'yjys.me', '0000-00-00', '0000-00-00', '广西银迹微信', 'no date', '0', '0', 'no date', 'http://www.yjys.me/', '0', '0', '1', '微站系统', '2015-04-25 04:56:53', '云1', '西数');
INSERT INTO `tech` VALUES ('81', 'gxhansen.com', '0000-00-00', '0000-00-00', 'hg0088皇冠', 'no date', '0', '0', 'no date', 'http://www.gxhansen.com/', '0', '0', '1', '瀚森木业？ 域名可能不对', '2015-04-25 05:07:47', '云1', 'no date');
INSERT INTO `tech` VALUES ('82', 'gxnnaic.com', '0000-00-00', '0000-00-00', '南宁腾辉企业管理', 'no date', '0', '0', 'no date', 'http://www.gxnnaic.com/', '0', '0', '1', 'no date', '2015-04-25 05:11:29', 'no date', '72e.net');
INSERT INTO `tech` VALUES ('83', ' gzsunraylab.com', '0000-00-00', '0000-00-00', '森蕾实验设备', 'no date', '0', '0', 'no date', 'http://gzsunraylab.com/', '0', '0', '1', '瑞丰国际博彩 域名可能不对', '2015-04-25 05:13:37', 'no date', 'no date');
INSERT INTO `tech` VALUES ('84', 'wellnet.net.cn', '0000-00-00', '0000-00-00', '广西维安特网络技术', 'no date', '0', '0', 'no date', 'http://www.wellnet.net.cn/', '0', '0', '1', 'no date', '2015-04-25 05:15:18', '云1', '万网');
INSERT INTO `tech` VALUES ('85', 'che0nd.com', '0000-00-00', '2015-09-06', '车0年代', 'no date', '0', '0', 'no date', 'http://em.che0nd.com/', '0', '0', '1', '到期日期是 西数虚拟主机', '2015-04-25 05:17:17', '西数', 'no date');
INSERT INTO `tech` VALUES ('86', 'no date', '0000-00-00', '2015-08-15', '广西共振代注册平台', 'no date', '0', '0', 'no date', 'http://gongzheng.gotoip3.com/', '0', '0', '1', '到期日期是 西数虚拟主机', '2015-04-25 05:24:55', 'no date', 'no date');
INSERT INTO `tech` VALUES ('87', 'faw-liut.com', '0000-00-00', '2015-08-19', '柳州特种汽车', 'no date', '0', '0', 'no date', 'http://www.faw-liut.com/', '0', '0', '1', '到期日期是 西数 b034虚拟主机', '2015-04-25 05:26:26', '西数', '35.com');
INSERT INTO `tech` VALUES ('88', 'jie-ling.cn', '0000-00-00', '2015-08-24', '南宁洁伶', 'no date', '0', '0', 'no date', 'http://www.jie-ling.cn/', '0', '0', '1', '到期日期是 西数虚拟主机', '2015-04-25 05:33:14', '西数', '新网');
INSERT INTO `tech` VALUES ('89', 'tw000', '0000-00-00', '2015-11-12', '南宁市东盟中学（旧）', 'no date', '0', '0', 'no date', 'no date', '0', '0', '1', '【现已停用】到期日期是 西数虚拟主机', '2015-04-25 05:37:44', '西数', 'no date');
INSERT INTO `tech` VALUES ('90', 'gxgyic.com', '0000-00-00', '2055-11-12', '庚源教育咨询服务', 'no date', '0', '0', 'no date', 'http://edu.gxgyic.com/', '0', '0', '1', '域名和空间都不在我们公司', '2015-04-27 09:22:28', 'no date', 'no date');
INSERT INTO `tech` VALUES ('91', 'gxsdgroup.com', '0000-00-00', '2016-01-16', '晟鼎投资集团', 'no date', '0', '0', 'no date', 'http://www.gxsdgroup.com/', '0', '0', '1', '阿里云服务器', '2015-05-08 15:53:36', '阿里云', '35.com');
INSERT INTO `tech` VALUES ('92', 'lsea-cfzc.com', '0000-00-00', '2014-12-12', '泄油瘦身汤', 'no date', '0', '0', 'no date', 'http://www.lsea-cfzc.com/', '0', '0', '2', '域名已经被抢注 不是我们公司的客户网站', '2015-05-08 15:55:39', '阿里云', '纳网');
INSERT INTO `tech` VALUES ('94', 'no date', '0000-00-00', '0000-00-00', '旧--南宁市东盟中学', 'no date', '0', '0', 'no date', 'http://newnndmzx.test.abc123.gxtkr.com/', '0', '0', '2', '域名改为旧版本链接，测试(旧版本网站)2015.05.22关闭', '2015-05-11 04:19:52', '云2', 'no date');
INSERT INTO `tech` VALUES ('93', 'hdhjtz.com', '0000-00-00', '2015-08-15', '共振设计微官网', 'no date', '0', '0', 'no date', 'http://weixi.test.abc123.hdhjtz.com/mobile.php?act=channel', '0', '0', '1', '共振设计微官网', '2015-05-08 15:59:39', '云1', '西数');
INSERT INTO `tech` VALUES ('95', 'no date', '0000-00-00', '0000-00-00', '新华幼儿教育', 'no date', '0', '0', 'no date', 'http://www.xhyjjt.com/', '0', '0', '1', 'http://www.gxxhyjjt.com/', '2015-05-28 01:01:01', '纳网', '域名是客户自己注册');
INSERT INTO `tech` VALUES ('96', 'no date', '0000-00-00', '0000-00-00', '本位咖啡', 'no date', '0', '0', 'no date', 'http://lwbwkff.test.abc123.gxtkr.com', '0', '0', '2', '客户没有域名！测试域名作上线用！', '2015-06-01 09:27:58', '云2', 'no date');
INSERT INTO `tech` VALUES ('97', 'no date', '0000-00-00', '0000-00-00', '英凯文具', 'no date', '0', '0', 'no date', 'http://gxykwj.com/', '0', '0', '1', '域名绑定上线', '2015-06-01 11:07:52', '云2', 'no date');
INSERT INTO `tech` VALUES ('98', 'no date', '0000-00-00', '0000-00-00', '新刷钻', 'no date', '0', '0', 'no date', 'http://99aqshua.com', '0', '0', '1', '新刷钻绑定上线【测试源码云2】', '2015-06-03 15:03:32', '西数虚拟主机', 'no date');
INSERT INTO `tech` VALUES ('99', 'no date', '0000-00-00', '0000-00-00', '广西一方海外信息服务', 'no date', '0', '0', 'no date', 'http://www.yifangvisa.com/', '0', '0', '1', '域名源代码都在客户那边', '2015-06-08 18:37:15', 'no date', 'no date');
INSERT INTO `tech` VALUES ('100', 'no date', '0000-00-00', '0000-00-00', '一方海外微信网站', 'no date', '0', '0', 'no date', 'http://yifangvsswin.test2.resonance.net.cn', '0', '0', '1', '上线！', '2015-06-09 15:35:31', '云2', 'no date');
INSERT INTO `tech` VALUES ('101', 'no date', '0000-00-00', '0000-00-00', '南广鲁班微官网', 'no date', '0', '0', 'no date', 'http://newngwx.test.abc123.gxtkr.com/', '0', '0', '2', '网站测试链接，未上线！', '2015-06-27 15:31:45', '云2', 'no date');
INSERT INTO `tech` VALUES ('102', 'no date', '0000-00-00', '0000-00-00', '工业器材城微官网', 'no date', '0', '0', 'no date', 'http://weixin.gxgyqcc.com/', '0', '0', '1', '上线！', '2015-07-06 20:39:54', '云2', 'no date');
INSERT INTO `tech` VALUES ('144', 'no date', '0000-00-00', '0000-00-00', '丰景园林', 'no date', '0', '0', 'no date', 'http://fengjing.test.resonance.net.cn/', '0', '0', '1', '云1 上线 结', '2016-09-20 15:52:52', 'no date', 'no date');
INSERT INTO `tech` VALUES ('103', 'no date', '0000-00-00', '0000-00-00', '南广鲁班PC电脑--旧', 'no date', '0', '0', 'no date', 'http://nnggllbbjypc.test.abc123.gxtkr.com/', '0', '0', '2', '【旧版本】网站测试链接，未上线！', '2015-07-11 09:42:36', '云2', 'no date');
INSERT INTO `tech` VALUES ('104', 'gxgyqcc.com', '0000-00-00', '0000-00-00', '工业器材城电脑pc', 'no date', '0', '0', 'no date', 'http://www.gxgyqcc.com/', '0', '0', '1', '已经上线', '2015-07-11 09:43:30', '云2', 'no date');
INSERT INTO `tech` VALUES ('105', 'no date', '0000-00-00', '0000-00-00', '新--南广鲁班PC电脑', 'no date', '0', '0', 'no date', 'http://gxjzpx.cn/', '0', '0', '1', '已上线', '2015-07-22 17:22:44', '云2', 'no date');
INSERT INTO `tech` VALUES ('106', 'no date', '0000-00-00', '0000-00-00', '新--南广鲁班微信', 'no date', '0', '0', 'no date', 'http://weixin.gxjzpx.cn/', '0', '0', '1', '已上线', '2015-07-24 03:33:57', '云2', 'no date');
INSERT INTO `tech` VALUES ('107', 'no date', '0000-00-00', '0000-00-00', '新--一方PC改版', 'no date', '0', '0', 'no date', 'http://newyfvisa.test.abc123.gxtkr.com/', '0', '0', '1', '【新改版】网站测试链接，未上线！', '2015-07-24 03:33:59', '云2', 'no date');
INSERT INTO `tech` VALUES ('108', 'no date', '0000-00-00', '0000-00-00', '新华都改版', 'no date', '0', '0', 'no date', 'http://newhuadugb.test.abc123.hdhjtz.com/', '0', '0', '2', '已经上线，链接为旧版本！', '2015-07-27 00:24:04', '云1', 'no date');
INSERT INTO `tech` VALUES ('109', 'no date', '0000-00-00', '0000-00-00', '祥润贸易', 'no date', '0', '0', 'no date', 'http://www.gxxr365.com/', '0', '0', '1', '已上线', '2015-07-30 18:03:35', 'no date', 'no date');
INSERT INTO `tech` VALUES ('110', 'no date', '0000-00-00', '0000-00-00', '【内用】邮件群发邮局', 'no date', '0', '0', 'no date', 'http://email.test2.resonance.net.cn/', '0', '0', '1', '公司邮件群发系统', '2015-07-31 11:38:05', 'no date', 'no date');
INSERT INTO `tech` VALUES ('111', '西数独立管理系统', '0000-00-00', '0000-00-00', 'no date', 'no date', '0', '0', 'no date', 'http://www.myhostadmin.net', '0', '0', '1', 'no date', '2015-08-25 11:58:46', 'no date', 'no date');
INSERT INTO `tech` VALUES ('112', 'no date', '0000-00-00', '0000-00-00', '金九消防', 'no date', '0', '0', 'no date', 'http://jinjiu.test2.resonance.net.cn/', '0', '0', '1', '未上线', '2015-09-13 22:57:58', 'no date', 'no date');
INSERT INTO `tech` VALUES ('113', '蕾拉', '0000-00-00', '0000-00-00', 'no date', 'no date', '0', '0', 'no date', 'http://leila.test2.resonance.net.cn/', '0', '0', '1', '未上线', '2015-10-10 19:16:58', 'no date', 'no date');
INSERT INTO `tech` VALUES ('114', 'no date', '0000-00-00', '0000-00-00', '韩惠美业', 'no date', '0', '0', 'no date', 'http://hanhuicom.test.resonance.net.cn/', '0', '0', '1', '已上线 gxhanhui.com', '2015-10-28 17:13:52', 'no date', 'no date');
INSERT INTO `tech` VALUES ('115', 'no date', '0000-00-00', '0000-00-00', '公司论坛', 'no date', '0', '0', 'no date', 'http://gzbbs.test.resonance.net.cn/', '0', '0', '1', '云1', '2015-10-29 15:32:09', 'no date', 'no date');
INSERT INTO `tech` VALUES ('116', 'no date', '0000-00-00', '0000-00-00', '建瑞投资', 'no date', '0', '0', 'no date', 'http://jianrui.test.resonance.net.cn/', '0', '0', '1', '未上线', '2015-11-09 01:00:57', 'no date', 'no date');
INSERT INTO `tech` VALUES ('117', 'no date', '0000-00-00', '0000-00-00', '公司com测试连接', 'no date', '0', '0', 'no date', 'http://resonancecomcn.test.resonance.net.cn/', '0', '0', '1', 'no date', '2015-11-09 18:09:51', 'no date', 'no date');
INSERT INTO `tech` VALUES ('118', 'no date', '0000-00-00', '0000-00-00', '明山泉', 'no date', '0', '0', 'no date', 'http://mingshanquancom.test.resonance.net.cn/', '0', '0', '1', 'no date', '2015-11-20 23:24:21', 'no date', 'no date');
INSERT INTO `tech` VALUES ('119', 'no date', '0000-00-00', '0000-00-00', '鼎盛的西数云测试链接', 'no date', '0', '0', 'no date', 'http://gxsdgroupcom.test.resonance.net.cn/', '0', '0', '1', 'no date', '2015-11-30 14:03:21', 'no date', 'no date');
INSERT INTO `tech` VALUES ('120', 'no date', '0000-00-00', '0000-00-00', '公司wiki', 'no date', '0', '0', 'no date', 'http://wiki.test.resonance.net.cn/', '0', '0', '1', '云1', '2015-12-11 11:46:38', 'no date', 'no date');
INSERT INTO `tech` VALUES ('121', 'no date', '0000-00-00', '0000-00-00', '项目进度管理', 'no date', '0', '0', 'no date', 'http://xftestgz.test.resonance.net.cn/', '0', '0', '1', 'http://xftestgz.test.resonance.net.cn/p.php', '2015-12-11 15:26:28', 'no date', '?m=in');
INSERT INTO `tech` VALUES ('122', 'no date', '0000-00-00', '0000-00-00', '和睦家', 'no date', '0', '0', 'no date', 'http://gxhmjcn.test.resonance.net.cn/', '0', '0', '1', '云1 测试', '2015-12-19 12:13:11', 'no date', 'no date');
INSERT INTO `tech` VALUES ('123', 'no date', '0000-00-00', '0000-00-00', '公司net.cn手机网站测试链接', 'no date', '0', '0', 'no date', 'http://mresonancenetcn.test.resonance.net.cn/', '0', '0', '1', 'no date', '2016-01-04 17:04:43', 'no date', '云1');
INSERT INTO `tech` VALUES ('124', 'no date', '0000-00-00', '0000-00-00', '公司com.cn手机网站测试链接', 'no date', '0', '0', 'no date', 'http://mresonancecomcn.test.resonance.net.cn/', '0', '0', '1', 'no date', '2016-01-06 19:41:33', 'no date', '云1');
INSERT INTO `tech` VALUES ('125', 'no date', '0000-00-00', '0000-00-00', '网站访问统计日志', 'no date', '0', '0', 'no date', 'http://log.test2.resonance.net.cn/', '0', '0', '1', 'no date', '2016-01-12 17:37:34', 'no date', 'no date');
INSERT INTO `tech` VALUES ('126', 'no date', '0000-00-00', '0000-00-00', '路安微网站', 'no date', '0', '0', 'no date', 'http://luan.test.resonance.net.cn/', '0', '0', '1', '云1 测试', '2016-02-01 10:09:35', 'no date', 'no date');
INSERT INTO `tech` VALUES ('127', 'no date', '0000-00-00', '0000-00-00', '意态新测试链接20160201', 'no date', '0', '0', 'no date', 'http://newtestyitai.test.resonance.net.cn/', '0', '0', '1', 'no date', '2016-02-18 18:58:04', 'no date', 'no date');
INSERT INTO `tech` VALUES ('128', 'no date', '0000-00-00', '0000-00-00', '二维码接口', 'no date', '0', '0', 'no date', 'http://t.cn/RGCWdxz', '0', '0', '1', '云1', '2016-02-25 15:08:28', 'no date', 'no date');
INSERT INTO `tech` VALUES ('129', 'no date', '0000-00-00', '0000-00-00', '威骏测试链接', 'no date', '0', '0', 'no date', 'http://oldweijun.test.resonance.net.cn/', '0', '0', '1', '云1', '2016-03-02 16:03:19', 'no date', 'no date');
INSERT INTO `tech` VALUES ('130', 'no date', '0000-00-00', '0000-00-00', '联筑旅游测试链接', 'no date', '0', '0', 'no date', 'http://gxlzly.test.resonance.net.cn/', '0', '0', '1', '云1 已经上线', '2016-03-02 16:05:09', 'no date', 'no date');
INSERT INTO `tech` VALUES ('131', 'no date', '0000-00-00', '0000-00-00', '瀚森木业', 'no date', '0', '0', 'no date', 'http://gxhansencom.test.resonance.net.cn/', '0', '0', '1', '测试链接 云1', '2016-03-16 14:39:10', 'no date', 'no date');
INSERT INTO `tech` VALUES ('132', 'no date', '0000-00-00', '0000-00-00', '艾娜微网站测试', 'no date', '0', '0', 'no date', 'http://aina.test.resonance.net.cn/index.php?s=/addon/WeiSite/WeiSite/preview.html', '0', '0', '1', '云1 上线 http://newaina.test.resonance.net.cn/index.php?s=/addon/WeiSite/WeiSite/blnxiangqing/id/91.html', '2016-03-30 18:48:14', 'no date', 'no date');
INSERT INTO `tech` VALUES ('133', 'no date', '0000-00-00', '0000-00-00', '天财医疗机械', 'no date', '0', '0', 'no date', 'http://tiancai.test.resonance.net.cn', '0', '0', '1', ' 云1 上线', '2016-04-28 14:12:22', 'no date', 'gxtcyl.com');
INSERT INTO `tech` VALUES ('134', 'no date', '0000-00-00', '0000-00-00', '天材手机版本', 'no date', '0', '0', 'no date', 'http://tiancaim.test.resonance.net.cn/', '0', '0', '1', '云1 上线', '2016-05-06 13:57:38', 'no date', 'm.gxtcyl.com');
INSERT INTO `tech` VALUES ('135', 'no date', '0000-00-00', '0000-00-00', '微官网天材', 'no date', '0', '0', 'no date', 'http://tiancaiweixin.test.resonance.net.cn/index.php?s=/addon/WeiSite/WeiSite/index.html', '0', '0', '1', '云1 上线', '2016-05-06 13:57:56', 'no date', 'w.gxtcyl.com');
INSERT INTO `tech` VALUES ('136', 'no date', '0000-00-00', '0000-00-00', '友裕门业pc', 'no date', '0', '0', 'no date', 'http://youyuemenye.test.resonance.net.cn/', '0', '0', '1', '云1 上线', '2016-06-04 12:09:36', 'no date', 'no date');
INSERT INTO `tech` VALUES ('137', 'no date', '0000-00-00', '0000-00-00', '友裕门业微官网', 'no date', '0', '0', 'no date', 'http://wyouyu.test.resonance.net.cn/index.php?s=/addon/WeiSite/WeiSite/index.html', '0', '0', '1', '云1 上线', '2016-06-04 12:10:37', 'no date', 'no date');
INSERT INTO `tech` VALUES ('138', 'no date', '0000-00-00', '0000-00-00', '微官网测试后台', 'no date', '0', '0', 'no date', 'http://neweixinadmin.test.resonance.net.cn/', '0', '0', '1', 'no date', '2016-06-04 12:35:25', 'no date', 'no date');
INSERT INTO `tech` VALUES ('139', 'no date', '0000-00-00', '0000-00-00', '新后台测试met', 'no date', '0', '0', 'no date', 'http://newadmin.test.resonance.net.cn/admin/', '0', '0', '1', 'no date', '2016-07-19 17:38:00', 'no date', 'no date');
INSERT INTO `tech` VALUES ('140', 'no date', '0000-00-00', '0000-00-00', '解压ZIP文件', 'no date', '0', '0', 'no date', 'http://newtest.test2.resonance.net.cn/czip.php', '0', '0', '1', 'no date', '2016-08-09 16:00:14', 'no date', 'no date');
INSERT INTO `tech` VALUES ('141', 'no date', '0000-00-00', '0000-00-00', '科隆福特', 'no date', '0', '0', 'no date', 'http://klft.test.resonance.net.cn/', '0', '0', '1', '云1 测试 纳网虚机上线 http://www.klftbeer.com/ 结', '2016-08-11 10:16:08', 'no date', 'no date');
INSERT INTO `tech` VALUES ('142', 'no date', '0000-00-00', '0000-00-00', '科隆福特手机网站', 'no date', '0', '0', 'no date', 'http://mklft.test.resonance.net.cn/', '0', '0', '1', '云1 测试 纳网虚机上线 http://m.klftbeer.com/ 结', '2016-08-15 15:56:22', 'no date', 'no date');
INSERT INTO `tech` VALUES ('143', 'no date', '0000-00-00', '0000-00-00', '在线编辑器', 'no date', '0', '0', 'no date', 'http://newtest.test2.resonance.net.cn/helpueditorutf8php/', '0', '0', '1', 'no date', '2016-08-18 11:30:39', 'no date', 'no date');
INSERT INTO `tech` VALUES ('146', 'no date', '0000-00-00', '0000-00-00', '新全通 域名空间都是客户自己', 'no date', '0', '0', 'no date', 'http://gxqtdz.test.resonance.net.cn/', '0', '0', '1', '云1 测试 结 上线客户空间免费测试域名 http://surge.cl524.4everdns.com/', '2016-10-10 15:05:52', 'no date', 'no date');
INSERT INTO `tech` VALUES ('145', 'no date', '0000-00-00', '0000-00-00', '昇航房地产', 'no date', '0', '0', 'no date', 'http://shenghang.test.resonance.net.cn/', '0', '0', '1', '云1 上线 结', '2016-09-22 10:52:10', 'no date', 'no date');
INSERT INTO `tech` VALUES ('147', 'no date', '0000-00-00', '0000-00-00', '新顺达', 'no date', '0', '0', 'no date', 'http://xsdstly.test.resonance.net.cn/', '0', '0', '1', '云1 测试  手机测试网址 http://mxsdstly.test.resonance.net.cn/  上线  新顺达 年后结', '2016-10-17 15:34:04', 'no date', 'no date');
INSERT INTO `tech` VALUES ('148', 'no date', '0000-00-00', '0000-00-00', '桂北', 'no date', '0', '0', 'no date', 'http://ragbncpy.test.resonance.net.cn/', '0', '0', '1', '云1 上线 结', '2016-10-30 18:35:34', 'no date', 'no date');
INSERT INTO `tech` VALUES ('149', 'no date', '0000-00-00', '0000-00-00', '桂北微官网', 'no date', '0', '0', 'no date', 'http://gbwx.test.resonance.net.cn/', '0', '0', '1', '云1 上线  结', '2016-10-30 18:36:29', 'no date', 'no date');
INSERT INTO `tech` VALUES ('150', 'no date', '0000-00-00', '0000-00-00', '广羽人微官网', 'no date', '0', '0', 'no date', 'http://gyrwgwsql.test2.resonance.net.cn/', '0', '0', '1', '云2 测试 结  手机也结', '2016-10-30 18:37:02', 'no date', 'no date');
INSERT INTO `tech` VALUES ('151', 'no date', '0000-00-00', '0000-00-00', '广羽人PC', 'no date', '0', '0', 'no date', 'http://gyrpc.test2.resonance.net.cn/', '0', '0', '1', '云2 测试 结', '2016-11-22 17:34:17', 'no date', 'no date');
INSERT INTO `tech` VALUES ('152', 'no date', '0000-00-00', '0000-00-00', '南宁市青秀区知识产权公共信息服务平台', 'no date', '0', '0', 'no date', 'http://nnszscq.test.resonance.net.cn/', '0', '0', '1', '云1 www.nnqxzscq.com 上线 域名西数 虚机 纳网  结', '2016-12-05 18:25:46', 'no date', 'no date');
INSERT INTO `tech` VALUES ('153', 'no date', '0000-00-00', '0000-00-00', '莱茵测试', 'no date', '0', '0', 'no date', 'http://laiyin.test.resonance.net.cn/', '0', '0', '1', '云1 测试  结 英文莱茵 http://enlaiyin.test.resonance.net.cn/ http://www.layncorp.com/ http://www.layn.com.cn/', '2017-01-07 23:45:10', 'no date', 'no date');
INSERT INTO `tech` VALUES ('154', 'no date', '0000-00-00', '0000-00-00', '华网达能微网站', 'no date', '0', '0', 'no date', 'http://hwdnwx.test.resonance.net.cn/', '0', '0', '1', '云1 测试 http://hwdnwx.test.resonance.net.cn/index.php?s=/addon/WeiSite/WeiSite/index.html  结', '2017-01-18 17:13:39', 'no date', 'no date');
INSERT INTO `tech` VALUES ('155', 'no date', '0000-00-00', '0000-00-00', '内部竞搞系统', 'no date', '0', '0', 'no date', 'http://team.test2.resonance.net.cn/', '0', '0', '1', '云2 管理员 a.php  会员u.php', '2017-02-27 16:08:24', 'no date', 'no date');
INSERT INTO `tech` VALUES ('156', 'no date', '0000-00-00', '0000-00-00', '闽钱', 'no date', '0', '0', 'no date', 'http://gxmqtz.com/', '0', '0', '1', '云2 上线   小温、小全 结', '2017-04-26 09:50:28', 'no date', 'no date');
INSERT INTO `tech` VALUES ('157', 'no date', '0000-00-00', '0000-00-00', '润垦手机网站', 'no date', '0', '0', 'no date', 'http://gxrunkun.test.resonance.net.cn/', '0', '0', '1', '云1 上线 小温、小美 结', '2017-05-12 14:18:23', 'no date', 'no date');
INSERT INTO `tech` VALUES ('158', 'no date', '0000-00-00', '0000-00-00', '零界点PC', 'no date', '0', '0', 'no date', 'http://zero.test2.resonance.net.cn/', '0', '0', '1', '云2 上线 小温、小美 结', '2017-06-02 17:19:56', 'no date', 'no date');
INSERT INTO `tech` VALUES ('159', 'no date', '0000-00-00', '0000-00-00', '蛙有道微官网', 'no date', '0', '0', 'no date', 'http://wayd.test.resonance.net.cn/index.php?s=/addon/WeiSite/WeiSite/index.html', '0', '0', '1', '云1 测试 小温、小全 上线 结', '2017-06-05 09:11:03', 'no date', 'no date');
INSERT INTO `tech` VALUES ('160', 'no date', '0000-00-00', '0000-00-00', '零界点微官网', 'no date', '0', '0', 'no date', 'http://lingjdwx.test.resonance.net.cn/', '0', '0', '1', '云1 测试 小美、黄洁 结', '2017-07-17 14:57:18', 'no date', 'no date');
INSERT INTO `tech` VALUES ('161', 'no date', '0000-00-00', '0000-00-00', '川小馆的问卷调查', 'no date', '0', '0', 'no date', 'http://chuanxiaoguan.test.resonance.net.cn/', '0', '0', '1', '云1 测试 陈兰 球哥 无提成？  无提成', '2017-07-29 15:06:20', 'no date', 'no date');
INSERT INTO `tech` VALUES ('162', 'no date', '0000-00-00', '0000-00-00', '欧陆婚纱', 'no date', '0', '0', 'no date', 'http://ouhu.test.resonance.net.cn/', '0', '0', '1', '云1 测试 小美、黄洁 无提成？  无提成', '2017-08-04 18:12:35', 'no date', 'no date');
INSERT INTO `tech` VALUES ('163', 'no date', '0000-00-00', '0000-00-00', '模饭先生', 'no date', '0', '0', 'no date', 'http://mofan.test.resonance.net.cn/index.php?s=/addon/WeiSite/WeiSite/index.html', '0', '0', '1', '云1 测试 小美、黄洁、球哥、可乐（部分布局） 结', '2017-08-17 11:11:47', 'no date', 'no date');
INSERT INTO `tech` VALUES ('164', 'no date', '0000-00-00', '0000-00-00', '北创投资pc', 'no date', '0', '0', 'no date', 'http://bcpc.test.resonance.net.cn/', '0', '0', '1', '云1 小美 结 上线', '2017-10-24 16:36:29', 'no date', 'no date');
INSERT INTO `tech` VALUES ('165', 'no date', '0000-00-00', '0000-00-00', '火速贸易', 'no date', '0', '0', 'no date', 'http://ihosu.test2.resonance.net.cn', '0', '0', '1', '云2  李 莫 结', '2017-11-01 00:38:13', 'no date', 'no date');
INSERT INTO `tech` VALUES ('166', 'no date', '0000-00-00', '0000-00-00', '火速贸易微信', 'no date', '0', '0', 'no date', 'http://ihosuwx.test2.resonance.net.cn/index.php?s=/addon/WeiSite/WeiSite/index.html', '0', '0', '1', '云2  小美 莫 结', '2017-11-01 11:34:09', 'no date', 'no date');
INSERT INTO `tech` VALUES ('167', 'no date', '0000-00-00', '0000-00-00', '北创微官网', 'no date', '0', '0', 'no date', 'http://bcwx.test2.resonance.net.cn/index.php?s=/addon/WeiSite/WeiSite/index.html', '0', '0', '1', '云2 李 可乐 结', '2017-11-02 14:37:09', 'no date', 'no date');
INSERT INTO `tech` VALUES ('168', 'no date', '0000-00-00', '0000-00-00', '华海家具', 'no date', '0', '0', 'no date', 'http://huahai.test2.resonance.net.cn/', '0', '0', '1', '云2  李 可乐  本月提成单子  北创投pc 微信   光宙致宇  华海的已经结款  可以上线了  客户域名 客户空间 源码已经发给客户   结  上线', '2017-11-06 09:52:03', 'no date', 'no date');
INSERT INTO `tech` VALUES ('169', 'no date', '0000-00-00', '0000-00-00', '佳年PC', 'no date', '0', '0', 'no date', 'http://jianian.test.resonance.net.cn', '0', '0', '1', '云1  小美 可乐 莫 结', '2017-12-23 18:32:17', 'no date', 'no date');
INSERT INTO `tech` VALUES ('170', 'no date', '0000-00-00', '0000-00-00', '多张图片上传', 'no date', '0', '0', 'no date', 'https://ssl.resonance.net.cn/up/', '0', '0', '1', '内部小程序图床工具', '2017-12-29 13:56:51', 'no date', 'no date');
INSERT INTO `tech` VALUES ('171', 'no date', '0000-00-00', '0000-00-00', '易企秀', 'no date', '0', '0', 'no date', 'http://eqx.test.resonance.net.cn/', '0', '0', '1', '云1 内用', '2018-01-08 17:42:31', 'no date', 'no date');
INSERT INTO `tech` VALUES ('172', 'no date', '0000-00-00', '0000-00-00', '公司网站建设pc', 'no date', '0', '0', 'no date', 'http://newcomcnpc.test.resonance.net.cn', '0', '0', '1', '云1 李 可乐布局 莫设计', '2018-01-12 12:55:27', 'no date', 'no date');
INSERT INTO `tech` VALUES ('173', 'no date', '0000-00-00', '0000-00-00', '公司网站建设手机站', 'no date', '0', '0', 'no date', 'http://comcnm.test.resonance.net.cn', '0', '0', '1', '云1 李 可乐布局 莫设计', '2018-01-15 12:37:27', 'no date', 'no date');
INSERT INTO `tech` VALUES ('174', 'no date', '0000-00-00', '0000-00-00', '公司设计pc', 'no date', '0', '0', 'no date', 'http://netcnpc.test.resonance.net.cn', '0', '0', '1', '云1 小美 小军 布局 莫设计', '2018-01-16 19:21:18', 'no date', 'no date');
INSERT INTO `tech` VALUES ('175', 'no date', '0000-00-00', '0000-00-00', '公司设计netcn手机站', 'no date', '0', '0', 'no date', 'http://netcnm.test.resonance.net.cn/', '0', '0', '1', '云1 小美 李布局 莫设计', '2018-01-17 10:56:29', 'no date', 'no date');
INSERT INTO `tech` VALUES ('176', 'no date', '0000-00-00', '0000-00-00', '公司新微官网', 'no date', '0', '0', 'no date', 'http://gzwx.test.resonance.net.cn', '0', '0', '1', '云1 小美 可乐布局 莫设计', '2018-01-23 10:29:16', 'no date', 'no date');
INSERT INTO `tech` VALUES ('177', 'no date', '0000-00-00', '0000-00-00', '桂湖木业PC', 'no date', '0', '0', 'no date', 'http://gxghmy.test2.resonance.net.cn/', '0', '0', '1', '云2 可乐 李 结', '2018-02-28 17:11:04', 'no date', 'no date');
INSERT INTO `tech` VALUES ('178', 'no date', '0000-00-00', '0000-00-00', '桂湖木业手机版', 'no date', '0', '0', 'no date', 'http://gxghmyshouji.test2.resonance.net.cn', '0', '0', '1', '云2 可乐 李 结', '2018-03-03 17:49:27', 'no date', 'no date');
INSERT INTO `tech` VALUES ('179', 'no date', '0000-00-00', '0000-00-00', '桂湖木业微信', 'no date', '0', '0', 'no date', 'http://ghmywx.test2.resonance.net.cn/index.php?s=/addon/WeiSite/WeiSite/index.html', '0', '0', '1', '云2 可乐 小美 结 上线', '2018-03-05 10:08:57', 'no date', 'no date');
INSERT INTO `tech` VALUES ('180', 'no date', '0000-00-00', '0000-00-00', '易合建设', 'no date', '0', '0', 'no date', 'http://yhjs.test2.resonance.net.cn/', '0', '0', '1', '云2 可乐 李 结 上线', '2018-03-19 17:35:39', 'no date', 'no date');
INSERT INTO `tech` VALUES ('181', 'no date', '0000-00-00', '0000-00-00', '响应式网站测试', 'no date', '0', '0', 'no date', 'http://xiangyswz.test2.resonance.net.cn', '0', '0', '1', '云2 可乐 李 小美', '2018-03-31 18:57:27', 'no date', 'no date');
INSERT INTO `tech` VALUES ('182', 'no date', '0000-00-00', '0000-00-00', '浩百源手机', 'no date', '0', '0', 'no date', 'http://hbysj.test2.resonance.net.cn/', '0', '0', '1', '云2 可乐 李 结 上线', '2018-04-10 16:41:27', 'no date', 'no date');
INSERT INTO `tech` VALUES ('183', 'no date', '0000-00-00', '0000-00-00', '元达建设', 'no date', '0', '0', 'no date', 'http://gdydjs.test2.resonance.net.cn/', '0', '0', '1', '云2 可乐 李 500M 结 上线', '2018-04-17 16:11:14', 'no date', 'no date');
INSERT INTO `tech` VALUES ('184', 'no date', '0000-00-00', '0000-00-00', '笆徽田', 'no date', '0', '0', 'no date', 'http://bhtsj.test2.resonance.net.cn/', '0', '0', '1', '云2 可乐 李 500M 结 上线', '2018-05-02 19:26:22', 'no date', 'no date');
INSERT INTO `tech` VALUES ('185', 'no date', '0000-00-00', '0000-00-00', '本地车', 'no date', '0', '0', 'no date', 'http://bdc.test2.resonance.net.cn/', '0', '0', '1', '云2 莫 可乐 李', '2018-05-28 00:25:04', 'no date', 'no date');
INSERT INTO `tech` VALUES ('186', 'no date', '0000-00-00', '0000-00-00', '伯顿berton', 'no date', '0', '0', 'no date', 'http://bote.test2.resonance.net.cn', '0', '0', '1', '云2 可乐 李 300M 香港 结', '2018-06-30 19:00:57', 'no date', 'no date');
INSERT INTO `tech` VALUES ('187', 'no date', '0000-00-00', '0000-00-00', '国税局', 'no date', '0', '0', 'no date', 'http://guoshuiju.test2.resonance.net.cn/', '0', '0', '1', '云2 可乐 李 客户本地内网 交于客户', '2018-07-05 19:53:02', 'no date', 'no date');
INSERT INTO `tech` VALUES ('188', 'no date', '0000-00-00', '0000-00-00', '班测试', 'no date', '0', '0', 'no date', 'http://bantestnetcn.test2.resonance.net.cn', '0', '0', '1', '班', '2018-07-19 14:15:54', 'no date', 'no date');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pas` varchar(50) DEFAULT NULL,
  `salt` varchar(9) DEFAULT NULL,
  `login_time` datetime DEFAULT NULL,
  `name` varchar(16) DEFAULT NULL,
  `qq` bigint(20) DEFAULT NULL,
  `tel` bigint(20) DEFAULT NULL,
  `bm` int(1) DEFAULT NULL,
  `re_time` datetime DEFAULT NULL,
  `login_salt` char(36) DEFAULT NULL,
  `login_ip` char(36) DEFAULT NULL,
  `lock` int(1) DEFAULT '0',
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('9', '4caa9c74e7a0c0a4e32ac8d17286d1ea', '1HSQ8dc33', '2015-04-24 14:19:40', '共振设计', '2500152288', '13607875450', '1', '2015-04-24 14:19:31', 'f24ce76925664f114f28cd0603575cd6', '2130706433', '0');
INSERT INTO `user` VALUES ('8', '257e6808bdd0d9e95b9b0526795d1be5', '61VUwljBQ', '2018-07-16 16:07:23', '李振球', '2500152288', '13607875450', '1', '2015-04-24 13:10:02', '84135f286d9fc5ba93c7677bfbc95705', '3702376829', '1');
INSERT INTO `user` VALUES ('10', '42bdaa726512a83da47774403816f7ba', 'LqQX1Ad6Y', '2015-04-24 14:22:49', '共振', '2500152288', '13607875450', '1', '2015-04-24 14:22:42', 'fb1543f4720504bace3c3a91029dbb73', '2130706433', '0');
INSERT INTO `user` VALUES ('11', '6eb8e11c01d315355a16995ef6806f6a', 'YZ0HMXMe1', '2015-10-08 11:25:19', '莫伟琳', '1647412718', '14777794566', '1', '2015-08-18 17:58:23', '0afd03c78b3db33c89fb511a5976f126', '3702329754', '1');
INSERT INTO `user` VALUES ('12', '7b56271708794ffdc36b4c987a072542', '1NvU4vm5O', '2015-04-27 19:13:58', 'lizhenqiu', '2500152288', '13607875450', '1', '2015-04-27 19:13:58', '5f0a0525eac92827f9ca551b0f4c48d6', '1962688887', '0');
INSERT INTO `user` VALUES ('24', '57a28c3541d2ac1fdd6de693e080e295', 'QsQhJhftp', '2017-04-08 09:34:05', 'gongzhen', '2500152288', '13607875450', '1', '2015-05-08 15:47:02', '6247f7fdf54ce837ff4c4c4561e0e73c', '976996572', '1');
INSERT INTO `user` VALUES ('14', '5986fab85f201290387b8c5360642ed8', 'iufZw3imA', '2015-05-15 18:24:56', '许崇凰', '3093550971', '18275953794', '1', '2015-05-08 09:16:25', 'a5c08fd4d40125ff4f3a377dca32dc21', '3702329509', '1');
INSERT INTO `user` VALUES ('19', 'b52605df4e701907f7c3fb645ac7419f', 'qOagf7Ff5', '2015-05-09 18:08:08', '王宇箭', '3237502868', '18577454065', '1', '2015-05-08 10:02:30', '2baa6198e220048cc50976c46c5ebb47', '1962688789', '1');
INSERT INTO `user` VALUES ('17', '50314d74738e4422376a71b08f25626b', '2yIg7xqY6', '2015-05-08 09:28:13', '李翠翠', '772669465', '13607814713', '3', '2015-05-08 09:17:53', 'cc5a2a2afd5d37ba98fa8a3a96a2de03', '1962688789', '1');
INSERT INTO `user` VALUES ('18', '5c9606b93b890a500d4d1a6227679b89', 'Ig5ca23bL', '2015-05-14 18:03:02', '邓元', '3241481545', '18277816963', '1', '2015-05-08 09:19:53', 'a55702e4d4c063a43440b6a8b2d31f3d', '3702329509', '1');
INSERT INTO `user` VALUES ('25', '342deab4dd49b07b2e5af1270d5019b8', 'ZnfZn0l3q', '2015-05-09 15:30:30', '罗总', '1226850955', '15994435661', '1', '2015-05-09 11:47:54', 'a429236da425b72ec8de0d1664303202', '1962721223', '1');
INSERT INTO `user` VALUES ('27', '6ca7fba7f524075ff6c44528fb81182b', 'wUiLstcbi', '2016-10-10 11:32:12', 'jjzslsk', '123456', '12345678912', '1', '2016-10-10 11:32:12', 'a6f4f2801704858a9f4a2a1c23c51cca', '2871365844', '0');

-- ----------------------------
-- Table structure for `xm`
-- ----------------------------
DROP TABLE IF EXISTS `xm`;
CREATE TABLE `xm` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `time` datetime DEFAULT NULL,
  `user` varchar(16) DEFAULT NULL,
  `jd` text,
  `xm_name` varchar(180) DEFAULT NULL,
  `xm_time` datetime DEFAULT NULL,
  `zt_time` datetime DEFAULT NULL,
  `xm_info` text,
  `xm_user` varchar(16) DEFAULT NULL,
  `xm_id` int(10) unsigned DEFAULT '0',
  `xm_zt` int(10) unsigned DEFAULT '0',
  `hq_user` varchar(16) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=168 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xm
-- ----------------------------
INSERT INTO `xm` VALUES ('38', '2015-04-24 22:46:20', '李振球', '还有产品三级分类没有做好', null, null, '0000-00-00 00:00:00', null, null, '37', '0', null, '8');
INSERT INTO `xm` VALUES ('37', null, null, null, '意态网购商城', '2015-04-24 22:45:32', '2015-04-25 00:57:04', '1、先做好基本官网展示页面\r\n2、还有产品三级分类没有做好', '李振球', '0', '0', null, '8');
INSERT INTO `xm` VALUES ('39', null, null, null, '测试项目名称', '2015-04-24 23:25:45', '2015-04-25 00:48:53', '测试项目名称项目说明', '李振球', '0', '1', '李振球', '8');
INSERT INTO `xm` VALUES ('40', '2015-04-24 23:26:04', '李振球', '测试项目填写报告！', null, null, null, null, null, '39', '0', null, '8');
INSERT INTO `xm` VALUES ('41', '2015-04-24 23:41:26', '李振球', '我是填写内容这个是后期修复bug用的。', null, null, null, null, null, '39', '0', null, '8');
INSERT INTO `xm` VALUES ('42', '2015-04-24 23:57:49', '李振球', 'xxx网站上传图片出现405错误！&amp;lt;br /&amp;gt;\r\n网址链接：http://xxxx', null, null, null, null, null, '39', '0', null, '8');
INSERT INTO `xm` VALUES ('43', '2015-04-24 23:58:32', '李振球', '已经修改。请测试', null, null, null, null, null, '39', '0', null, '8');
INSERT INTO `xm` VALUES ('44', null, null, null, '测试网站项目', '2015-04-25 00:00:08', '2015-04-25 01:33:53', '请认真填写网站注意事项哦', '李振球', '0', '1', '李振球', '8');
INSERT INTO `xm` VALUES ('45', '2015-04-25 00:07:16', '李振球', '请认真填写网站注意事项哦', null, null, null, null, null, '44', '0', null, '8');
INSERT INTO `xm` VALUES ('46', '2015-04-25 00:05:00', '李振球', '我是项目2可是我有东西要修改。所以我提交修改内容后我就排在前面了哦。', null, null, null, null, null, '44', '0', null, '8');
INSERT INTO `xm` VALUES ('47', '2015-04-25 00:07:16', '李振球', '我是项目2可是我有东西要修改。所以我提交修改内容后我就排在前面了哦。', null, null, null, null, null, '44', '0', null, '8');
INSERT INTO `xm` VALUES ('48', '2015-04-25 00:19:44', '李振球', '测试', null, null, null, null, null, '44', '0', null, '8');
INSERT INTO `xm` VALUES ('50', '2015-04-25 00:22:48', '李振球', '我是要修改的内容。', null, null, null, null, null, '39', '1', null, '8');
INSERT INTO `xm` VALUES ('49', '2015-04-25 00:20:54', '李振球', '我是项目2可是我有东西要修改。所以我提交修改内容后我就排在前面了哦。', null, null, null, null, null, '44', '0', null, '8');
INSERT INTO `xm` VALUES ('51', '2015-04-25 00:27:44', '李振球', '测试', null, null, null, null, null, '37', '0', null, '8');
INSERT INTO `xm` VALUES ('52', '2015-04-25 00:37:00', '李振球', '我改好了', null, null, null, null, null, '44', '1', null, '8');
INSERT INTO `xm` VALUES ('53', '2015-04-25 00:48:17', '李振球', '这个网站有需要修改的地方。', null, null, null, null, null, '39', '1', null, '8');
INSERT INTO `xm` VALUES ('54', null, null, null, '添加一个新项目测试下看看', '2015-04-25 00:50:39', '2015-04-25 00:56:59', '我是新项目网站说明\r\n比如要注意的地方\r\n会存在误会的地方，详细说明下好点', '李振球', '0', '1', null, '8');
INSERT INTO `xm` VALUES ('55', '2015-04-25 00:50:57', '李振球', '我是李振球 我跟进这个项目 并且负责后期的维护工作', null, null, null, null, null, '54', '0', null, '8');
INSERT INTO `xm` VALUES ('56', '2015-04-25 00:51:23', '李振球', '这个网站还有一点点小问题哦', null, null, null, null, null, '44', '1', null, '8');
INSERT INTO `xm` VALUES ('59', null, null, null, '共振后台管理项目--技术部', '2015-04-25 01:05:20', null, '1、方便技术部管理域名\r\n2、快速查找到相关网站信息等\r\n3、项目管理实时监测更新，保证工期内完成项目上线。', '李振球', '0', '0', null, '8');
INSERT INTO `xm` VALUES ('60', '2015-04-25 01:06:24', '李振球', '1、已经完成会员系统&amp;lt;br /&amp;gt;\r\n2、在测试各个页面功能&amp;lt;br /&amp;gt;\r\n3、权限校验没完成', null, null, null, null, null, '59', '0', null, '8');
INSERT INTO `xm` VALUES ('61', '2015-04-25 01:07:06', '李振球', '测试填写报告排序', null, null, null, null, null, '59', '0', null, '8');
INSERT INTO `xm` VALUES ('62', '2015-04-25 01:15:49', '李振球', '进行中的项目已经排序好 项目按旧到新往下排序 某个项目的进度报告按 新到旧往下排序。', null, null, null, null, null, '59', '0', null, '8');
INSERT INTO `xm` VALUES ('63', '2015-04-25 01:16:52', '李振球', '测试需要修复的页面 点击 改好了 是否 状态 变回 结款项目 和 填写内容 进度报告排序', null, null, null, null, null, '44', '1', null, '8');
INSERT INTO `xm` VALUES ('64', '2015-04-25 01:19:48', '李振球', '测试需要修复的页面 点击 改好了 是否 状态 变回 结款项目 和 填写内容 进度报告排序2', null, null, null, null, null, '44', '1', null, '8');
INSERT INTO `xm` VALUES ('65', '2015-04-25 01:20:15', '李振球', '测试需要修复的页面 点击 改好了 是否 状态 变回 结款项目 和 填写内容 进度报告排序3', null, null, null, null, null, '44', '1', null, '8');
INSERT INTO `xm` VALUES ('66', '2015-04-25 01:21:22', '李振球', '测试需要修复的页面 点击 改好了 是否 状态 变回 结款项目 和 填写内容 进度报告排序4', null, null, null, null, null, '44', '1', null, '8');
INSERT INTO `xm` VALUES ('67', '2015-04-25 01:22:10', '李振球', '测试需要修复的页面 点击 改好了 是否 状态 变回 结款项目 和 填写内容 进度报告排序4', null, null, null, null, null, '44', '1', null, '8');
INSERT INTO `xm` VALUES ('68', '2015-04-25 01:22:44', '李振球', '测试需要修复的页面 点击 改好了 是否 状态 变回 结款项目 和 填写内容 进度报告排序6', null, null, null, null, null, '44', '1', null, '8');
INSERT INTO `xm` VALUES ('69', '2015-04-25 01:26:12', '李振球', '测试需要修复的页面 点击 改好了 是否 状态 变回 结款项目 和 填写内容 进度报告排序7', null, null, null, null, null, '44', '1', null, '8');
INSERT INTO `xm` VALUES ('70', '2015-04-25 01:30:18', '李振球', '提交修改好状态后 不生效 问题：if 语句里面 没有括号起 前面的条件 导致后面的 条件判断失误', null, null, null, null, null, '44', '1', null, '8');
INSERT INTO `xm` VALUES ('71', '2015-04-25 01:33:21', '李振球', '同时使用多个 更新 导致 后面的 更新 如果与 前面的 有条件 判断 冲突 这 当 前面的 更新未完成的时候 &amp;lt;br /&amp;gt;\r\n后面的 就执行 更新 导致 条件 不成立 失败 解决 方法 加入 sleep 延时', null, null, null, null, null, '44', '1', null, '8');
INSERT INTO `xm` VALUES ('72', '2015-04-25 01:33:42', '李振球', '改好了', null, null, null, null, null, '44', '1', null, '8');
INSERT INTO `xm` VALUES ('73', '2015-04-25 01:39:08', '李振球', '可能存在问题：点击链接 不能更新 是原来的 缓存内容 解决方法：加入随机版本强制更新缓存', null, null, null, null, null, '59', '0', null, '8');
INSERT INTO `xm` VALUES ('74', null, null, null, '添加项目', '2015-04-25 01:41:38', '2015-04-25 01:43:34', '项目说明测试', '李振球', '0', '2', '李振球', '8');
INSERT INTO `xm` VALUES ('75', '2015-04-25 01:41:53', '李振球', '测试结款', null, null, null, null, null, '74', '0', null, '8');
INSERT INTO `xm` VALUES ('76', '2015-04-25 01:42:50', '李振球', '测试 后期修复功能页面 填写修改内容', null, null, null, null, null, '74', '1', null, '8');
INSERT INTO `xm` VALUES ('77', '2015-04-25 01:43:48', '李振球', '测试 后期修复功能页面 填写修改内容2', null, null, null, null, null, '74', '2', null, '8');
INSERT INTO `xm` VALUES ('78', '2015-04-27 09:11:59', '李振球', '产品分类页面修改完成', null, null, null, null, null, '37', '0', null, '8');
INSERT INTO `xm` VALUES ('79', '2015-05-08 08:44:51', '测试', '再等待会员页面和购买页面！', null, null, null, null, null, '37', '0', null, '8');
INSERT INTO `xm` VALUES ('112', '2015-05-08 15:49:45', 'gongzhen', '我是进度报告！', null, null, null, null, null, '111', '0', null, '24');
INSERT INTO `xm` VALUES ('81', null, null, null, '中艺金融微官网', '2015-05-08 08:50:50', null, '中艺金融微官网\r\n===============等待客户确认结款！', '李振球', '0', '0', null, '8');
INSERT INTO `xm` VALUES ('113', '2015-05-08 15:49:57', 'gongzhen', '我是进度报告2哦！', null, null, null, null, null, '111', '0', null, '24');
INSERT INTO `xm` VALUES ('84', null, null, null, '东盟改版', '2015-05-08 09:21:46', null, '东盟二中改版\r\n时间===', '李翠翠', '0', '0', null, '17');
INSERT INTO `xm` VALUES ('85', '2015-05-08 09:22:07', '李翠翠', '今天的工作总结！', null, null, null, null, '李翠翠', '84', '0', null, '8');
INSERT INTO `xm` VALUES ('109', null, null, null, '测', '2015-05-08 15:35:16', '2015-05-08 15:51:21', '地方撒旦', '注册', '0', '1', null, '20');
INSERT INTO `xm` VALUES ('110', '2015-05-08 15:35:22', '注册', '发大水发', null, null, null, null, null, '109', '0', null, '20');
INSERT INTO `xm` VALUES ('111', null, null, null, 'gongzhen', '2015-05-08 15:49:20', null, '南宁共振广告设计项目说明\r\n请填写好项目说明 注意事项 和 进度 \r\n开展工作过程中遇到问题 困难~！每天的工作内容和总结。', 'gongzhen', '0', '0', null, '24');
INSERT INTO `xm` VALUES ('115', null, null, null, '东盟中学改版--后台', '2015-05-08 16:30:25', null, '还有 内容页面 文章留言 和 校长信箱 没 做', '李振球', '0', '0', null, '8');
INSERT INTO `xm` VALUES ('116', null, null, null, '金九消防微官网效果图', '2015-05-08 17:42:51', null, '我是项目说明', '许崇凰', '0', '0', null, '14');
INSERT INTO `xm` VALUES ('117', null, null, null, '金九消防微官网首页效果图', '2015-05-08 17:45:13', null, '设计两款不同风格的金九微官网首页效果图', '邓元', '0', '0', null, '18');
INSERT INTO `xm` VALUES ('118', '2015-05-08 17:56:49', '许崇凰', '今天的主要工作内容为：完成了金九消防微官网首页的一个效果图', null, null, null, null, null, '116', '0', null, '14');
INSERT INTO `xm` VALUES ('114', '2015-05-08 15:52:25', '李振球', '网页设计已经移交到后台套模板', null, null, null, null, null, '84', '0', null, '8');
INSERT INTO `xm` VALUES ('106', '2015-05-08 15:11:38', '王宇箭', '一方海外官网扩展签证服务支付宝付款功能（已完成）&amp;lt;br /&amp;gt;\r\n一方海外官网扩展签证服务网银在线付款功能（已完成）', null, null, null, null, '王宇箭', '83', '0', null, '19');
INSERT INTO `xm` VALUES ('107', '2015-05-08 15:12:10', '王宇箭', '一方海外官网扩展签证服务支付宝付款功能（已完成）&amp;lt;br /&amp;gt;\r\n一方海外官网扩展签证服务网银在线付款功能（已完成）', null, null, null, null, '王宇箭', '0', '0', null, '19');
INSERT INTO `xm` VALUES ('108', '2015-05-08 15:14:04', '王宇箭', '维安特扩展公众号微信支付功能（缺少微信商户支付秘钥，已汇报莫经理，等待客户提供秘钥）', null, null, null, null, '王宇箭', '107', '0', null, '19');
INSERT INTO `xm` VALUES ('119', '2015-05-08 17:59:12', '李振球', '测试 换行&amp;lt;br /&amp;gt;\r\n我是换行 测试 看看 ！', null, null, null, null, null, '59', '0', null, '8');
INSERT INTO `xm` VALUES ('120', null, null, null, '金九微网站首页设计', '2015-05-08 18:01:55', null, '内容：首页效果图设计两版 时间：7-9号', '李翠翠', '0', '0', null, '17');
INSERT INTO `xm` VALUES ('121', '2015-05-08 18:04:36', '李翠翠', '今天的工作主要是找素材已经参考相关微网站设计， 已经设计出两款效果图  ， 但是细节还没有处理好 ，  明天仔细修改。', null, null, null, null, null, '120', '0', null, '17');
INSERT INTO `xm` VALUES ('122', '2015-05-08 18:06:10', '李翠翠', '昨天做了有关东盟中学的‘校长信箱’这块内容，早上已交给李经理。', null, null, null, null, null, '84', '0', null, '17');
INSERT INTO `xm` VALUES ('123', '2015-05-08 18:26:49', '邓元', '完成一个首页效果图，其中遇到的难点是：1', null, null, null, null, null, '117', '0', null, '18');
INSERT INTO `xm` VALUES ('124', '2015-05-08 19:55:40', '李振球', '东盟中学的‘校长信箱’  提交 重置 按钮 错误显示！', null, null, null, null, null, '120', '0', null, '8');
INSERT INTO `xm` VALUES ('125', '2015-05-08 20:02:27', '李振球', '导航栏目 教科之窗 是否存在？', null, null, null, null, null, '120', '0', null, '8');
INSERT INTO `xm` VALUES ('126', '2015-05-09 09:00:20', '李振球', '    遇到的 难点是   ？', null, null, null, null, null, '117', '0', null, '8');
INSERT INTO `xm` VALUES ('127', '2015-05-09 14:54:46', '罗总', '罗总回复', null, null, null, null, null, '111', '0', null, '25');
INSERT INTO `xm` VALUES ('128', '2015-05-09 15:05:26', '罗总', '做得不错！', null, null, null, null, null, '120', '0', null, '25');
INSERT INTO `xm` VALUES ('129', '2015-05-09 17:29:48', '李翠翠', '两款设计图已初步完成，已上交经理', null, null, null, null, null, '120', '0', null, '17');
INSERT INTO `xm` VALUES ('130', '2015-05-09 18:03:00', '许崇凰', '今天的工作内容为：完成了金九消防微官网首页的第二个效果图。遇到的工作难题为在用FTP进行文件上传的时候，文件传到一半就发生错误。', null, null, null, null, null, '116', '0', null, '14');
INSERT INTO `xm` VALUES ('131', '2015-05-09 18:09:17', '王宇箭', '球衣定制网站Flash技术储备', null, null, null, null, null, '107', '0', null, '19');
INSERT INTO `xm` VALUES ('132', null, null, null, '金九消防微官网首页效果图设计', '2015-05-09 18:12:11', null, '需要做两款不同风格的首页效果图', '邓元', '0', '0', null, '18');
INSERT INTO `xm` VALUES ('133', '2015-05-09 18:13:45', '邓元', '今天完成了金九消防微官网的首页效果图设计，按时提交任务给上级领导。基本上没遇到太难的问题，任务如期完成。', null, null, null, null, null, '132', '0', null, '18');
INSERT INTO `xm` VALUES ('134', '2015-05-10 13:43:16', '李振球', '金九的项目没有做完 所以不用添加多个相同的项目 直接在项目的下面填写当天的进度就可以了 ', null, null, null, null, null, '132', '0', null, '8');
INSERT INTO `xm` VALUES ('135', '2015-05-10 13:44:24', '李振球', '技术部 近期会针对网页设计 开发一套系统 方便你们管理和上传设计好的网站 会解决 ftp管理上传文件繁琐麻烦等问题', null, null, null, null, null, '116', '0', null, '8');
INSERT INTO `xm` VALUES ('136', null, null, null, '南宁市东盟中学改版', '2015-05-11 10:59:29', null, '网站已经内侧，未来上线，已由李振球和李翠翠测试提交商务部莫经理。', '李振球', '0', '0', null, '8');
INSERT INTO `xm` VALUES ('137', null, null, null, '广西南广鲁班教育投资有限公司', '2015-05-12 08:56:51', null, '首页效果图两款以及微官网两款', '李翠翠', '0', '0', null, '17');
INSERT INTO `xm` VALUES ('138', '2015-05-12 08:58:27', '李翠翠', '昨天下午下单  之后收集相关素材以及参考', null, null, null, null, null, '137', '0', null, '17');
INSERT INTO `xm` VALUES ('139', null, null, null, '广西南广鲁班教育投资有限公司', '2015-05-12 09:02:55', null, '设计两款不同风格的官网首页效果图和两款微官网首页效果图 ', '邓元', '0', '0', null, '18');
INSERT INTO `xm` VALUES ('140', null, null, null, '南广鲁班', '2015-05-12 09:03:12', null, '规定完成的时间：5月11号下午至5月13号下午六点下班之前\r\n要求完成的内容：pc端网站首页效果图两款不同的风格，微官网首页两款不同的风格', '许崇凰', '0', '0', null, '14');
INSERT INTO `xm` VALUES ('141', '2015-05-12 09:08:25', '许崇凰', '今天的工作主要是对金九微官网的首页效果图做修改（注：补5月11号）', null, null, null, null, null, '140', '0', null, '14');
INSERT INTO `xm` VALUES ('142', '2015-05-12 09:11:34', '邓元', '接到项目后，我就开始着手设计微官网首页效果图设计，通过浏览其他设计页面，慢慢根据要求进行设计，速度是比较慢的，感觉再短时间内会完成不了任务的样子，下班后还是加班一段时间，时间有限所以必须多挤出点时间来做了。', null, null, null, null, null, '139', '0', null, '18');
INSERT INTO `xm` VALUES ('143', '2015-05-13 17:59:23', '李翠翠', '1两款首页以及微网设计图已经做完  &amp;lt;br /&amp;gt;\r\n2东盟中学细节测试修改&amp;lt;br /&amp;gt;\r\n3本位咖啡会员系统注册页界面设计', null, null, null, null, null, '137', '0', null, '17');
INSERT INTO `xm` VALUES ('144', '2015-05-13 18:01:23', '许崇凰', '今天的主要工作内容是完成了南广鲁班pc端官网首页和微官网的首页', null, null, null, null, null, '140', '0', null, '14');
INSERT INTO `xm` VALUES ('145', null, null, null, '南广鲁班教育投资公司首页效果图', '2015-05-13 20:23:38', null, '要求做两个官网效果图和两个微官网首页效果图', '邓元', '0', '0', null, '18');
INSERT INTO `xm` VALUES ('146', '2015-05-13 20:50:32', '邓元', '今天的任务相当大，因为要交任务了，但是自己还有一个多的页面没有完成，早上用几个小时把三个页面完善了一下以及做好页面浏览的简单布局，后面利用午饭时间和下午班时间去做最后一个页面，那时候感觉比平时紧张很多，因为害怕自己做太慢，没办法完成任务而被够钱，而且又找不到头绪，到最后一点点添加，大体上把最后一个页面做出来了，然后匆匆的放到服务器上，把效果交给经理过目了。 交完之后我也发现有一些差错，然后我接着改一下，改好了再到服务器上，其中有一个功能让我给多加了，当罗总提到的时候我也意识到自己的做法不对了，我没有做到细心和完善，我会牢记这个错误，以后努力去考虑全面一点，多问明白一点。', null, null, null, null, null, '145', '0', null, '18');
INSERT INTO `xm` VALUES ('147', null, null, null, '修改南广鲁班教育投资首页效果图页面', '2015-05-14 18:07:15', null, '对南广鲁班教育投资首页效果图页面进行整改', '邓元', '0', '0', null, '18');
INSERT INTO `xm` VALUES ('148', null, null, null, '本位咖啡会员系统', '2015-05-14 18:09:19', null, '登录+注册+个人中心+会员管理   配合技术老王 负责界面设计\r\n', '李翠翠', '0', '0', null, '17');
INSERT INTO `xm` VALUES ('149', '2015-05-14 18:10:36', '李翠翠', '登录与个人中心设计以及配合老王进行手机调试', null, null, null, null, null, '148', '0', null, '17');
INSERT INTO `xm` VALUES ('150', '2015-05-14 18:13:35', '邓元', '自己去找出页面上不足或者不符合要求的地方并修改，改到自己觉得还行为止，但是肯定还有我没有注意到和设计不够好的地方，等经理提出意见后继续做修改。', null, null, null, null, null, '147', '0', null, '18');
INSERT INTO `xm` VALUES ('151', null, null, null, '一方海外改版', '2015-05-14 18:41:12', null, '下单时间5月13号下午下班前\r\n要求完成的时间5月15号下班前\r\n要求完成的内容：一方海外首页两款不同的改版', '许崇凰', '0', '0', null, '14');
INSERT INTO `xm` VALUES ('152', '2015-05-14 18:42:49', '许崇凰', '今天的主要工作内容为：完成了一款一方海外首页改版的效果图', null, null, null, null, null, '151', '0', null, '14');
INSERT INTO `xm` VALUES ('153', '2015-05-15 14:46:34', '王宇箭', '咖啡公众号会员功能开发', null, null, null, null, null, '107', '0', null, '19');
INSERT INTO `xm` VALUES ('154', '2015-05-15 18:27:27', '李翠翠', '配合老王弄会员系统', null, null, null, null, null, '148', '0', null, '17');
INSERT INTO `xm` VALUES ('155', null, null, null, '英凯文具首页切片布局', '2015-05-15 18:28:54', null, '完善英凯文具的首页布局', '邓元', '0', '0', null, '18');
INSERT INTO `xm` VALUES ('156', '2015-05-15 18:29:08', '许崇凰', '今天的主要工作内容为：完成了第二款一方海外首页改版的效果图', null, null, null, null, null, '151', '0', null, '14');
INSERT INTO `xm` VALUES ('157', '2015-05-15 18:35:00', '邓元', '网上寻找js特效代码，然后应用到首页中，对代码进行修改使其实现首页效果图中的模样。遇到一点问题是下载下来的代码样式与自己之前写的样式有一点冲突，花了不少时间去寻找和修改，还好都能找出来了，改得如意了。', null, null, null, null, null, '155', '0', null, '18');
INSERT INTO `xm` VALUES ('158', null, null, null, '海外一方改版', '2015-05-21 08:50:37', null, '海外一方改版首页效果图（补19号）', '李翠翠', '0', '0', null, '17');
INSERT INTO `xm` VALUES ('159', '2015-05-21 08:51:31', '李翠翠', '海外一方首页效果图设计以及对之前的南广鲁班教育的一些修改。', null, null, null, null, null, '158', '0', null, '17');
INSERT INTO `xm` VALUES ('160', null, null, null, '英凯', '2015-05-21 08:52:19', null, '英凯首页效果图切图（补20号）', '李翠翠', '0', '0', null, '17');
INSERT INTO `xm` VALUES ('161', '2015-05-21 08:53:23', '李翠翠', '英凯首页效果图切图  还差一个大图切换以及返回顶部没做好  还有一些小细节的修改', null, null, null, null, null, '160', '0', null, '17');
INSERT INTO `xm` VALUES ('162', '2015-05-21 14:45:41', '王宇箭', '刷钻平台BUG处理', null, null, null, null, null, '107', '0', null, '19');
INSERT INTO `xm` VALUES ('163', '2015-05-23 08:49:00', '李翠翠', '海外一方修改（22号）', null, null, null, null, null, '158', '0', null, '17');
INSERT INTO `xm` VALUES ('164', '2015-05-23 08:49:45', '李翠翠', '英凯内页切图（22）', null, null, null, null, null, '160', '0', null, '17');
INSERT INTO `xm` VALUES ('165', '2015-06-01 08:45:52', '李翠翠', '南广微官网内页设计（补29号）', null, null, null, null, null, '137', '0', null, '17');
INSERT INTO `xm` VALUES ('166', '2015-06-03 14:44:07', '李翠翠', '一方海外切图（补2号）', null, null, null, null, null, '158', '0', null, '17');
INSERT INTO `xm` VALUES ('167', null, null, null, '广西工业器材城', '2015-06-18 09:08:56', null, '首页以及微网效果图设计', '李翠翠', '0', '0', null, '17');
