/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50625
Source Host           : localhost:3306
Source Database       : tp5

Target Server Type    : MYSQL
Target Server Version : 50625
File Encoding         : 65001

Date: 2017-01-10 23:08:54
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `think_administrator`
-- ----------------------------
DROP TABLE IF EXISTS `think_administrator`;
CREATE TABLE `think_administrator` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL COMMENT '用户名',
  `nickname` varchar(20) DEFAULT NULL,
  `password` char(32) NOT NULL COMMENT '密码',
  `mobile` varchar(11) NOT NULL COMMENT '手机号',
  `email` varchar(255) DEFAULT NULL COMMENT 'Email',
  `head_ico` varchar(255) DEFAULT NULL COMMENT '头像',
  `status` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`) USING BTREE,
  KEY `email` (`email`(12)) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of think_administrator
-- ----------------------------
INSERT INTO `think_administrator` VALUES ('1', 'admin', 'adggrtysada', 'e10adc3949ba59abbe56e057f20f883e', '1850081', '287303540@qq.com', null, '1');
INSERT INTO `think_administrator` VALUES ('2', 'mcback', 'sdfsdf', 'e10adc3949ba59abbe56e057f20f883e', '', 'mcback@qq.com', null, '1');
INSERT INTO `think_administrator` VALUES ('3', 'jennyjiang_01', null, 'e10adc3949ba59abbe56e057f20f883e', '', 'jennyjiang_01@163.com', null, '1');
INSERT INTO `think_administrator` VALUES ('4', 'jesse108', null, 'e10adc3949ba59abbe56e057f20f883e', '', 'jesse_108@163.com', null, '1');
INSERT INTO `think_administrator` VALUES ('5', 'wenpeng', null, 'e10adc3949ba59abbe56e057f20f883e', '', 'wenpeng', '96e79218965eb72c92a549dd5a330112', '1');
INSERT INTO `think_administrator` VALUES ('7', 'wuyanming', null, 'e10adc3949ba59abbe56e057f20f883e', '', 'xiaowuc@126.com', 'upload/2015/11/30/20151130163047951.jpg', '1');
INSERT INTO `think_administrator` VALUES ('8', 'xiaowu', null, 'e10adc3949ba59abbe56e057f20f883e', '', 'xiaowu@126.com', null, '1');
INSERT INTO `think_administrator` VALUES ('9', 'jennyjiang_02', null, 'e10adc3949ba59abbe56e057f20f883e', '', 'q@163.com', 'upload/2015/12/03/20151203160026722.jpg', '-1');
INSERT INTO `think_administrator` VALUES ('10', 'jennyjiang_03', null, 'e10adc3949ba59abbe56e057f20f883e', '', 'jennyjiang_03@163.com', 'upload/2015/11/19/20151119163332120.jpg', '-1');
INSERT INTO `think_administrator` VALUES ('11', 'xiaolanzi510', null, 'e10adc3949ba59abbe56e057f20f883e', '', '510243060@qq.com', null, '-1');
INSERT INTO `think_administrator` VALUES ('12', 'jennyjiang_04', null, 'e10adc3949ba59abbe56e057f20f883e', '', 'jennyjiang_04@163.com', 'upload/2015/11/19/20151119163332120.jpg', '1');
INSERT INTO `think_administrator` VALUES ('13', 'jennyjiang_05', null, 'e10adc3949ba59abbe56e057f20f883e', '', 'jennyjiang_05@163.com', null, '1');
INSERT INTO `think_administrator` VALUES ('14', 'qq', null, 'e10adc3949ba59abbe56e057f20f883e', '', '1@163.com', null, '1');
INSERT INTO `think_administrator` VALUES ('15', 'qqq', null, 'e10adc3949ba59abbe56e057f20f883e', '', '11@163.com', null, '1');
INSERT INTO `think_administrator` VALUES ('16', 'qqqq', null, 'e10adc3949ba59abbe56e057f20f883e', '', '111@163.com', null, '1');
INSERT INTO `think_administrator` VALUES ('17', '绿能桃', null, 'e10adc3949ba59abbe56e057f20f883e', '', 'a@163.com', null, '1');
INSERT INTO `think_administrator` VALUES ('19', 'aa', null, 'e10adc3949ba59abbe56e057f20f883e', '', 'aa@163.com', null, '1');
INSERT INTO `think_administrator` VALUES ('20', 'luowy', null, 'e10adc3949ba59abbe56e057f20f883e', '', 'lwy86@163.com', null, '1');
INSERT INTO `think_administrator` VALUES ('21', 'fdsdfsdf1', null, 'e10adc3949ba59abbe56e057f20f883e', '', 'sdf@dd.com', null, '1');
INSERT INTO `think_administrator` VALUES ('22', '1111', null, 'e10adc3949ba59abbe56e057f20f883e', '', '1111@163.com', null, '1');
INSERT INTO `think_administrator` VALUES ('23', 'zxc', null, 'e10adc3949ba59abbe56e057f20f883e', '', '4@163.com', null, '1');
INSERT INTO `think_administrator` VALUES ('24', 'ahha99', null, '', '1678575475', '1@aaa.com', null, '1');
INSERT INTO `think_administrator` VALUES ('25', 'haah66', null, '123456', '18900030332', '11@bb.com', null, '1');
INSERT INTO `think_administrator` VALUES ('27', 'haah66qweq', null, '123456', '18900030332', '11@bb.com', null, '1');
INSERT INTO `think_administrator` VALUES ('28', 'haah66qweqsdfs', null, '123456', '18900030332', '11@bb.com', null, '1');
INSERT INTO `think_administrator` VALUES ('29', 'haa67', null, '123456', '18900030332', '11@bb.com', null, '1');
INSERT INTO `think_administrator` VALUES ('30', 'haa678', null, 'e10adc3949ba59abbe56e057f20f883e', '18900030332', '11@bb.com', null, '1');
INSERT INTO `think_administrator` VALUES ('31', 'haa6788', null, 'e10adc3949ba59abbe56e057f20f883e', '18900030332', '11@bb.com', null, '1');
INSERT INTO `think_administrator` VALUES ('32', 'sfs', null, '60479356311160cee0084ce52a3b148d', '12345', '2@34.com', null, '1');

-- ----------------------------
-- Table structure for `think_admin_behavior_log`
-- ----------------------------
DROP TABLE IF EXISTS `think_admin_behavior_log`;
CREATE TABLE `think_admin_behavior_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '用户ID',
  `ip` bigint(20) unsigned DEFAULT NULL COMMENT 'IP地址',
  `req_type` enum('GET','POST') DEFAULT NULL,
  `request` varchar(500) DEFAULT NULL COMMENT '请求地址',
  `param` varchar(500) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL COMMENT '说明',
  `create_time` datetime DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of think_admin_behavior_log
-- ----------------------------
INSERT INTO `think_admin_behavior_log` VALUES ('1', '1', '2130706433', 'GET', '/index.php/admin/admin_public/logout.html', '[]', '退出登录', '2016-12-30 14:29:30');
INSERT INTO `think_admin_behavior_log` VALUES ('2', '1', '2130706433', 'POST', '/index.php/admin/admin_public/login.html', '{\"username\":\"admin\",\"password\":\"123456\",\"verify\":\"\"}', '登录', '2016-12-30 14:30:38');
INSERT INTO `think_admin_behavior_log` VALUES ('3', '1', '2130706433', 'GET', '/index.php/admin/admin_public/logout.html', '[]', '退出登录', '2016-12-30 14:34:08');
INSERT INTO `think_admin_behavior_log` VALUES ('4', '2', '2130706433', 'POST', '/index.php/admin/admin_public/login.html', '{\"username\":\"admin\",\"password\":\"123456\",\"verify\":\"\"}', '登录', '2016-12-30 14:34:13');
INSERT INTO `think_admin_behavior_log` VALUES ('5', '2', '2130706433', 'GET', '/index.php/admin/admin_public/logout.html', '[]', '退出登录', '2016-12-30 14:39:30');
INSERT INTO `think_admin_behavior_log` VALUES ('6', '2', '2130706433', 'POST', '/index.php/admin/admin_public/login.html', '{\"username\":\"admin\",\"password\":\"**\",\"verify\":\"\"}', '登录', '2016-12-30 14:39:35');
INSERT INTO `think_admin_behavior_log` VALUES ('7', '2', '2130706433', 'GET', '/index.php/admin/menu/updatemenu.html?title=%E5%95%86%E5%9F%8Exxx&controller=Mall&action=index&url=&type=1&pid=0&group=&hide=1&is_dev=0&sort=8&tip=&id=160&module=admin', '{\"title\":\"\\u5546\\u57cexxx\",\"controller\":\"Mall\",\"action\":\"index\",\"url\":\"\",\"type\":\"1\",\"pid\":\"0\",\"group\":\"\",\"hide\":\"1\",\"is_dev\":\"0\",\"sort\":\"8\",\"tip\":\"\",\"id\":\"160\",\"module\":\"admin\"}', '(添加|编辑)菜单', '2016-12-30 16:29:47');
INSERT INTO `think_admin_behavior_log` VALUES ('8', '1', '2130706433', 'GET', '/index.php/admin/config/save.html?config%5BWEB_SITE_TITLE%5D=OneThink%E5%86%85bbbbbbb&config%5BWEB_SITE_DESCRIPTION%5D=OneThink%E5%86%85%E5%AE%B9%E7%AE%A1%E7%90%86%E6%A1%86%E6%9E%B6fsdfsdf&config%5BWEB_SITE_CLOSE%5D=0&config%5BWEB_SITE_KEYWORD%5D=ThinkPHP', '{\"config\":{\"WEB_SITE_TITLE\":\"OneThink\\u5185bbbbbbb\",\"WEB_SITE_DESCRIPTION\":\"OneThink\\u5185\\u5bb9\\u7ba1\\u7406\\u6846\\u67b6fsdfsdf\",\"WEB_SITE_CLOSE\":\"0\",\"WEB_SITE_KEYWORD\":\"ThinkPHP,OneThink\",\"WEB_SITE_ICP\":\"\",\"COLOR_STYLE\":\"default_color\"}}', '配置-编辑', '2016-12-30 16:51:24');
INSERT INTO `think_admin_behavior_log` VALUES ('9', '1', '2130706433', 'POST', '/index.php/admin/auth_manager/addtogroup.html', '{\"group_id\":\"1\",\"uid\":\"5\"}', '用户组-添加用户', '2016-12-30 16:51:40');
INSERT INTO `think_admin_behavior_log` VALUES ('10', '1', '2130706433', 'GET', '/index.php/admin/auth_manager/removefromgroup/uid/5/group_id/1.html', '{\"uid\":\"5\",\"group_id\":\"1\"}', '用户组-移除用户', '2016-12-30 16:51:55');
INSERT INTO `think_admin_behavior_log` VALUES ('11', '1', '2130706433', 'GET', '/index.php/admin/admin_public/logout.html', '[]', '退出登录', '2016-12-30 17:17:53');
INSERT INTO `think_admin_behavior_log` VALUES ('12', '1', '2130706433', 'POST', '/index.php/admin/admin_public/login.html', '{\"username\":\"admin\",\"password\":\"**\",\"verify\":\"\"}', '登录', '2016-12-30 17:17:58');
INSERT INTO `think_admin_behavior_log` VALUES ('13', '1', '2130706433', 'GET', '/index.php/admin/admin_public/logout.html', '[]', '退出登录', '2016-12-30 17:41:47');
INSERT INTO `think_admin_behavior_log` VALUES ('14', '1', '2130706433', 'POST', '/index.php/admin/admin_public/login.html', '{\"username\":\"admin\",\"password\":\"**\",\"verify\":\"\"}', '登录', '2016-12-30 17:41:52');
INSERT INTO `think_admin_behavior_log` VALUES ('15', '1', '2130706433', 'GET', '/index.php/admin/admin_public/logout.html', '[]', '退出登录', '2016-12-30 17:41:55');
INSERT INTO `think_admin_behavior_log` VALUES ('16', '1', '2130706433', 'POST', '/index.php/admin/admin_public/login.html', '{\"username\":\"admin\",\"password\":\"**\",\"verify\":\"\"}', '登录', '2016-12-30 17:42:00');
INSERT INTO `think_admin_behavior_log` VALUES ('17', '1', '2130706433', 'GET', '/index.php/admin/menu/updatemenu.html?title=%E7%B3%BB%E7%BB%9F%E4%BB%8B%E7%BB%8D&controller=Index&action=introduce&url=&type=1&pid=1&group=&hide=0&is_dev=0&sort=0&tip=&id=&module=admin', '{\"title\":\"\\u7cfb\\u7edf\\u4ecb\\u7ecd\",\"controller\":\"Index\",\"action\":\"introduce\",\"url\":\"\",\"type\":\"1\",\"pid\":\"1\",\"group\":\"\",\"hide\":\"0\",\"is_dev\":\"0\",\"sort\":\"0\",\"tip\":\"\",\"id\":\"\",\"module\":\"admin\"}', '菜单-(添加|编辑)', '2016-12-30 17:48:34');
INSERT INTO `think_admin_behavior_log` VALUES ('18', '1', '2130706433', 'GET', '/index.php/admin/menu/updatemenu.html?title=%E7%B3%BB%E7%BB%9F%E4%BB%8B%E7%BB%8D&controller=Index&action=introduce&url=&type=1&pid=1&group=xx&hide=0&is_dev=0&sort=0&tip=&id=188&module=admin', '{\"title\":\"\\u7cfb\\u7edf\\u4ecb\\u7ecd\",\"controller\":\"Index\",\"action\":\"introduce\",\"url\":\"\",\"type\":\"1\",\"pid\":\"1\",\"group\":\"xx\",\"hide\":\"0\",\"is_dev\":\"0\",\"sort\":\"0\",\"tip\":\"\",\"id\":\"188\",\"module\":\"admin\"}', '菜单-(添加|编辑)', '2016-12-30 17:49:10');
INSERT INTO `think_admin_behavior_log` VALUES ('19', '1', '2130706433', 'GET', '/index.php/admin/menu/updatemenu.html?title=%E7%B3%BB%E7%BB%9F%E4%BB%8B%E7%BB%8D&controller=Index&action=introduce&url=&type=1&pid=1&group=&hide=0&is_dev=0&sort=0&tip=&id=188&module=admin', '{\"title\":\"\\u7cfb\\u7edf\\u4ecb\\u7ecd\",\"controller\":\"Index\",\"action\":\"introduce\",\"url\":\"\",\"type\":\"1\",\"pid\":\"1\",\"group\":\"\",\"hide\":\"0\",\"is_dev\":\"0\",\"sort\":\"0\",\"tip\":\"\",\"id\":\"188\",\"module\":\"admin\"}', '菜单-(添加|编辑)', '2016-12-30 17:50:23');
INSERT INTO `think_admin_behavior_log` VALUES ('20', '1', '2130706433', 'GET', '/index.php/admin/menu/updatemenu.html?title=%E4%BD%BF%E7%94%A8%E6%95%99%E7%A8%8B&controller=Index&action=developer&url=&type=1&pid=0&group=%E7%A8%8B%E5%BA%8F%E5%BC%80%E5%8F%91&hide=0&is_dev=0&sort=0&tip=&id=&module=admin', '{\"title\":\"\\u4f7f\\u7528\\u6559\\u7a0b\",\"controller\":\"Index\",\"action\":\"developer\",\"url\":\"\",\"type\":\"1\",\"pid\":\"0\",\"group\":\"\\u7a0b\\u5e8f\\u5f00\\u53d1\",\"hide\":\"0\",\"is_dev\":\"0\",\"sort\":\"0\",\"tip\":\"\",\"id\":\"\",\"module\":\"admin\"}', '菜单-(添加|编辑)', '2016-12-30 18:03:05');
INSERT INTO `think_admin_behavior_log` VALUES ('21', '1', '2130706433', 'GET', '/index.php/admin/menu/updatemenu.html?title=%E4%BD%BF%E7%94%A8%E6%95%99%E7%A8%8B&controller=Index&action=developer&url=&type=1&pid=1&group=%E7%A8%8B%E5%BA%8F%E5%BC%80%E5%8F%91&hide=0&is_dev=0&sort=0&tip=&id=189&module=admin', '{\"title\":\"\\u4f7f\\u7528\\u6559\\u7a0b\",\"controller\":\"Index\",\"action\":\"developer\",\"url\":\"\",\"type\":\"1\",\"pid\":\"1\",\"group\":\"\\u7a0b\\u5e8f\\u5f00\\u53d1\",\"hide\":\"0\",\"is_dev\":\"0\",\"sort\":\"0\",\"tip\":\"\",\"id\":\"189\",\"module\":\"admin\"}', '菜单-(添加|编辑)', '2016-12-30 18:03:20');
INSERT INTO `think_admin_behavior_log` VALUES ('22', '1', '2130706433', 'POST', '/index.php/admin/admin_public/login.html', '{\"username\":\"admin\",\"password\":\"**\",\"verify\":\"\"}', '登录', '2017-01-04 09:51:56');
INSERT INTO `think_admin_behavior_log` VALUES ('23', '1', '2130706433', 'POST', '/index.php/admin/admin_public/login.html', '{\"username\":\"admin\",\"password\":\"**\",\"verify\":\"\"}', '登录', '2017-01-04 14:19:35');
INSERT INTO `think_admin_behavior_log` VALUES ('24', '1', '2130706433', 'POST', '/index.php/admin/admin_public/login.html', '{\"username\":\"admin\",\"password\":\"**\",\"verify\":\"\"}', '登录', '2017-01-05 09:30:14');
INSERT INTO `think_admin_behavior_log` VALUES ('25', '1', '2130706433', 'POST', '/index.php/admin/auth_manager/updateaccess.html', '{\"rules\":[\"1\",\"188\",\"189\",\"2\",\"3\",\"4\",\"5\",\"6\",\"7\",\"8\",\"9\",\"10\",\"11\",\"12\",\"118\",\"13\",\"14\",\"15\",\"126\"],\"id\":\"1\"}', '用户组-更新权限', '2017-01-05 15:55:59');
INSERT INTO `think_admin_behavior_log` VALUES ('26', '1', '2130706433', 'POST', '/index.php/admin/auth_manager/addtogroup.html', '{\"group_id\":\"1\",\"uid\":\"5\"}', '用户组-添加用户', '2017-01-05 15:56:30');
INSERT INTO `think_admin_behavior_log` VALUES ('27', '1', '2130706433', 'POST', '/index.php/admin/auth_manager/addtogroup.html', '{\"group_id\":\"1\",\"uid\":\"5\"}', '用户组-添加用户', '2017-01-05 15:57:56');
INSERT INTO `think_admin_behavior_log` VALUES ('28', '1', '2130706433', 'POST', '/index.php/admin/auth_manager/addtogroup.html', '{\"group_id\":\"1\",\"uid\":\"5\"}', '用户组-添加用户', '2017-01-05 15:59:25');
INSERT INTO `think_admin_behavior_log` VALUES ('29', '1', '2130706433', 'GET', '/index.php/admin/menu/del/id/160.html', '{\"id\":\"160\"}', '菜单-删除', '2017-01-05 17:11:27');
INSERT INTO `think_admin_behavior_log` VALUES ('30', '1', '2130706433', 'POST', '/index.php/admin/admin_public/login.html', '{\"username\":\"admin\",\"password\":\"**\",\"verify\":\"\"}', '登录', '2017-01-06 09:28:29');
INSERT INTO `think_admin_behavior_log` VALUES ('31', '1', '2130706433', 'GET', '/index.php/admin/admin_public/logout.html', '[]', '退出登录', '2017-01-07 15:09:09');
INSERT INTO `think_admin_behavior_log` VALUES ('32', '1', '2130706433', 'POST', '/index.php/admin/admin_public/login.html', '{\"username\":\"admin\",\"password\":\"**\",\"verify\":\"\"}', '登录', '2017-01-07 15:09:14');
INSERT INTO `think_admin_behavior_log` VALUES ('33', '1', '2130706433', 'POST', '/index.php/admin/admin_public/login.html', '{\"username\":\"admin\",\"password\":\"**\",\"verify\":\"\"}', '登录', '2017-01-07 22:25:40');
INSERT INTO `think_admin_behavior_log` VALUES ('34', '1', '2130706433', 'POST', '/index.php/admin/admin_public/login.html', '{\"username\":\"admin\",\"password\":\"**\",\"verify\":\"\"}', '登录', '2017-01-08 10:23:20');
INSERT INTO `think_admin_behavior_log` VALUES ('35', '1', '2130706433', 'POST', '/index.php/admin/admin_public/login.html', '{\"username\":\"admin\",\"password\":\"**\",\"verify\":\"\"}', '登录', '2017-01-08 13:39:49');
INSERT INTO `think_admin_behavior_log` VALUES ('36', '1', '2130706433', 'GET', '/index.php/admin/menu/del/id/19.html', '{\"id\":\"19\"}', '菜单-删除', '2017-01-08 14:49:28');
INSERT INTO `think_admin_behavior_log` VALUES ('37', '1', '2130706433', 'GET', '/index.php/admin/menu/del/id/130.html', '{\"id\":\"130\"}', '菜单-删除', '2017-01-08 14:49:34');
INSERT INTO `think_admin_behavior_log` VALUES ('38', '1', '2130706433', 'POST', '/index.php/admin/admin_public/login.html', '{\"username\":\"admin\",\"password\":\"**\",\"verify\":\"\"}', '登录', '2017-01-08 20:15:28');
INSERT INTO `think_admin_behavior_log` VALUES ('39', '1', '2130706433', 'POST', '/index.php/admin/config/save.html', '{\"config\":{\"WEB_SITE_TITLE\":\"OneThink\\u5185bbbbbbb\",\"bb\":\"\",\"WEB_SITE_DESCRIPTION\":\"OneThink\\u5185\\u5bb9\\u7ba1\\u7406\\u6846\\u67b6fsdfsdf\",\"WEB_SITE_CLOSE\":\"0\",\"WEB_SITE_KEYWORD\":\"ThinkPHP,OneThink\",\"WEB_SITE_ICP\":\"\"}}', '配置-编辑', '2017-01-08 20:28:29');
INSERT INTO `think_admin_behavior_log` VALUES ('40', '1', '2130706433', 'POST', '/index.php/admin/config/save.html', '{\"config\":{\"WEB_SITE_TITLE\":\"OneThink\\u5185bbbbbbb\",\"bb\":\"\",\"WEB_SITE_DESCRIPTION\":\"OneThink\\u5185\\u5bb9\\u7ba1\\u7406\\u6846\\u67b6fsdfsdf\",\"WEB_SITE_CLOSE\":\"0\",\"WEB_SITE_KEYWORD\":\"ThinkPHP,OneThink\",\"WEB_SITE_ICP\":\"\"}}', '配置-编辑', '2017-01-08 20:32:31');
INSERT INTO `think_admin_behavior_log` VALUES ('41', '1', '2130706433', 'POST', '/index.php/admin/config/save.html', '{\"config\":{\"WEB_SITE_TITLE\":\"OneThink\\u5185bbbbbbb\",\"bb\":\"\",\"WEB_SITE_DESCRIPTION\":\"OneThink\\u5185\\u5bb9\\u7ba1\\u7406\\u6846\\u67b6fsdfsdf\",\"WEB_SITE_CLOSE\":\"0\",\"WEB_SITE_KEYWORD\":\"ThinkPHP,OneThink\",\"WEB_SITE_ICP\":\"\"}}', '配置-编辑', '2017-01-08 20:32:49');
INSERT INTO `think_admin_behavior_log` VALUES ('42', '1', '2130706433', 'POST', '/index.php/admin/config/save.html', '{\"config\":{\"WEB_SITE_TITLE\":\"OneThink\\u5185bbbbbbb\",\"bb\":\"\",\"WEB_SITE_DESCRIPTION\":\"OneThink\\u5185\\u5bb9\\u7ba1\\u7406\\u6846\\u67b6fsdfsdf\",\"WEB_SITE_CLOSE\":\"0\",\"WEB_SITE_KEYWORD\":\"ThinkPHP,OneThink\",\"WEB_SITE_ICP\":\"\"}}', '配置-编辑', '2017-01-08 20:33:10');
INSERT INTO `think_admin_behavior_log` VALUES ('43', '1', '2130706433', 'POST', '/index.php/admin/config/save.html', '{\"config\":{\"WEB_SITE_TITLE\":\"Bauth\\u6743\\u9650\\u7cfb\\u7edf\",\"bb\":\"\",\"WEB_SITE_DESCRIPTION\":\"Bauth\\u6743\\u9650\\u7cfb\\u7edf\\u662f\\u57fa\\u4e8eThinkPHP5\\u5f00\\u53d1\\u591a\\u6a21\\u5757\",\"WEB_SITE_CLOSE\":\"0\",\"WEB_SITE_KEYWORD\":\"Bauth\\u6743\\u9650\\u7cfb\\u7edf\\uff0c\\u591a\\u6a21\\u5757\\u6743\\u9650\\u63a7\\u5236\\u7cfb\\u7edf\\uff0cThinkPHP5\\u6743\\u9650\\u7cfb\\u7edf\",\"WEB_SITE_ICP\":\"\"}}', '配置-编辑', '2017-01-08 20:38:43');
INSERT INTO `think_admin_behavior_log` VALUES ('44', '1', '2130706433', 'POST', '/index.php/admin/config/save.html', '{\"config\":{\"WEB_SITE_TITLE\":\"Bauth\\u6743\\u9650\\u7cfb\\u7edf\",\"bb\":\"\",\"WEB_SITE_DESCRIPTION\":\"OneThink\\u5185\\u5bb9\\u7ba1\\u7406\\u6846\\u67b6fsdfsdf\",\"WEB_SITE_CLOSE\":\"0\",\"WEB_SITE_KEYWORD\":\"ThinkPHP,OneThink\",\"WEB_SITE_ICP\":\"\"}}', '配置-编辑', '2017-01-08 20:40:06');
INSERT INTO `think_admin_behavior_log` VALUES ('45', '1', '2130706433', 'GET', '/index.php/admin/config/save.html', '[]', '配置-编辑', '2017-01-08 20:40:18');
INSERT INTO `think_admin_behavior_log` VALUES ('46', '1', '2130706433', 'POST', '/index.php/admin/config/save.html', '{\"config\":{\"WEB_SITE_TITLE\":\"Bauth\\u6743\\u9650\\u7cfb\\u7edf\",\"bb\":\"\",\"WEB_SITE_DESCRIPTION\":\"Bauth\\u6743\\u9650\\u7cfb\\u7edf\\u662f\\u4e00\\u4e2a\\u5f00\\u6e90\\u514d\\u8d39\\u7684\\u6743\\u9650\\u7cfb\\u7edf\\nBauth\\u6743\\u9650\\u7cfb\\u7edf\\u662f\\u57fa\\u4e8eThinkPHP5\\u6846\\u67b6\\u5f00\\u7684\\u591a\\u6a21\\u5757\\u6743\\u9650\\u7cfb\\u7edf\",\"WEB_SITE_CLOSE\":\"0\",\"WEB_SITE_KEYWORD\":\"\",\"WEB_SITE_ICP\":\"\"}}', '配置-编辑', '2017-01-08 20:41:45');
INSERT INTO `think_admin_behavior_log` VALUES ('47', '1', '2130706433', 'POST', '/index.php/admin/config/save.html', '{\"config\":{\"WEB_SITE_TITLE\":\"Bauth\\u6743\\u9650\\u7cfb\\u7edf\",\"WEB_SITE_DESCRIPTION\":\"Bauth\\u6743\\u9650\\u7cfb\\u7edf\\u662f\\u4e00\\u4e2a\\u5f00\\u6e90\\u514d\\u8d39\\u7684\\u6743\\u9650\\u7cfb\\u7edf\\nBauth\\u6743\\u9650\\u7cfb\\u7edf\\u662f\\u57fa\\u4e8eThinkPHP5\\u6846\\u67b6\\u5f00\\u7684\\u591a\\u6a21\\u5757\\u6743\\u9650\\u7cfb\\u7edf\",\"WEB_SITE_CLOSE\":\"0\",\"WEB_SITE_KEYWORD\":\"Bauth\\u6743\\u9650\\u7cfb\\u7edf\\uff0c\\u5f00\\u6e90\\u514d\\u8d39\\u6743\\u9650\\u7cfb\\u7edf\\uff0cThinkPHP5\\u5f00\\u6e90\\u7cfb\\u7edf\",\"WEB_SITE_ICP\":\"\"}}', '配置-编辑', '2017-01-08 20:43:16');
INSERT INTO `think_admin_behavior_log` VALUES ('48', '1', '2130706433', 'GET', '/index.php/admin/menu/updatemenu.html?title=%E7%94%A8%E6%88%B7&controller=Administrator&action=index&url=&type=1&pid=0&group=&hide=0&is_dev=0&sort=3&tip=&id=16&module=admin', '{\"title\":\"\\u7528\\u6237\",\"controller\":\"Administrator\",\"action\":\"index\",\"url\":\"\",\"type\":\"1\",\"pid\":\"0\",\"group\":\"\",\"hide\":\"0\",\"is_dev\":\"0\",\"sort\":\"3\",\"tip\":\"\",\"id\":\"16\",\"module\":\"admin\"}', '菜单-(添加|编辑)', '2017-01-08 21:45:27');
INSERT INTO `think_admin_behavior_log` VALUES ('49', '1', '2130706433', 'GET', '/index.php/admin/menu/updatemenu.html?title=%E7%94%A8%E6%88%B7%E4%BF%A1%E6%81%AF&controller=Administrator&action=userList&url=&type=1&pid=16&group=%E7%94%A8%E6%88%B7%E7%AE%A1%E7%90%86&hide=0&is_dev=0&sort=0&tip=&id=17&module=admin', '{\"title\":\"\\u7528\\u6237\\u4fe1\\u606f\",\"controller\":\"Administrator\",\"action\":\"userList\",\"url\":\"\",\"type\":\"1\",\"pid\":\"16\",\"group\":\"\\u7528\\u6237\\u7ba1\\u7406\",\"hide\":\"0\",\"is_dev\":\"0\",\"sort\":\"0\",\"tip\":\"\",\"id\":\"17\",\"module\":\"admin\"}', '菜单-(添加|编辑)', '2017-01-08 21:45:46');
INSERT INTO `think_admin_behavior_log` VALUES ('50', '1', '2130706433', 'POST', '/index.php/admin/admin_public/login.html', '{\"username\":\"admin\",\"password\":\"**\",\"verify\":\"\"}', '用户登录', '2017-01-08 22:09:53');
INSERT INTO `think_admin_behavior_log` VALUES ('51', '1', '2130706433', 'GET', '/index.php/admin/admin_public/logout.html', '[]', '退出登录', '2017-01-08 22:09:56');
INSERT INTO `think_admin_behavior_log` VALUES ('52', '1', '2130706433', 'POST', '/index.php/admin/admin_public/login.html', '{\"username\":\"admin\",\"password\":\"**\",\"verify\":\"\"}', '用户登录', '2017-01-08 22:10:02');
INSERT INTO `think_admin_behavior_log` VALUES ('53', '1', '2130706433', 'POST', '/index.php/admin/admin_public/login.html', '{\"username\":\"admin\",\"password\":\"**\",\"verify\":\"\"}', '登录', '2017-01-09 22:42:46');
INSERT INTO `think_admin_behavior_log` VALUES ('54', '1', '2130706433', 'POST', '/index.php/admin/admin_public/login.html', '{\"username\":\"admin\",\"password\":\"**\",\"verify\":\"\"}', '登录', '2017-01-10 22:42:57');

-- ----------------------------
-- Table structure for `think_auth_group`
-- ----------------------------
DROP TABLE IF EXISTS `think_auth_group`;
CREATE TABLE `think_auth_group` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户组id,自增主键',
  `module` varchar(20) NOT NULL COMMENT '用户组所属模块',
  `type` tinyint(4) NOT NULL COMMENT '组类型',
  `title` char(20) NOT NULL DEFAULT '' COMMENT '用户组中文名称',
  `description` varchar(80) NOT NULL DEFAULT '' COMMENT '描述信息',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '用户组状态：为1正常，为0禁用,-1为删除',
  `rules` varchar(500) NOT NULL DEFAULT '' COMMENT '用户组拥有的规则id，多个规则 , 隔开',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of think_auth_group
-- ----------------------------
INSERT INTO `think_auth_group` VALUES ('1', 'admin', '1', '默认用户组qq', 'fafaf', '1', '1,188,189,2,3,4,5,6,7,8,9,10,11,12,118,13,14,15,126');
INSERT INTO `think_auth_group` VALUES ('6', 'admin', '1', 'bbbb', 'nnnnnsdfsfs', '1', '');
INSERT INTO `think_auth_group` VALUES ('7', 'admin', '1', 'sfsf', 'sdfsdfsdf', '-1', '');
INSERT INTO `think_auth_group` VALUES ('2', 'admin', '1', '测试用户', '测试用户', '1', '16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,130,131,132,106,110,108,109,126');
INSERT INTO `think_auth_group` VALUES ('3', 'admin', '1', 'aaa', 'aaaa', '1', '68,58,59,60,61,62,112,113,115,63,64,65,66,67,69,70,71,72,73,74,119,75,96,98,114,120,76,77,78,79,121,80,81,82,83,84,85,86,87,88,89,90,91,92');
INSERT INTO `think_auth_group` VALUES ('4', 'admin', '1', 'ccc', 'cc', '1', '');
INSERT INTO `think_auth_group` VALUES ('5', 'admin', '1', '11', '苦苦工', '1', '');

-- ----------------------------
-- Table structure for `think_auth_group_access`
-- ----------------------------
DROP TABLE IF EXISTS `think_auth_group_access`;
CREATE TABLE `think_auth_group_access` (
  `uid` int(10) unsigned NOT NULL COMMENT '用户id',
  `group_id` mediumint(8) unsigned NOT NULL COMMENT '用户组id',
  UNIQUE KEY `uid_group_id` (`uid`,`group_id`) USING BTREE,
  KEY `uid` (`uid`) USING BTREE,
  KEY `group_id` (`group_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of think_auth_group_access
-- ----------------------------
INSERT INTO `think_auth_group_access` VALUES ('1', '1');
INSERT INTO `think_auth_group_access` VALUES ('2', '1');
INSERT INTO `think_auth_group_access` VALUES ('2', '2');
INSERT INTO `think_auth_group_access` VALUES ('3', '1');
INSERT INTO `think_auth_group_access` VALUES ('4', '1');
INSERT INTO `think_auth_group_access` VALUES ('5', '1');
INSERT INTO `think_auth_group_access` VALUES ('5', '5');

-- ----------------------------
-- Table structure for `think_config`
-- ----------------------------
DROP TABLE IF EXISTS `think_config`;
CREATE TABLE `think_config` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '配置ID',
  `name` varchar(30) NOT NULL DEFAULT '' COMMENT '配置名称',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '配置类型',
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '配置说明',
  `group` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '配置分组',
  `extra` varchar(255) NOT NULL DEFAULT '' COMMENT '配置值',
  `remark` varchar(100) NOT NULL COMMENT '配置说明',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '状态',
  `value` text NOT NULL COMMENT '配置值',
  `sort` smallint(3) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_name` (`name`) USING BTREE,
  KEY `type` (`type`) USING BTREE,
  KEY `group` (`group`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of think_config
-- ----------------------------
INSERT INTO `think_config` VALUES ('1', 'WEB_SITE_TITLE', '1', '网站标题', '1', '', '网站标题前台显示标题', '1378898976', '1379235274', '1', 'Bauth权限系统', '0');
INSERT INTO `think_config` VALUES ('2', 'WEB_SITE_DESCRIPTION', '2', '网站描述', '1', '', '网站搜索引擎描述', '1378898976', '1379235841', '1', 'Bauth权限系统是一个开源免费的权限系统\nBauth权限系统是基于ThinkPHP5框架开的多模块权限系统', '1');
INSERT INTO `think_config` VALUES ('3', 'WEB_SITE_KEYWORD', '2', '网站关键字', '1', '', '网站搜索引擎关键字', '1378898976', '1381390100', '1', 'Bauth权限系统，开源免费权限系统，ThinkPHP5开源系统', '8');
INSERT INTO `think_config` VALUES ('4', 'WEB_SITE_CLOSE', '4', '关闭站点', '1', '0:关闭,1:开启', '站点关闭后其他用户不能访问，管理员可以正常访问', '1378898976', '1379235296', '1', '0', '1');
INSERT INTO `think_config` VALUES ('10', 'WEB_SITE_ICP', '1', '网站备案号', '1', '', '设置在网站底部显示的备案号', '1378900335', '1379235859', '1', '', '9');
INSERT INTO `think_config` VALUES ('26', 'USER_ALLOW_REGISTER', '4', '是否允许用户注册', '3', '0:关闭注册\r\n1:允许注册', '是否开放用户注册', '1379504487', '1379504580', '1', '1', '3');
INSERT INTO `think_config` VALUES ('28', 'DATA_BACKUP_PATH', '1', '数据库备份根路径', '2', '', '路径必须以 / 结尾', '1381482411', '1381482411', '1', './Data/', '5');
INSERT INTO `think_config` VALUES ('29', 'DATA_BACKUP_PART_SIZE', '0', '数据库备份卷大小', '2', '', '该值用于限制压缩后的分卷最大长度。单位：B；建议设置20M', '1381482488', '1381729564', '1', '20971520', '7');
INSERT INTO `think_config` VALUES ('30', 'DATA_BACKUP_COMPRESS', '4', '数据库备份文件是否启用压缩', '2', '0:不压缩\r\n1:启用压缩', '压缩备份文件需要PHP环境支持gzopen,gzwrite函数', '1381713345', '1381729544', '1', '1', '9');
INSERT INTO `think_config` VALUES ('31', 'DATA_BACKUP_COMPRESS_LEVEL', '4', '数据库备份文件压缩级别', '2', '1:普通\r\n4:一般\r\n9:最高', '数据库备份文件的压缩级别，该配置在开启压缩时生效', '1381713408', '1381713408', '1', '9', '10');
INSERT INTO `think_config` VALUES ('36', 'ADMIN_ALLOW_IP', '2', '后台允许访问IP', '2', '', '多个用逗号分隔，如果不配置表示不限制IP访问', '1387165454', '1387165553', '1', '', '12');
INSERT INTO `think_config` VALUES ('40', 'bb', '3', 'dfsf', '1', '', '', '0', '0', '-1', '', '0');
INSERT INTO `think_config` VALUES ('41', 'www', '3', 'wrewerw', '2', '', '', '1483859471', '1483859471', '-1', '', '0');
INSERT INTO `think_config` VALUES ('39', 'xx', '2', 'xxx', '2', '', '', '1483858837', '1483858837', '-1', 'sadada', '0');

-- ----------------------------
-- Table structure for `think_menu`
-- ----------------------------
DROP TABLE IF EXISTS `think_menu`;
CREATE TABLE `think_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '文档ID',
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '标题',
  `pid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '上级分类ID',
  `sort` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序（同级有效）',
  `url` char(255) NOT NULL DEFAULT '' COMMENT '链接地址',
  `hide` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否隐藏',
  `tip` varchar(255) NOT NULL DEFAULT '' COMMENT '提示',
  `group` varchar(50) DEFAULT '' COMMENT '分组',
  `is_dev` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否仅开发者模式可见',
  `module` varchar(20) NOT NULL DEFAULT 'admin' COMMENT '模块',
  `controller` varchar(32) NOT NULL DEFAULT '0' COMMENT '控制器',
  `action` varchar(32) NOT NULL DEFAULT '0' COMMENT '方法',
  `type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1 内部URL  2 外部URL',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=190 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of think_menu
-- ----------------------------
INSERT INTO `think_menu` VALUES ('1', '首页', '0', '1', '', '0', '', '', '0', 'admin', 'Index', 'index', '1');
INSERT INTO `think_menu` VALUES ('2', '内容', '0', '2', '', '1', '', '', '0', 'admin', 'Article', 'mydocument', '1');
INSERT INTO `think_menu` VALUES ('3', '文档列表', '2', '0', '', '1', '', '内容', '0', 'admin', 'article', 'index', '1');
INSERT INTO `think_menu` VALUES ('4', '新增', '3', '0', '', '0', '', '', '0', 'admin', 'article', 'add', '1');
INSERT INTO `think_menu` VALUES ('5', '编辑', '3', '0', '', '0', '', '', '0', 'admin', 'article', 'edit', '1');
INSERT INTO `think_menu` VALUES ('6', '改变状态', '3', '0', '', '0', '', '', '0', 'admin', 'article', 'setStatus', '1');
INSERT INTO `think_menu` VALUES ('7', '保存', '3', '0', '', '0', '', '', '0', 'admin', 'article', 'update', '1');
INSERT INTO `think_menu` VALUES ('8', '保存草稿', '3', '0', '', '0', '', '', '0', 'admin', 'article', 'autoSave', '1');
INSERT INTO `think_menu` VALUES ('9', '移动', '3', '0', '', '0', '', '', '0', 'admin', 'article', 'move', '1');
INSERT INTO `think_menu` VALUES ('10', '复制', '3', '0', '', '0', '', '', '0', 'admin', 'article', 'copy', '1');
INSERT INTO `think_menu` VALUES ('11', '粘贴', '3', '0', '', '0', '', '', '0', 'admin', 'article', 'paste', '1');
INSERT INTO `think_menu` VALUES ('12', '导入', '3', '0', '', '0', '', '', '0', 'admin', 'article', 'batchOperate', '1');
INSERT INTO `think_menu` VALUES ('13', '回收站', '2', '0', '', '1', '', '内容', '0', 'admin', 'article', 'recycle', '1');
INSERT INTO `think_menu` VALUES ('14', '还原', '13', '0', '', '0', '', '', '0', 'admin', 'article', 'permit', '1');
INSERT INTO `think_menu` VALUES ('15', '清空', '13', '0', '', '0', '', '', '0', 'admin', 'article', 'clear', '1');
INSERT INTO `think_menu` VALUES ('16', '用户', '0', '3', '', '0', '', '', '0', 'admin', 'Administrator', 'index', '1');
INSERT INTO `think_menu` VALUES ('17', '用户信息', '16', '0', '', '0', '', '用户管理', '0', 'admin', 'Administrator', 'userList', '1');
INSERT INTO `think_menu` VALUES ('18', '新增用户', '17', '0', '', '0', '添加新用户', '', '0', 'admin', 'Administrator', 'add', '1');
INSERT INTO `think_menu` VALUES ('20', '新增用户行为', '19', '0', '', '0', '', '', '0', 'admin', 'Administrator', 'addaction', '1');
INSERT INTO `think_menu` VALUES ('21', '编辑用户行为', '19', '0', '', '0', '', '', '0', 'admin', 'Administrator', 'editaction', '1');
INSERT INTO `think_menu` VALUES ('22', '保存用户行为', '19', '0', '', '0', '\"用户->用户行为\"保存编辑和新增的用户行为', '', '0', 'admin', 'Administrator', 'saveAction', '1');
INSERT INTO `think_menu` VALUES ('23', '变更行为状态', '19', '0', '', '0', '\"用户->用户行为\"中的启用,禁用和删除权限', '', '0', 'admin', 'Administrator', 'setStatus', '1');
INSERT INTO `think_menu` VALUES ('24', '禁用会员', '19', '0', 'method=forbidUser', '0', '\"用户->用户信息\"中的禁用', '', '0', 'admin', 'Administrator', 'changeStatus', '1');
INSERT INTO `think_menu` VALUES ('25', '启用会员', '19', '0', 'method=resumeUser', '0', '\"用户->用户信息\"中的启用', '', '0', 'admin', 'Administrator', 'changeStatus', '1');
INSERT INTO `think_menu` VALUES ('26', '删除会员', '19', '0', 'method=deleteUser', '0', '\"用户->用户信息\"中的删除', '', '0', 'admin', 'Administrator', 'changeStatus', '1');
INSERT INTO `think_menu` VALUES ('27', '角色管理', '16', '0', '', '0', '', '用户管理', '0', 'admin', 'AuthManager', 'index', '1');
INSERT INTO `think_menu` VALUES ('28', '删除', '27', '0', 'method=deleteGroup', '0', '删除用户组', '', '0', 'admin', 'AuthManager', 'changeStatus', '1');
INSERT INTO `think_menu` VALUES ('29', '禁用', '27', '0', 'method=forbidGroup', '0', '禁用用户组', '', '0', 'admin', 'AuthManager', 'changeStatus', '1');
INSERT INTO `think_menu` VALUES ('30', '恢复', '27', '0', 'method=resumeGroup', '0', '恢复已禁用的用户组', '', '0', 'admin', 'AuthManager', 'changeStatus', '1');
INSERT INTO `think_menu` VALUES ('31', '新增', '27', '0', '', '0', '创建新的用户组', '', '0', 'admin', 'AuthManager', 'createGroup', '1');
INSERT INTO `think_menu` VALUES ('32', '编辑', '27', '0', '', '0', '编辑用户组名称和描述', '', '0', 'admin', 'AuthManager', 'editGroup', '1');
INSERT INTO `think_menu` VALUES ('33', '保存用户组', '27', '0', '', '0', '新增和编辑用户组的\"保存\"按钮', '', '0', 'admin', 'AuthManager', 'writeGroup', '1');
INSERT INTO `think_menu` VALUES ('34', '授权', '27', '0', '', '0', '\"后台 \\ 用户 \\ 用户信息\"列表页的\"授权\"操作按钮,用于设置用户所属用户组', '', '0', 'admin', 'AuthManager', 'group', '1');
INSERT INTO `think_menu` VALUES ('35', '访问授权', '27', '0', '', '0', '\"后台 \\ 用户 \\ 权限管理\"列表页的\"访问授权\"操作按钮', '', '0', 'admin', 'AuthManager', 'access', '1');
INSERT INTO `think_menu` VALUES ('36', '成员授权', '27', '0', '', '0', '\"后台 \\ 用户 \\ 权限管理\"列表页的\"成员授权\"操作按钮', '', '0', 'admin', 'AuthManager', 'groupUsers', '1');
INSERT INTO `think_menu` VALUES ('37', '解除授权', '27', '0', '', '0', '\"成员授权\"列表页内的解除授权操作按钮', '', '0', 'admin', 'AuthManager', 'removeFromGroup', '1');
INSERT INTO `think_menu` VALUES ('38', '保存成员授权', '27', '0', '', '0', '\"用户信息\"列表页\"授权\"时的\"保存\"按钮和\"成员授权\"里右上角的\"添加\"按钮)', '', '0', 'admin', 'AuthManager', 'addToGroup', '1');
INSERT INTO `think_menu` VALUES ('39', '分类授权', '27', '0', '', '0', '\"后台 \\ 用户 \\ 权限管理\"列表页的\"分类授权\"操作按钮', '', '0', 'admin', 'AuthManager', 'category', '1');
INSERT INTO `think_menu` VALUES ('40', '保存分类授权', '27', '0', '', '0', '\"分类授权\"页面的\"保存\"按钮', '', '0', 'admin', 'AuthManager', 'addToCategory', '1');
INSERT INTO `think_menu` VALUES ('41', '模型授权', '27', '0', '', '0', '\"后台 \\ 用户 \\ 权限管理\"列表页的\"模型授权\"操作按钮', '', '0', 'admin', 'AuthManager', 'modelauth', '1');
INSERT INTO `think_menu` VALUES ('42', '保存模型授权', '27', '0', '', '0', '\"分类授权\"页面的\"保存\"按钮', '', '0', 'admin', 'AuthManager', 'addToModel', '1');
INSERT INTO `think_menu` VALUES ('43', '扩展', '0', '7', '', '1', '', '', '0', 'admin', 'Addons', 'index', '1');
INSERT INTO `think_menu` VALUES ('44', '插件管理', '43', '1', '', '0', '', '扩展', '0', 'admin', 'Addons', 'index', '1');
INSERT INTO `think_menu` VALUES ('45', '创建', '44', '0', '', '0', '服务器上创建插件结构向导', '', '0', 'admin', 'Addons', 'create', '1');
INSERT INTO `think_menu` VALUES ('46', '检测创建', '44', '0', '', '0', '检测插件是否可以创建', '', '0', 'admin', 'Addons', 'checkForm', '1');
INSERT INTO `think_menu` VALUES ('47', '预览', '44', '0', '', '0', '预览插件定义类文件', '', '0', 'admin', 'Addons', 'preview', '1');
INSERT INTO `think_menu` VALUES ('48', '快速生成插件', '44', '0', '', '0', '开始生成插件结构', '', '0', 'admin', 'Addons', 'build', '1');
INSERT INTO `think_menu` VALUES ('49', '设置', '44', '0', '', '0', '设置插件配置', '', '0', 'admin', 'Addons', 'config', '1');
INSERT INTO `think_menu` VALUES ('50', '禁用', '44', '0', '', '0', '禁用插件', '', '0', 'admin', 'Addons', 'disable', '1');
INSERT INTO `think_menu` VALUES ('51', '启用', '44', '0', '', '0', '启用插件', '', '0', 'admin', 'Addons', 'enable', '1');
INSERT INTO `think_menu` VALUES ('52', '安装', '44', '0', '', '0', '安装插件', '', '0', 'admin', 'Addons', 'install', '1');
INSERT INTO `think_menu` VALUES ('53', '卸载', '44', '0', '', '0', '卸载插件', '', '0', 'admin', 'Addons', 'uninstall', '1');
INSERT INTO `think_menu` VALUES ('54', '更新配置', '44', '0', '', '0', '更新插件配置处理', '', '0', 'admin', 'Addons', 'saveconfig', '1');
INSERT INTO `think_menu` VALUES ('55', '插件后台列表', '44', '0', '', '0', '', '', '0', 'admin', 'Addons', 'adminList', '1');
INSERT INTO `think_menu` VALUES ('56', 'URL方式访问插件', '44', '0', '', '0', '控制是否有权限通过url访问插件控制器方法', '', '0', 'admin', 'Addons', 'execute', '1');
INSERT INTO `think_menu` VALUES ('57', '钩子管理', '43', '2', '', '0', '', '扩展', '0', 'admin', 'Addons', 'hooks', '1');
INSERT INTO `think_menu` VALUES ('58', '模型管理', '68', '3', '', '1', '', '系统设置', '0', 'admin', 'Model', 'index', '1');
INSERT INTO `think_menu` VALUES ('59', '新增', '58', '0', '', '0', '', '', '0', 'admin', 'model', 'add', '1');
INSERT INTO `think_menu` VALUES ('60', '编辑', '58', '0', '', '0', '', '', '0', 'admin', 'model', 'edit', '1');
INSERT INTO `think_menu` VALUES ('61', '改变状态', '58', '0', '', '0', '', '', '0', 'admin', 'model', 'setStatus', '1');
INSERT INTO `think_menu` VALUES ('62', '保存数据', '58', '0', '', '0', '', '', '0', 'admin', 'model', 'update', '1');
INSERT INTO `think_menu` VALUES ('63', '属性管理', '68', '0', '', '1', '网站属性配置。', '', '0', 'admin', 'Attribute', 'index', '1');
INSERT INTO `think_menu` VALUES ('64', '新增', '63', '0', '', '0', '', '', '0', 'admin', 'Attribute', 'add', '1');
INSERT INTO `think_menu` VALUES ('65', '编辑', '63', '0', '', '0', '', '', '0', 'admin', 'Attribute', 'edit', '1');
INSERT INTO `think_menu` VALUES ('66', '改变状态', '63', '0', '', '0', '', '', '0', 'admin', 'Attribute', 'setStatus', '1');
INSERT INTO `think_menu` VALUES ('67', '保存数据', '63', '0', '', '0', '', '', '0', 'admin', 'Attribute', 'update', '1');
INSERT INTO `think_menu` VALUES ('68', '系统', '0', '4', '', '0', '', '', '0', 'admin', 'Config', 'index', '1');
INSERT INTO `think_menu` VALUES ('69', '网站设置', '68', '1', '', '0', '', '系统设置', '0', 'admin', 'Config', 'group', '1');
INSERT INTO `think_menu` VALUES ('70', '配置管理', '68', '4', '', '1', '', '系统设置', '0', 'admin', 'Config', 'index', '1');
INSERT INTO `think_menu` VALUES ('71', '编辑', '70', '0', '', '0', '新增编辑和保存配置', '', '0', 'admin', 'Config', 'edit', '1');
INSERT INTO `think_menu` VALUES ('72', '删除', '70', '0', '', '0', '删除配置', '', '0', 'admin', 'Config', 'del', '1');
INSERT INTO `think_menu` VALUES ('73', '新增', '70', '0', '', '0', '新增配置', '', '0', 'admin', 'Config', 'add', '1');
INSERT INTO `think_menu` VALUES ('74', '保存', '70', '0', '', '0', '保存配置', '', '0', 'admin', 'Config', 'save', '1');
INSERT INTO `think_menu` VALUES ('75', '菜单管理', '68', '5', '', '0', '', '系统设置', '0', 'admin', 'Menu', 'index', '1');
INSERT INTO `think_menu` VALUES ('76', '导航管理', '68', '6', '', '1', '', '系统设置', '0', 'admin', 'Channel', 'index', '1');
INSERT INTO `think_menu` VALUES ('77', '新增', '76', '0', '', '0', '', '', '0', 'admin', 'Channel', 'add', '1');
INSERT INTO `think_menu` VALUES ('78', '编辑', '76', '0', '', '0', '', '', '0', 'admin', 'Channel', 'edit', '1');
INSERT INTO `think_menu` VALUES ('79', '删除', '76', '0', '', '0', '', '', '0', 'admin', 'Channel', 'del', '1');
INSERT INTO `think_menu` VALUES ('80', '分类管理', '68', '2', '', '1', '', '系统设置', '0', 'admin', 'Category', 'index', '1');
INSERT INTO `think_menu` VALUES ('81', '编辑', '80', '0', '', '0', '编辑和保存栏目分类', '', '0', 'admin', 'Category', 'edit', '1');
INSERT INTO `think_menu` VALUES ('82', '新增', '80', '0', '', '0', '新增栏目分类', '', '0', 'admin', 'Category', 'add', '1');
INSERT INTO `think_menu` VALUES ('83', '删除', '80', '0', '', '0', '删除栏目分类', '', '0', 'admin', 'Category', 'remove', '1');
INSERT INTO `think_menu` VALUES ('84', '移动', '80', '0', '', '0', '移动栏目分类', '', '0', 'admin', 'Category', 'operate', '1');
INSERT INTO `think_menu` VALUES ('85', '合并', '80', '0', '', '0', '合并栏目分类', '', '0', 'admin', 'Category', 'operate', '1');
INSERT INTO `think_menu` VALUES ('86', '备份数据库', '68', '0', 'type=export', '1', '', '数据备份', '0', 'admin', 'Database', 'index', '1');
INSERT INTO `think_menu` VALUES ('87', '备份', '86', '0', '', '0', '备份数据库', '', '0', 'admin', 'Database', 'export', '1');
INSERT INTO `think_menu` VALUES ('88', '优化表', '86', '0', '', '0', '优化数据表', '', '0', 'admin', 'Database', 'optimize', '1');
INSERT INTO `think_menu` VALUES ('89', '修复表', '86', '0', '', '0', '修复数据表', '', '0', 'admin', 'Database', 'repair', '1');
INSERT INTO `think_menu` VALUES ('90', '还原数据库', '68', '0', 'type=import', '1', '', '数据备份', '0', 'admin', 'Database', 'index', '1');
INSERT INTO `think_menu` VALUES ('91', '恢复', '90', '0', '', '0', '数据库恢复', '', '0', 'admin', 'Database', 'import', '1');
INSERT INTO `think_menu` VALUES ('92', '删除', '90', '0', '', '0', '删除备份文件', '', '0', 'admin', 'Database', 'del', '1');
INSERT INTO `think_menu` VALUES ('96', '新增', '75', '0', '', '0', '', '系统设置', '0', 'admin', 'Menu', 'add', '1');
INSERT INTO `think_menu` VALUES ('98', '编辑', '75', '0', '', '0', '', '', '0', 'admin', 'Menu', 'edit', '1');
INSERT INTO `think_menu` VALUES ('104', '下载管理', '102', '0', 'model=download', '0', '', '', '0', 'admin', 'Think', 'lists', '1');
INSERT INTO `think_menu` VALUES ('105', '配置管理', '102', '0', 'model=config', '0', '', '', '0', 'admin', 'Think', 'lists', '1');
INSERT INTO `think_menu` VALUES ('106', '行为日志', '16', '0', '', '0', '', '行为管理', '0', 'admin', 'behavior', 'index', '1');
INSERT INTO `think_menu` VALUES ('108', '修改密码', '16', '0', '', '1', '', '', '0', 'admin', 'Administrator', 'updatePassword', '1');
INSERT INTO `think_menu` VALUES ('109', '修改昵称', '16', '0', '', '1', '', '', '0', 'admin', 'Administrator', 'updateNickname', '1');
INSERT INTO `think_menu` VALUES ('110', '查看行为日志', '106', '0', '', '1', '', '', '0', 'admin', 'action', 'edit', '1');
INSERT INTO `think_menu` VALUES ('112', '新增数据', '58', '0', '', '1', '', '', '0', 'admin', 'think', 'add', '1');
INSERT INTO `think_menu` VALUES ('113', '编辑数据', '58', '0', '', '1', '', '', '0', 'admin', 'think', 'edit', '1');
INSERT INTO `think_menu` VALUES ('114', '导入', '75', '0', '', '0', '', '', '0', 'admin', 'Menu', 'import', '1');
INSERT INTO `think_menu` VALUES ('115', '生成', '58', '0', '', '0', '', '', '0', 'admin', 'Model', 'generate', '1');
INSERT INTO `think_menu` VALUES ('116', '新增钩子', '57', '0', '', '0', '', '', '0', 'admin', 'Addons', 'addHook', '1');
INSERT INTO `think_menu` VALUES ('117', '编辑钩子', '57', '0', '', '0', '', '', '0', 'admin', 'Addons', 'edithook', '1');
INSERT INTO `think_menu` VALUES ('118', '文档排序', '3', '0', '', '1', '', '', '0', 'admin', 'Article', 'sort', '1');
INSERT INTO `think_menu` VALUES ('119', '排序', '70', '0', '', '1', '', '', '0', 'admin', 'Config', 'sort', '1');
INSERT INTO `think_menu` VALUES ('120', '排序', '75', '0', '', '1', '', '', '0', 'admin', 'Menu', 'sort', '1');
INSERT INTO `think_menu` VALUES ('121', '排序', '76', '0', '', '1', '', '', '0', 'admin', 'Channel', 'sort', '1');
INSERT INTO `think_menu` VALUES ('123', 'xxa', '122', '0', 'xxa', '0', '', 'xx', '0', 'admin', '0', '0', '1');
INSERT INTO `think_menu` VALUES ('124', 'xxb', '122', '0', 'xxb', '0', '', 'xxb', '0', 'admin', '0', '0', '1');
INSERT INTO `think_menu` VALUES ('125', 'xxc', '122', '0', 'xxc', '0', '', 'xxc', '0', 'admin', '0', '0', '1');
INSERT INTO `think_menu` VALUES ('126', 'qqqqq', '0', '0', '', '0', '', 'xxxxx', '1', 'shop', 'aaa', 'nbb', '1');
INSERT INTO `think_menu` VALUES ('131', '规则编辑', '130', '0', '', '0', '', '', '0', 'admin', 'AuthRule', 'ruleEdit', '1');
INSERT INTO `think_menu` VALUES ('132', '规则添加', '130', '0', '', '0', '', '', '0', 'admin', 'AuthRule', 'ruleAdd', '1');
INSERT INTO `think_menu` VALUES ('134', '商城', '0', '8', '', '1', '', '', '0', 'admin', 'Mall', 'index', '1');
INSERT INTO `think_menu` VALUES ('135', '商品列表', '134', '0', '', '0', '', '商品', '0', 'admin', 'Mall', 'good', '1');
INSERT INTO `think_menu` VALUES ('136', '商品添加', '135', '0', '', '0', '', '', '0', 'admin', 'Mall', 'goodadd', '1');
INSERT INTO `think_menu` VALUES ('137', '商品编辑', '135', '0', '', '0', '', '', '0', 'admin', 'Mall', 'goodedit', '1');
INSERT INTO `think_menu` VALUES ('138', '快递设置', '134', '0', '', '0', '', '设置', '0', 'admin', 'Mall', 'express', '1');
INSERT INTO `think_menu` VALUES ('139', '地区价格编辑', '138', '0', '', '0', '', '', '0', 'admin', 'Mall', 'setdistrict', '1');
INSERT INTO `think_menu` VALUES ('140', '快递编辑', '138', '0', '', '0', '', '', '0', 'admin', 'Mall', 'expressedit', '1');
INSERT INTO `think_menu` VALUES ('141', '分类列表', '134', '0', '', '0', '', '商品', '0', 'admin', 'Mall', 'classify', '1');
INSERT INTO `think_menu` VALUES ('142', '订单列表', '134', '0', '', '0', '', '订单', '0', 'admin', 'Mall', 'order', '1');
INSERT INTO `think_menu` VALUES ('143', '基础设置', '134', '0', '', '0', '', '设置', '0', 'admin', 'Mall', 'setinfo', '1');
INSERT INTO `think_menu` VALUES ('144', '支付设置', '134', '0', '', '0', '', '设置', '0', 'admin', 'Mall', 'setpay', '1');
INSERT INTO `think_menu` VALUES ('145', '品牌管理', '134', '0', '', '0', '', '商品', '0', 'admin', 'Mall', 'brand', '1');
INSERT INTO `think_menu` VALUES ('146', '品牌添加', '145', '0', '', '0', '', '', '0', 'admin', 'Mall', 'brandadd', '1');
INSERT INTO `think_menu` VALUES ('147', '品牌编辑', '145', '0', '', '0', '', '', '0', 'admin', 'Mall', 'brandedit', '1');
INSERT INTO `think_menu` VALUES ('148', '退款申请', '134', '0', '', '0', '', '订单', '0', 'admin', 'Mall', 'refund', '1');
INSERT INTO `think_menu` VALUES ('149', '告警计录', '134', '0', '', '0', '', '告警', '0', 'admin', 'Mall', 'viewreport', '1');
INSERT INTO `think_menu` VALUES ('150', '交易维权', '134', '0', '', '0', '', '维权', '0', 'admin', 'Mall', 'payfeedback', '1');
INSERT INTO `think_menu` VALUES ('151', '条款列表', '134', '0', '', '0', '', '条款', '0', 'admin', 'Mallyg', 'clause', '1');
INSERT INTO `think_menu` VALUES ('152', '条款添加', '151', '0', '', '0', '', '', '0', 'admin', 'Mallyg', 'clauseadd', '1');
INSERT INTO `think_menu` VALUES ('153', '条款编辑', '151', '0', '', '0', '', '', '0', 'admin', 'Mallyg', 'clauseedit', '1');
INSERT INTO `think_menu` VALUES ('154', '互动列表', '134', '0', '', '0', '', '互动', '0', 'admin', 'Mallyg', 'interlocution', '1');
INSERT INTO `think_menu` VALUES ('155', '问答详细', '154', '0', '', '0', '', '', '0', 'admin', 'Mallyg', 'questiondetail', '1');
INSERT INTO `think_menu` VALUES ('156', '退款列表', '134', '0', '', '0', '', '订单', '0', 'admin', 'Mall', 'refundment', '1');
INSERT INTO `think_menu` VALUES ('157', '回访电话', '134', '0', '', '0', '', '互动', '0', 'admin', 'Mallyg', 'user_tels', '1');
INSERT INTO `think_menu` VALUES ('158', '产品属性', '134', '0', '', '0', '', '商品', '0', 'admin', 'Mall', 'attribute', '1');
INSERT INTO `think_menu` VALUES ('159', '订单(用户)', '134', '0', '', '0', '', '订单', '0', 'admin', 'Mall', 'user_order', '1');
INSERT INTO `think_menu` VALUES ('161', '商品列表', '160', '0', '', '0', '', '商品', '0', 'admin', 'Mall', 'good', '1');
INSERT INTO `think_menu` VALUES ('162', '商品添加', '161', '0', '', '0', '', '', '0', 'admin', 'Mall', 'goodadd', '1');
INSERT INTO `think_menu` VALUES ('163', '商品编辑', '161', '0', '', '0', '', '', '0', 'admin', 'Mall', 'goodedit', '1');
INSERT INTO `think_menu` VALUES ('164', '快递设置', '160', '0', '', '0', '', '设置', '0', 'admin', 'Mall', 'express', '1');
INSERT INTO `think_menu` VALUES ('165', '地区价格编辑', '164', '0', '', '0', '', '', '0', 'admin', 'Mall', 'setdistrict', '1');
INSERT INTO `think_menu` VALUES ('166', '快递编辑', '164', '0', '', '0', '', '', '0', 'admin', 'Mall', 'expressedit', '1');
INSERT INTO `think_menu` VALUES ('167', '分类列表', '160', '0', '', '0', '', '商品', '0', 'admin', 'Mall', 'classify', '1');
INSERT INTO `think_menu` VALUES ('168', '订单列表', '160', '0', '', '0', '', '订单', '0', 'admin', 'Mall', 'order', '1');
INSERT INTO `think_menu` VALUES ('169', '基础设置', '160', '0', '', '0', '', '设置', '0', 'admin', 'Mall', 'setinfo', '1');
INSERT INTO `think_menu` VALUES ('170', '支付设置', '160', '0', '', '0', '', '设置', '0', 'admin', 'Mall', 'setpay', '1');
INSERT INTO `think_menu` VALUES ('171', '品牌管理', '160', '0', '', '0', '', '商品', '0', 'admin', 'Mall', 'brand', '1');
INSERT INTO `think_menu` VALUES ('172', '品牌添加', '171', '0', '', '0', '', '', '0', 'admin', 'Mall', 'brandadd', '1');
INSERT INTO `think_menu` VALUES ('173', '品牌编辑', '171', '0', '', '0', '', '', '0', 'admin', 'Mall', 'brandedit', '1');
INSERT INTO `think_menu` VALUES ('174', '退款申请', '160', '0', '', '0', '', '订单', '0', 'admin', 'Mall', 'refund', '1');
INSERT INTO `think_menu` VALUES ('175', '告警计录', '160', '0', '', '0', '', '告警', '0', 'admin', 'Mall', 'viewreport', '1');
INSERT INTO `think_menu` VALUES ('176', '交易维权', '160', '0', '', '0', '', '维权', '0', 'admin', 'Mall', 'payfeedback', '1');
INSERT INTO `think_menu` VALUES ('177', '条款列表', '160', '0', '', '0', '', '条款', '0', 'admin', 'Mallyg', 'clause', '1');
INSERT INTO `think_menu` VALUES ('178', '条款添加', '177', '0', '', '0', '', '', '0', 'admin', 'Mallyg', 'clauseadd', '1');
INSERT INTO `think_menu` VALUES ('179', '条款编辑', '177', '0', '', '0', '', '', '0', 'admin', 'Mallyg', 'clauseedit', '1');
INSERT INTO `think_menu` VALUES ('180', '互动列表', '160', '0', '', '0', '', '互动', '0', 'admin', 'Mallyg', 'interlocution', '1');
INSERT INTO `think_menu` VALUES ('181', '问答详细', '180', '0', '', '0', '', '', '0', 'admin', 'Mallyg', 'questiondetail', '1');
INSERT INTO `think_menu` VALUES ('182', '退款列表', '160', '0', '', '0', '', '订单', '0', 'admin', 'Mall', 'refundment', '1');
INSERT INTO `think_menu` VALUES ('183', '回访电话', '160', '0', '', '0', '', '互动', '0', 'admin', 'Mallyg', 'user_tels', '1');
INSERT INTO `think_menu` VALUES ('184', '产品属性', '160', '0', '', '0', '', '商品', '0', 'admin', 'Mall', 'attribute', '1');
INSERT INTO `think_menu` VALUES ('186', 'sdfsdosdfs', '0', '0', '', '0', '', '一小分组3', '0', 'shop', 'pp', 'yysdfsf', '1');
INSERT INTO `think_menu` VALUES ('187', 'qqq2', '126', '0', '', '0', '', 'qqqq222', '0', 'shop', 'qqq2', 'qqq2', '1');
INSERT INTO `think_menu` VALUES ('188', '系统介绍', '1', '0', '', '0', '', '', '0', 'admin', 'Index', 'introduce', '1');
INSERT INTO `think_menu` VALUES ('189', '使用教程', '1', '0', '', '0', '', '程序开发', '0', 'admin', 'Index', 'developer', '1');
