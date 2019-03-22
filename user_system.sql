/*
Navicat MySQL Data Transfer

Source Server         : shop
Source Server Version : 50547
Source Host           : localhost:3306
Source Database       : user_system

Target Server Type    : MYSQL
Target Server Version : 50547
File Encoding         : 65001

Date: 2019-03-22 10:53:16
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES ('1', 'contenttypes', '0001_initial', '2019-03-13 09:11:48');
INSERT INTO `django_migrations` VALUES ('2', 'auth', '0001_initial', '2019-03-13 09:11:48');
INSERT INTO `django_migrations` VALUES ('3', 'admin', '0001_initial', '2019-03-13 09:11:48');
INSERT INTO `django_migrations` VALUES ('4', 'admin', '0002_logentry_remove_auto_add', '2019-03-13 09:11:48');
INSERT INTO `django_migrations` VALUES ('5', 'contenttypes', '0002_remove_content_type_name', '2019-03-13 09:11:48');
INSERT INTO `django_migrations` VALUES ('6', 'auth', '0002_alter_permission_name_max_length', '2019-03-13 09:11:48');
INSERT INTO `django_migrations` VALUES ('7', 'auth', '0003_alter_user_email_max_length', '2019-03-13 09:11:48');
INSERT INTO `django_migrations` VALUES ('8', 'auth', '0004_alter_user_username_opts', '2019-03-13 09:11:49');
INSERT INTO `django_migrations` VALUES ('9', 'auth', '0005_alter_user_last_login_null', '2019-03-13 09:11:49');
INSERT INTO `django_migrations` VALUES ('10', 'auth', '0006_require_contenttypes_0002', '2019-03-13 09:11:49');
INSERT INTO `django_migrations` VALUES ('11', 'auth', '0007_alter_validators_add_error_messages', '2019-03-13 09:11:49');
INSERT INTO `django_migrations` VALUES ('12', 'auth', '0008_alter_user_username_max_length', '2019-03-13 09:11:49');
INSERT INTO `django_migrations` VALUES ('13', 'auth', '0009_alter_user_last_name_max_length', '2019-03-13 09:11:49');
INSERT INTO `django_migrations` VALUES ('14', 'sessions', '0001_initial', '2019-03-13 09:11:49');

-- ----------------------------
-- Table structure for s_active_code
-- ----------------------------
DROP TABLE IF EXISTS `s_active_code`;
CREATE TABLE `s_active_code` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '激活码列表',
  `active_code` varchar(255) DEFAULT NULL COMMENT '激活码',
  `uid` int(11) DEFAULT NULL COMMENT '所属运营中心id',
  `is_use` int(4) DEFAULT '0' COMMENT '是否使用  0--未使用   1--使用',
  `phone` varchar(255) DEFAULT NULL COMMENT '使用用户手机号',
  `use_time` int(11) DEFAULT NULL COMMENT '使用时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of s_active_code
-- ----------------------------
INSERT INTO `s_active_code` VALUES ('1', '919652', '265', '1', '14711111112', '1551153318');
INSERT INTO `s_active_code` VALUES ('2', '826021', '266', '1', '14711111113', '1551173491');
INSERT INTO `s_active_code` VALUES ('3', '390971', '272', '1', '18888888889', '1553140530');
INSERT INTO `s_active_code` VALUES ('4', '881603', null, '0', null, null);
INSERT INTO `s_active_code` VALUES ('5', '838122', null, '0', null, null);
INSERT INTO `s_active_code` VALUES ('6', '753849', null, '0', null, null);
INSERT INTO `s_active_code` VALUES ('7', '327894', null, '0', null, null);
INSERT INTO `s_active_code` VALUES ('8', '379241', null, '0', null, null);
INSERT INTO `s_active_code` VALUES ('9', '844579', null, '0', null, null);
INSERT INTO `s_active_code` VALUES ('10', '674470', null, '0', null, null);
INSERT INTO `s_active_code` VALUES ('11', '740569', null, '0', null, null);
INSERT INTO `s_active_code` VALUES ('12', '723594', null, '0', null, null);
INSERT INTO `s_active_code` VALUES ('13', '803586', null, '0', null, null);
INSERT INTO `s_active_code` VALUES ('14', '873196', null, '0', null, null);
INSERT INTO `s_active_code` VALUES ('15', '969659', null, '0', null, null);
INSERT INTO `s_active_code` VALUES ('16', '289600', null, '0', null, null);
INSERT INTO `s_active_code` VALUES ('17', '347273', null, '0', null, null);
INSERT INTO `s_active_code` VALUES ('18', '487366', null, '0', null, null);
INSERT INTO `s_active_code` VALUES ('19', '940183', null, '0', null, null);
INSERT INTO `s_active_code` VALUES ('20', '479647', null, '0', null, null);
INSERT INTO `s_active_code` VALUES ('21', '210291', null, '0', null, null);
INSERT INTO `s_active_code` VALUES ('22', '993457', null, '0', null, null);
INSERT INTO `s_active_code` VALUES ('23', '805939', null, '0', null, null);
INSERT INTO `s_active_code` VALUES ('24', '863144', null, '0', null, null);
INSERT INTO `s_active_code` VALUES ('25', '144979', null, '0', null, null);
INSERT INTO `s_active_code` VALUES ('26', '951313', null, '0', null, null);
INSERT INTO `s_active_code` VALUES ('27', '888289', null, '0', null, null);
INSERT INTO `s_active_code` VALUES ('28', '825062', null, '0', null, null);
INSERT INTO `s_active_code` VALUES ('29', '171576', null, '0', null, null);
INSERT INTO `s_active_code` VALUES ('30', '540039', null, '0', null, null);
INSERT INTO `s_active_code` VALUES ('31', '403533', null, '0', null, null);
INSERT INTO `s_active_code` VALUES ('32', '348963', null, '0', null, null);
INSERT INTO `s_active_code` VALUES ('33', '889339', null, '0', null, null);
INSERT INTO `s_active_code` VALUES ('34', '332118', null, '0', null, null);
INSERT INTO `s_active_code` VALUES ('35', '622228', null, '0', null, null);
INSERT INTO `s_active_code` VALUES ('36', '741803', null, '0', null, null);
INSERT INTO `s_active_code` VALUES ('37', '505117', null, '0', null, null);

-- ----------------------------
-- Table structure for s_admin
-- ----------------------------
DROP TABLE IF EXISTS `s_admin`;
CREATE TABLE `s_admin` (
  `id` mediumint(6) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL DEFAULT '',
  `password` varchar(32) NOT NULL DEFAULT '',
  `encrypt` varchar(6) NOT NULL DEFAULT '',
  `lastloginip` varchar(255) DEFAULT '0',
  `lastlogintime` int(10) unsigned NOT NULL DEFAULT '0',
  `email` varchar(40) NOT NULL DEFAULT '',
  `mobile` varchar(11) NOT NULL DEFAULT '',
  `realname` varchar(50) NOT NULL DEFAULT '',
  `openid` varchar(255) NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否有效(2:无效,1:有效)',
  `updatetime` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `username` (`username`),
  KEY `status` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of s_admin
-- ----------------------------
INSERT INTO `s_admin` VALUES ('1', 'admin', 'aa4057f4d11c8aa6907432bc48f28964', '', '664090867', '1547604473', '283818035@qq.ccom', '18337381783', '张三丰', '', '1', '1547544128');
INSERT INTO `s_admin` VALUES ('6', 'aaaaaa', 'afab8c49cfc5b49165a298495ff0ee1d', '', '0', '0', '952172473@qq.com', '18654625414', 'aini', '', '1', '0');

-- ----------------------------
-- Table structure for s_admin_group
-- ----------------------------
DROP TABLE IF EXISTS `s_admin_group`;
CREATE TABLE `s_admin_group` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `description` text,
  `rules` varchar(500) NOT NULL DEFAULT '' COMMENT '用户组拥有的规则id，多个规则 , 隔开',
  `listorder` smallint(5) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `listorder` (`listorder`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of s_admin_group
-- ----------------------------
INSERT INTO `s_admin_group` VALUES ('1', '普通管理员', '密码加密只是MD5', '', '0', '1477622552');
INSERT INTO `s_admin_group` VALUES ('2', '工作人员', '仅拥有日志管理权限', '18,23,27', '0', '1476067479');
INSERT INTO `s_admin_group` VALUES ('3', '后台演示', '只能看，不能增删改', '31,1,2,3,7,8,23,18,12,13,27,32', '0', '1530341119');

-- ----------------------------
-- Table structure for s_admin_group_access
-- ----------------------------
DROP TABLE IF EXISTS `s_admin_group_access`;
CREATE TABLE `s_admin_group_access` (
  `uid` int(10) unsigned NOT NULL COMMENT '用户id',
  `group_id` mediumint(8) unsigned NOT NULL COMMENT '用户组id',
  UNIQUE KEY `uid_group_id` (`uid`,`group_id`),
  KEY `uid` (`uid`),
  KEY `group_id` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of s_admin_group_access
-- ----------------------------
INSERT INTO `s_admin_group_access` VALUES ('6', '1');

-- ----------------------------
-- Table structure for s_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `s_admin_log`;
CREATE TABLE `s_admin_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `m` varchar(15) NOT NULL,
  `c` varchar(20) NOT NULL,
  `a` varchar(20) NOT NULL,
  `querystring` varchar(255) NOT NULL,
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(20) NOT NULL,
  `ip` varchar(255) NOT NULL,
  `time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of s_admin_log
-- ----------------------------

-- ----------------------------
-- Table structure for s_game_config
-- ----------------------------
DROP TABLE IF EXISTS `s_game_config`;
CREATE TABLE `s_game_config` (
  `keyid` int(11) NOT NULL AUTO_INCREMENT,
  `zt1` int(11) DEFAULT '0' COMMENT '升级一级会员直推人数',
  `td1` int(11) DEFAULT '0' COMMENT '升级1级会员团队人数',
  `zt2` int(11) DEFAULT '0' COMMENT '升级2级会员直推人数',
  `td2` int(11) DEFAULT '0' COMMENT '升级2级会员团队人数',
  `zt3` int(11) DEFAULT '0' COMMENT '升级3级会员直推人数',
  `td3` int(11) DEFAULT '0' COMMENT '升级3级会员团队人数',
  `zt4` int(11) DEFAULT '0' COMMENT '升级4级会员直推人数',
  `td4` int(11) DEFAULT '0' COMMENT '升级4级会员团队人数',
  `zt5` int(11) DEFAULT '0' COMMENT '升级5级会员直推人数',
  `td5` int(11) DEFAULT '0' COMMENT '升级5级会员团队人数',
  `zt6` int(11) DEFAULT '0' COMMENT '升级6级会员直推人数',
  `td6` int(11) DEFAULT '0' COMMENT '升级6级会员团队人数',
  `zt7` int(11) DEFAULT '0' COMMENT '升级7级会员直推人数',
  `td7` int(11) DEFAULT '0' COMMENT '升级7级会员团队人数',
  `zt8` int(11) DEFAULT '0' COMMENT '升级8级会员直推人数',
  `td8` int(11) DEFAULT '0' COMMENT '升级8级会员团队人数',
  `zt9` int(11) DEFAULT '0' COMMENT '升级9级会员直推人数',
  `td9` int(11) DEFAULT '0' COMMENT '升级9级会员团队人数',
  PRIMARY KEY (`keyid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of s_game_config
-- ----------------------------
INSERT INTO `s_game_config` VALUES ('1', '1', '1', '2', '2', '3', '3', '4', '4', '5', '5', '6', '6', '7', '7', '8', '8', '9', '9');

-- ----------------------------
-- Table structure for s_level_apply
-- ----------------------------
DROP TABLE IF EXISTS `s_level_apply`;
CREATE TABLE `s_level_apply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL COMMENT '会员id',
  `phone` varchar(255) DEFAULT NULL COMMENT '会员手机号',
  `level` int(4) DEFAULT '0' COMMENT '申请的等级',
  `status` int(4) DEFAULT '0' COMMENT '运营中心处理申请状态  0-已申请 1--已通过  2--已拒绝 ',
  `createtime` int(11) DEFAULT NULL,
  `pstatus` int(4) DEFAULT '0' COMMENT '上级处理申请状态  0-已申请 1--已通过  2--已拒绝 ',
  `pid` int(11) DEFAULT '0' COMMENT '上级会员id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of s_level_apply
-- ----------------------------
INSERT INTO `s_level_apply` VALUES ('1', '272', '18888888889', '1', '0', '1553147374', '0', '0');
INSERT INTO `s_level_apply` VALUES ('2', '265', '14711111112', '1', '1', '1553220422', '0', '0');
INSERT INTO `s_level_apply` VALUES ('3', '266', '14711111113', '1', '0', '1553220437', '0', '0');

-- ----------------------------
-- Table structure for s_login_log
-- ----------------------------
DROP TABLE IF EXISTS `s_login_log`;
CREATE TABLE `s_login_log` (
  `keyid` int(11) NOT NULL AUTO_INCREMENT,
  `id` varchar(255) DEFAULT NULL COMMENT '会员编号id',
  `nickname` varchar(255) DEFAULT NULL COMMENT '会员昵称',
  `phone` varchar(255) DEFAULT NULL COMMENT '会员手机号',
  `ip` varchar(255) DEFAULT NULL COMMENT '会员登录IP',
  `createtime` int(11) DEFAULT NULL COMMENT '登录时间',
  PRIMARY KEY (`keyid`)
) ENGINE=MyISAM AUTO_INCREMENT=857 DEFAULT CHARSET=utf8 COMMENT='会员登录日志表';

-- ----------------------------
-- Records of s_login_log
-- ----------------------------
INSERT INTO `s_login_log` VALUES ('739', '43', '可乐', '18888888888', null, '1553053589');
INSERT INTO `s_login_log` VALUES ('740', '43', '可乐', '18888888888', '127.0.0.1', '1553053866');
INSERT INTO `s_login_log` VALUES ('741', '43', '可乐', '18888888888', '127.0.0.1', '1553059061');
INSERT INTO `s_login_log` VALUES ('742', '43', '可乐', '18888888888', '127.0.0.1', '1553071102');
INSERT INTO `s_login_log` VALUES ('743', '43', '可乐', '18888888888', '127.0.0.1', '1553076393');
INSERT INTO `s_login_log` VALUES ('744', '43', '可乐', '18888888888', '127.0.0.1', '1553132544');
INSERT INTO `s_login_log` VALUES ('745', '43', '可乐', '18888888888', '127.0.0.1', '1553136963');
INSERT INTO `s_login_log` VALUES ('746', '43', '可乐', '18888888888', '127.0.0.1', '1553137268');
INSERT INTO `s_login_log` VALUES ('747', '43', '可乐', '18888888888', '127.0.0.1', '1553137686');
INSERT INTO `s_login_log` VALUES ('748', '43', '可乐', '18888888888', '127.0.0.1', '1553137723');
INSERT INTO `s_login_log` VALUES ('749', '43', '可乐', '18888888888', '127.0.0.1', '1553137828');
INSERT INTO `s_login_log` VALUES ('750', '43', '可乐', '18888888888', '127.0.0.1', '1553137953');
INSERT INTO `s_login_log` VALUES ('751', '43', '可乐', '18888888888', '127.0.0.1', '1553138000');
INSERT INTO `s_login_log` VALUES ('752', '43', '可乐', '18888888888', '127.0.0.1', '1553138047');
INSERT INTO `s_login_log` VALUES ('753', '43', '可乐', '18888888888', '127.0.0.1', '1553138086');
INSERT INTO `s_login_log` VALUES ('754', '43', '可乐', '18888888888', '127.0.0.1', '1553138172');
INSERT INTO `s_login_log` VALUES ('755', '43', '可乐', '18888888888', '127.0.0.1', '1553138390');
INSERT INTO `s_login_log` VALUES ('756', '43', '可乐', '18888888888', '127.0.0.1', '1553138437');
INSERT INTO `s_login_log` VALUES ('757', '43', '可乐', '18888888888', '127.0.0.1', '1553138653');
INSERT INTO `s_login_log` VALUES ('758', '43', '可乐', '18888888888', '127.0.0.1', '1553138743');
INSERT INTO `s_login_log` VALUES ('759', '43', '可乐', '18888888888', '127.0.0.1', '1553138878');
INSERT INTO `s_login_log` VALUES ('760', '43', '可乐', '18888888888', '127.0.0.1', '1553138900');
INSERT INTO `s_login_log` VALUES ('761', '43', '可乐', '18888888888', '127.0.0.1', '1553139158');
INSERT INTO `s_login_log` VALUES ('762', '43', '可乐', '18888888888', '127.0.0.1', '1553139327');
INSERT INTO `s_login_log` VALUES ('763', '272', '123', '18888888889', '127.0.0.1', '1553139374');
INSERT INTO `s_login_log` VALUES ('764', '272', '123', '18888888889', '127.0.0.1', '1553140021');
INSERT INTO `s_login_log` VALUES ('765', '272', '123', '18888888889', '127.0.0.1', '1553140105');
INSERT INTO `s_login_log` VALUES ('766', '272', '123', '18888888889', '127.0.0.1', '1553140155');
INSERT INTO `s_login_log` VALUES ('767', '272', '123', '18888888889', '127.0.0.1', '1553140186');
INSERT INTO `s_login_log` VALUES ('768', '272', '123', '18888888889', '127.0.0.1', '1553140289');
INSERT INTO `s_login_log` VALUES ('769', '272', '123', '18888888889', '127.0.0.1', '1553140406');
INSERT INTO `s_login_log` VALUES ('770', '272', '123', '18888888889', '127.0.0.1', '1553140495');
INSERT INTO `s_login_log` VALUES ('771', '272', '123', '18888888889', '127.0.0.1', '1553146725');
INSERT INTO `s_login_log` VALUES ('772', '272', '123', '18888888889', '127.0.0.1', '1553147194');
INSERT INTO `s_login_log` VALUES ('773', '272', '123', '18888888889', '127.0.0.1', '1553147313');
INSERT INTO `s_login_log` VALUES ('774', '272', '123', '18888888889', '127.0.0.1', '1553147372');
INSERT INTO `s_login_log` VALUES ('775', '264', '酷炫裙子0007b', '14711111111', '127.0.0.1', '1553147450');
INSERT INTO `s_login_log` VALUES ('776', '43', '可乐', '18888888888', '127.0.0.1', '1553148881');
INSERT INTO `s_login_log` VALUES ('777', '43', '可乐', '18888888888', '127.0.0.1', '1553149855');
INSERT INTO `s_login_log` VALUES ('778', '43', '可乐', '18888888888', '127.0.0.1', '1553150547');
INSERT INTO `s_login_log` VALUES ('779', '43', '可乐', '18888888888', '127.0.0.1', '1553150627');
INSERT INTO `s_login_log` VALUES ('780', '43', '可乐', '18888888888', '127.0.0.1', '1553151403');
INSERT INTO `s_login_log` VALUES ('781', '43', '可乐', '18888888888', '127.0.0.1', '1553151502');
INSERT INTO `s_login_log` VALUES ('782', '43', '可乐', '18888888888', '127.0.0.1', '1553151626');
INSERT INTO `s_login_log` VALUES ('783', '43', '可乐', '18888888888', '127.0.0.1', '1553151713');
INSERT INTO `s_login_log` VALUES ('784', '43', '可乐', '18888888888', '127.0.0.1', '1553151738');
INSERT INTO `s_login_log` VALUES ('785', '43', '可乐', '18888888888', '127.0.0.1', '1553151834');
INSERT INTO `s_login_log` VALUES ('786', '43', '可乐', '18888888888', '127.0.0.1', '1553151896');
INSERT INTO `s_login_log` VALUES ('787', '43', '可乐', '18888888888', '127.0.0.1', '1553152399');
INSERT INTO `s_login_log` VALUES ('788', '43', '可乐', '18888888888', '127.0.0.1', '1553153447');
INSERT INTO `s_login_log` VALUES ('789', '43', '可乐', '18888888888', '127.0.0.1', '1553156019');
INSERT INTO `s_login_log` VALUES ('790', '43', '可乐', '18888888888', '127.0.0.1', '1553156217');
INSERT INTO `s_login_log` VALUES ('791', '43', '可乐', '18888888888', '127.0.0.1', '1553156713');
INSERT INTO `s_login_log` VALUES ('792', '43', '可乐', '18888888888', '127.0.0.1', '1553156963');
INSERT INTO `s_login_log` VALUES ('793', '43', '可乐', '18888888888', '127.0.0.1', '1553157544');
INSERT INTO `s_login_log` VALUES ('794', '43', '可乐', '18888888888', '127.0.0.1', '1553157605');
INSERT INTO `s_login_log` VALUES ('795', '43', '可乐', '18888888888', '127.0.0.1', '1553158137');
INSERT INTO `s_login_log` VALUES ('796', '43', '可乐', '18888888888', '127.0.0.1', '1553158197');
INSERT INTO `s_login_log` VALUES ('797', '43', '可乐', '18888888888', '127.0.0.1', '1553158266');
INSERT INTO `s_login_log` VALUES ('798', '43', '可乐', '18888888888', '127.0.0.1', '1553158295');
INSERT INTO `s_login_log` VALUES ('799', '43', '可乐', '18888888888', '127.0.0.1', '1553158449');
INSERT INTO `s_login_log` VALUES ('800', '43', '可乐', '18888888888', '127.0.0.1', '1553158491');
INSERT INTO `s_login_log` VALUES ('801', '43', '可乐', '18888888888', '127.0.0.1', '1553158605');
INSERT INTO `s_login_log` VALUES ('802', '43', '可乐', '18888888888', '127.0.0.1', '1553160620');
INSERT INTO `s_login_log` VALUES ('803', '43', '可乐', '18888888888', '127.0.0.1', '1553161356');
INSERT INTO `s_login_log` VALUES ('804', '43', '可乐', '18888888888', '127.0.0.1', '1553161445');
INSERT INTO `s_login_log` VALUES ('805', '264', '酷炫裙子0007b', '14711111111', '127.0.0.1', '1553161617');
INSERT INTO `s_login_log` VALUES ('806', '264', '酷炫裙子0007b', '14711111111', '127.0.0.1', '1553162558');
INSERT INTO `s_login_log` VALUES ('807', '264', '酷炫裙子0007b', '14711111111', '127.0.0.1', '1553163002');
INSERT INTO `s_login_log` VALUES ('808', '264', '酷炫裙子0007b', '14711111111', '127.0.0.1', '1553163042');
INSERT INTO `s_login_log` VALUES ('809', '264', '酷炫裙子0007b', '14711111111', '127.0.0.1', '1553163104');
INSERT INTO `s_login_log` VALUES ('810', '264', '酷炫裙子0007b', '14711111111', '127.0.0.1', '1553163134');
INSERT INTO `s_login_log` VALUES ('811', '264', '酷炫裙子0007b', '14711111111', '127.0.0.1', '1553163170');
INSERT INTO `s_login_log` VALUES ('812', '264', '酷炫裙子0007b', '14711111111', '127.0.0.1', '1553163201');
INSERT INTO `s_login_log` VALUES ('813', '264', '酷炫裙子0007b', '14711111111', '127.0.0.1', '1553163230');
INSERT INTO `s_login_log` VALUES ('814', '264', '酷炫裙子0007b', '14711111111', '127.0.0.1', '1553163374');
INSERT INTO `s_login_log` VALUES ('815', '264', '酷炫裙子0007b', '14711111111', '127.0.0.1', '1553163462');
INSERT INTO `s_login_log` VALUES ('816', '264', '酷炫裙子0007b', '14711111111', '127.0.0.1', '1553217164');
INSERT INTO `s_login_log` VALUES ('817', '264', '酷炫裙子0007b', '14711111111', '127.0.0.1', '1553217236');
INSERT INTO `s_login_log` VALUES ('818', '264', '酷炫裙子0007b', '14711111111', '127.0.0.1', '1553217307');
INSERT INTO `s_login_log` VALUES ('819', '264', '酷炫裙子0007b', '14711111111', '127.0.0.1', '1553217389');
INSERT INTO `s_login_log` VALUES ('820', '264', '酷炫裙子0007b', '14711111111', '127.0.0.1', '1553217461');
INSERT INTO `s_login_log` VALUES ('821', '264', '酷炫裙子0007b', '14711111111', '127.0.0.1', '1553217596');
INSERT INTO `s_login_log` VALUES ('822', '264', '酷炫裙子0007b', '14711111111', '127.0.0.1', '1553217622');
INSERT INTO `s_login_log` VALUES ('823', '264', '酷炫裙子0007b', '14711111111', '127.0.0.1', '1553217657');
INSERT INTO `s_login_log` VALUES ('824', '264', '酷炫裙子0007b', '14711111111', '127.0.0.1', '1553217699');
INSERT INTO `s_login_log` VALUES ('825', '264', '酷炫裙子0007b', '14711111111', '127.0.0.1', '1553217737');
INSERT INTO `s_login_log` VALUES ('826', '264', '酷炫裙子0007b', '14711111111', '127.0.0.1', '1553217865');
INSERT INTO `s_login_log` VALUES ('827', '264', '酷炫裙子0007b', '14711111111', '127.0.0.1', '1553217988');
INSERT INTO `s_login_log` VALUES ('828', '264', '酷炫裙子0007b', '14711111111', '127.0.0.1', '1553218060');
INSERT INTO `s_login_log` VALUES ('829', '264', '酷炫裙子0007b', '14711111111', '127.0.0.1', '1553218098');
INSERT INTO `s_login_log` VALUES ('830', '264', '酷炫裙子0007b', '14711111111', '127.0.0.1', '1553218146');
INSERT INTO `s_login_log` VALUES ('831', '264', '酷炫裙子0007b', '14711111111', '127.0.0.1', '1553218382');
INSERT INTO `s_login_log` VALUES ('832', '264', '酷炫裙子0007b', '14711111111', '127.0.0.1', '1553218469');
INSERT INTO `s_login_log` VALUES ('833', '264', '酷炫裙子0007b', '14711111111', '127.0.0.1', '1553218715');
INSERT INTO `s_login_log` VALUES ('834', '264', '酷炫裙子0007b', '14711111111', '127.0.0.1', '1553219402');
INSERT INTO `s_login_log` VALUES ('835', '264', '酷炫裙子0007b', '14711111111', '127.0.0.1', '1553219436');
INSERT INTO `s_login_log` VALUES ('836', '264', '酷炫裙子0007b', '14711111111', '127.0.0.1', '1553219672');
INSERT INTO `s_login_log` VALUES ('837', '264', '酷炫裙子0007b', '14711111111', '127.0.0.1', '1553219724');
INSERT INTO `s_login_log` VALUES ('838', '264', '酷炫裙子0007b', '14711111111', '127.0.0.1', '1553219892');
INSERT INTO `s_login_log` VALUES ('839', '265', '甜美小熊猫0007c', '14711111112', '127.0.0.1', '1553220420');
INSERT INTO `s_login_log` VALUES ('840', '266', '明亮小天鹅0007d', '14711111113', '127.0.0.1', '1553220434');
INSERT INTO `s_login_log` VALUES ('841', '264', '酷炫裙子0007b', '14711111111', '127.0.0.1', '1553220447');
INSERT INTO `s_login_log` VALUES ('842', '264', '酷炫裙子0007b', '14711111111', '127.0.0.1', '1553220718');
INSERT INTO `s_login_log` VALUES ('843', '264', '酷炫裙子0007b', '14711111111', '127.0.0.1', '1553221062');
INSERT INTO `s_login_log` VALUES ('844', '264', '酷炫裙子0007b', '14711111111', '127.0.0.1', '1553221151');
INSERT INTO `s_login_log` VALUES ('845', '265', '甜美小熊猫0007c', '14711111112', '127.0.0.1', '1553221177');
INSERT INTO `s_login_log` VALUES ('846', '265', '甜美小熊猫0007c', '14711111112', '127.0.0.1', '1553221411');
INSERT INTO `s_login_log` VALUES ('847', '265', '甜美小熊猫0007c', '14711111112', '127.0.0.1', '1553221803');
INSERT INTO `s_login_log` VALUES ('848', '265', '甜美小熊猫0007c', '14711111112', '127.0.0.1', '1553222338');
INSERT INTO `s_login_log` VALUES ('849', '265', '甜美小熊猫0007c', '14711111112', '127.0.0.1', '1553222640');
INSERT INTO `s_login_log` VALUES ('850', '265', '甜美小熊猫0007c', '14711111112', '127.0.0.1', '1553222712');
INSERT INTO `s_login_log` VALUES ('851', '265', '甜美小熊猫0007c', '14711111112', '127.0.0.1', '1553222740');
INSERT INTO `s_login_log` VALUES ('852', '265', '甜美小熊猫0007c', '14711111112', '127.0.0.1', '1553222779');
INSERT INTO `s_login_log` VALUES ('853', '265', '甜美小熊猫0007c', '14711111112', '127.0.0.1', '1553223047');
INSERT INTO `s_login_log` VALUES ('854', '265', '甜美小熊猫0007c', '14711111112', '127.0.0.1', '1553223074');
INSERT INTO `s_login_log` VALUES ('855', '265', '甜美小熊猫0007c', '14711111112', '127.0.0.1', '1553223118');
INSERT INTO `s_login_log` VALUES ('856', '265', '甜美小熊猫0007c', '14711111112', '127.0.0.1', '1553223151');

-- ----------------------------
-- Table structure for s_member
-- ----------------------------
DROP TABLE IF EXISTS `s_member`;
CREATE TABLE `s_member` (
  `keyid` int(11) NOT NULL AUTO_INCREMENT,
  `invite` varchar(255) DEFAULT NULL COMMENT '玩家推荐码',
  `phone` varchar(255) DEFAULT NULL COMMENT '玩家手机号',
  `nickname` varchar(255) DEFAULT NULL COMMENT '玩家昵称',
  `realname` varchar(255) DEFAULT NULL COMMENT '真实姓名',
  `password` varchar(255) DEFAULT NULL COMMENT '密码',
  `status` int(11) DEFAULT '1' COMMENT '是否封号 1 正常  0 封号',
  `superior` varchar(255) DEFAULT NULL COMMENT '玩家上级手机号',
  `td_str` longtext COMMENT '团队id',
  `td_num` int(11) DEFAULT '0' COMMENT '团队数量',
  `tj_num` int(11) DEFAULT '0' COMMENT '直推数量',
  `pid` int(11) DEFAULT '0' COMMENT '上级id',
  `pid2` int(11) DEFAULT '0' COMMENT '上上级id',
  `pid3` int(11) DEFAULT '0' COMMENT '上上上级id',
  `pid4` int(11) DEFAULT '0' COMMENT '上4级id',
  `pid5` int(11) DEFAULT '0' COMMENT '上5级id',
  `pid6` int(11) DEFAULT '0' COMMENT '上6级id',
  `pid7` int(11) DEFAULT '0' COMMENT '上7级id',
  `pid8` int(11) DEFAULT '0' COMMENT '上8级id',
  `jwt` varchar(255) DEFAULT NULL,
  `login_num` int(11) DEFAULT '0' COMMENT '登录次数',
  `level` int(8) DEFAULT '0' COMMENT '会员等级',
  `type` int(8) DEFAULT '0' COMMENT '会员类型   2--总后台   1--运营中心  0--普通会员',
  `createtime` int(11) DEFAULT NULL COMMENT '玩家创建时间',
  `lastlogin` int(11) DEFAULT NULL COMMENT '玩家最后一次登录时间',
  `jihuo_num` int(11) DEFAULT '0' COMMENT '激活码数量',
  `active_code` varchar(255) DEFAULT '0' COMMENT '使用的激活码',
  `wx_name` varchar(255) DEFAULT NULL COMMENT '微信名',
  `zfb` varchar(255) DEFAULT NULL COMMENT '支付宝账号',
  `qq` varchar(255) DEFAULT NULL COMMENT 'QQ号',
  PRIMARY KEY (`keyid`)
) ENGINE=MyISAM AUTO_INCREMENT=274 DEFAULT CHARSET=utf8 COMMENT='会员表';

-- ----------------------------
-- Records of s_member
-- ----------------------------
INSERT INTO `s_member` VALUES ('43', '00017', '18888888888', '可乐', 'admin', 'e10adc3949ba59abbe56e057f20f883e', '1', '', '264_1,265_2,266_3,267_3,268_4,269_1,272_1', '7', '3', '0', '0', '0', '0', '0', '0', '0', '0', null, '53', '0', '2', '1544522427', null, '0', '0', 'wx_9876', '18842659408', '1363776797');
INSERT INTO `s_member` VALUES ('264', '0007b', '14711111111', '酷炫裙子0007b', '1', 'e10adc3949ba59abbe56e057f20f883e', '1', '18888888888', '265_1,266_2,267_2,268_3', '4', '1', '43', '0', '0', '0', '0', '0', '0', '0', null, '39', '0', '1', '1550721402', null, '0', '0', null, null, null);
INSERT INTO `s_member` VALUES ('265', '0007c', '14711111112', '甜美小熊猫0007c', '小明', 'e10adc3949ba59abbe56e057f20f883e', '1', '14711111111', '266_1,267_1,268_2', '3', '2', '264', '43', '0', '0', '0', '0', '0', '0', null, '13', '1', '0', '1550722002', null, '0', '919652', '土豆', '可乐', '13678945612');
INSERT INTO `s_member` VALUES ('266', '0007d', '14711111113', '明亮小天鹅0007d', '112', 'e10adc3949ba59abbe56e057f20f883e', '1', '14711111112', '268_1', '1', '1', '265', '264', '43', '0', '0', '0', '0', '0', null, '1', '0', '0', '1550723402', null, '0', '826021', null, null, null);
INSERT INTO `s_member` VALUES ('267', '0007e', '14711111114', '专注樱桃0007e', '114', 'e10adc3949ba59abbe56e057f20f883e', '1', '14711111112', null, '0', '0', '265', '264', '43', '0', '0', '0', '0', '0', null, '0', '0', '0', '1550724402', null, '0', '0', null, null, null);
INSERT INTO `s_member` VALUES ('268', '0007f', '14711111115', '悦耳斑马0007f', '115', 'e10adc3949ba59abbe56e057f20f883e', '1', '14711111113', null, '0', '0', '266', '265', '264', '43', '0', '0', '0', '0', null, '0', '2', '1', '1550725302', null, '0', '0', null, null, null);
INSERT INTO `s_member` VALUES ('269', '0007g', '14711111116', '务实长颈鹿0007g', '116', 'e10adc3949ba59abbe56e057f20f883e', '1', '18888888888', null, '0', '0', '43', '0', '0', '0', '0', '0', '0', '0', null, '0', '0', '1', '1550725402', null, '0', '0', null, null, null);
INSERT INTO `s_member` VALUES ('272', '71263', '18888888889', '123', '123', 'e10adc3949ba59abbe56e057f20f883e', '1', '18888888888', null, '0', '0', '43', '0', '0', '0', '0', '0', '0', '0', null, '12', '1', '0', '1553075947', null, '0', '390971', null, null, null);
INSERT INTO `s_member` VALUES ('270', '9997h', '14725836978', '搞怪铅笔9997h', '小花', 'e10adc3949ba59abbe56e057f20f883e', '1', null, null, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', null, '0', '0', '1', '1551231544', null, '0', '0', '土豆', '147235689', '235689');
INSERT INTO `s_member` VALUES ('273', '77668', '18888888887', '测试', '测试', 'e10adc3949ba59abbe56e057f20f883e', '1', null, null, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', null, '0', '0', '1', '1553161462', null, '0', '0', null, null, null);

-- ----------------------------
-- Table structure for s_test
-- ----------------------------
DROP TABLE IF EXISTS `s_test`;
CREATE TABLE `s_test` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` longtext,
  `type` varchar(100) DEFAULT NULL,
  `day` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=231 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of s_test
-- ----------------------------
INSERT INTO `s_test` VALUES ('1', '{\"PHPSESSID\":\"nf9orb6cqvuivurni6bodkkf74\",\"phone\":\"123456\",\"password\":\"123456\",\"yzm\":\"1234\"}', 'reg', '2019-02-18 17:05:29');
INSERT INTO `s_test` VALUES ('2', '{\"PHPSESSID\":\"nf9orb6cqvuivurni6bodkkf74\",\"phone\":\"123456\",\"password\":\"123456\",\"yzm\":\"1234\"}', 'reg', '2019-02-18 17:06:20');
INSERT INTO `s_test` VALUES ('3', '{\"PHPSESSID\":\"nf9orb6cqvuivurni6bodkkf74\",\"phone\":\"123456\",\"password\":\"123456\",\"yzm\":\"1234\"}', 'reg', '2019-02-18 17:06:21');
INSERT INTO `s_test` VALUES ('4', '{\"PHPSESSID\":\"nf9orb6cqvuivurni6bodkkf74\",\"phone\":\"123456\",\"password\":\"123456\",\"yzm\":\"1234\"}', 'reg', '2019-02-18 17:06:50');
INSERT INTO `s_test` VALUES ('5', '{\"PHPSESSID\":\"nf9orb6cqvuivurni6bodkkf74\",\"phone\":\"123456\",\"password\":\"123456\",\"yzm\":\"1234\"}', 'reg', '2019-02-18 17:07:27');
INSERT INTO `s_test` VALUES ('6', '{\"PHPSESSID\":\"nf9orb6cqvuivurni6bodkkf74\",\"phone\":\"123456\",\"password\":\"123456\",\"yzm\":\"1234\"}', 'reg', '2019-02-18 17:08:14');
INSERT INTO `s_test` VALUES ('7', '{\"PHPSESSID\":\"lpsh3qc7qslq5q6lbg7k8i3re3\"}', 'active', '2019-02-20 10:00:34');
INSERT INTO `s_test` VALUES ('8', '{\"PHPSESSID\":\"lpsh3qc7qslq5q6lbg7k8i3re3\"}', 'active', '2019-02-20 10:03:13');
INSERT INTO `s_test` VALUES ('9', '{\"phone\":\"123456\",\"password\":\"123456\",\"yzm\":\"1234\"}', 'reg', '2019-02-21 09:56:55');
INSERT INTO `s_test` VALUES ('10', '{\"phone\":\"123456\",\"password\":\"123456\",\"yzm\":\"1234\"}', 'reg', '2019-02-21 09:57:56');
INSERT INTO `s_test` VALUES ('11', '{\"phone\":\"123456\",\"password\":\"123456\",\"yzm\":\"1234\"}', 'reg', '2019-02-21 09:57:58');
INSERT INTO `s_test` VALUES ('12', '{\"phone\":\"123456\",\"password\":\"123456\",\"yzm\":\"1234\"}', 'reg', '2019-02-21 09:57:58');
INSERT INTO `s_test` VALUES ('13', '{\"phone\":\"14711111111\",\"password\":\"123456\",\"recommend\":\"00017\",\"yzm\":\"1234\",\"realname\":\"1\"}', 'reg', '2019-02-21 09:59:47');
INSERT INTO `s_test` VALUES ('14', '{\"phone\":\"14711111112\",\"password\":\"123456\",\"recommend\":\"0007b\",\"yzm\":\"1234\",\"realname\":\"11\"}', 'reg', '2019-02-21 10:00:19');
INSERT INTO `s_test` VALUES ('15', '{\"phone\":\"14711111113\",\"password\":\"123456\",\"recommend\":\"0007c\",\"yzm\":\"1234\",\"realname\":\"112\"}', 'reg', '2019-02-21 10:00:50');
INSERT INTO `s_test` VALUES ('16', '{\"phone\":\"14711111114\",\"password\":\"123456\",\"recommend\":\"0007c\",\"yzm\":\"1234\",\"realname\":\"114\"}', 'reg', '2019-02-21 10:01:34');
INSERT INTO `s_test` VALUES ('17', '{\"phone\":\"14711111115\",\"password\":\"123456\",\"recommend\":\"0007d\",\"yzm\":\"1234\",\"realname\":\"115\"}', 'reg', '2019-02-21 10:02:06');
INSERT INTO `s_test` VALUES ('18', '{\"phone\":\"14711111116\",\"password\":\"123456\",\"recommend\":\"00017\",\"yzm\":\"1234\",\"realname\":\"116\"}', 'reg', '2019-02-21 10:02:48');
INSERT INTO `s_test` VALUES ('19', '{\"phone\":\"18888888888\",\"password\":\"123456\"}', 'login', '2019-02-21 10:24:35');
INSERT INTO `s_test` VALUES ('20', '{\"phone\":\"18888888888\",\"password\":\"123456\"}', 'login', '2019-02-21 10:24:56');
INSERT INTO `s_test` VALUES ('21', '{\"phone\":\"18888888888\",\"password\":\"123456\"}', 'login', '2019-02-21 10:25:48');
INSERT INTO `s_test` VALUES ('22', '{\"PHPSESSID\":\"bkrh6l35ac5adojkvtkqljvh90\",\"phone\":\"18888888888\",\"password\":\"123456\"}', 'login', '2019-02-21 11:12:27');
INSERT INTO `s_test` VALUES ('23', '{\"PHPSESSID\":\"bkrh6l35ac5adojkvtkqljvh90\",\"phone\":\"14711111111\",\"password\":\"123456\"}', 'login', '2019-02-21 11:12:38');
INSERT INTO `s_test` VALUES ('24', '{\"PHPSESSID\":\"bkrh6l35ac5adojkvtkqljvh90\",\"phone\":\"14711111111\",\"password\":\"123456\"}', 'login', '2019-02-21 11:25:49');
INSERT INTO `s_test` VALUES ('25', '{\"PHPSESSID\":\"bkrh6l35ac5adojkvtkqljvh90\",\"phone\":\"18888888888\",\"password\":\"123456\"}', 'login', '2019-02-21 11:25:56');
INSERT INTO `s_test` VALUES ('26', '{\"PHPSESSID\":\"bkrh6l35ac5adojkvtkqljvh90\",\"phone\":\"18888888888\",\"password\":\"123456\"}', 'login', '2019-02-21 12:03:37');
INSERT INTO `s_test` VALUES ('27', '{\"PHPSESSID\":\"bkrh6l35ac5adojkvtkqljvh90\",\"phone\":\"18888888888\",\"password\":\"123456\"}', 'login', '2019-02-21 12:03:41');
INSERT INTO `s_test` VALUES ('28', '{\"PHPSESSID\":\"bkrh6l35ac5adojkvtkqljvh90\",\"phone\":\"18888888888\",\"password\":\"123456\"}', 'login', '2019-02-21 16:24:22');
INSERT INTO `s_test` VALUES ('29', '{\"PHPSESSID\":\"bkrh6l35ac5adojkvtkqljvh90\",\"phone\":\"18888888888\",\"password\":\"123456\"}', 'login', '2019-02-21 16:24:28');
INSERT INTO `s_test` VALUES ('30', '{\"phone\":\"18888888888\",\"password\":\"123456\"}', 'login', '2019-02-22 10:48:48');
INSERT INTO `s_test` VALUES ('31', '{\"aid\":\"2\",\"admin_username\":\"Test\",\"gid\":\"2\",\"phone\":\"18888888888\",\"password\":\"123456\"}', 'login', '2019-02-26 09:21:49');
INSERT INTO `s_test` VALUES ('32', '{\"aid\":\"2\",\"admin_username\":\"Test\",\"gid\":\"2\"}', 'login', '2019-02-26 09:21:50');
INSERT INTO `s_test` VALUES ('33', '{\"aid\":\"2\",\"admin_username\":\"Test\",\"gid\":\"2\",\"PHPSESSID\":\"f3rlt8hi3kvegni0u3en6tg7m6\"}', 'login', '2019-02-26 09:22:09');
INSERT INTO `s_test` VALUES ('34', '{\"aid\":\"2\",\"admin_username\":\"Test\",\"gid\":\"2\",\"PHPSESSID\":\"f3rlt8hi3kvegni0u3en6tg7m6\"}', 'login', '2019-02-26 09:22:38');
INSERT INTO `s_test` VALUES ('35', '{\"aid\":\"2\",\"admin_username\":\"Test\",\"gid\":\"2\",\"PHPSESSID\":\"f3rlt8hi3kvegni0u3en6tg7m6\"}', 'login', '2019-02-26 09:22:57');
INSERT INTO `s_test` VALUES ('36', '{\"aid\":\"2\",\"admin_username\":\"Test\",\"gid\":\"2\",\"PHPSESSID\":\"f3rlt8hi3kvegni0u3en6tg7m6\"}', 'login', '2019-02-26 09:24:10');
INSERT INTO `s_test` VALUES ('37', '{\"aid\":\"2\",\"admin_username\":\"Test\",\"gid\":\"2\",\"PHPSESSID\":\"f3rlt8hi3kvegni0u3en6tg7m6\"}', 'login', '2019-02-26 09:24:38');
INSERT INTO `s_test` VALUES ('38', '{\"aid\":\"2\",\"admin_username\":\"Test\",\"gid\":\"2\",\"PHPSESSID\":\"f3rlt8hi3kvegni0u3en6tg7m6\"}', 'login', '2019-02-26 09:24:39');
INSERT INTO `s_test` VALUES ('39', '{\"aid\":\"2\",\"admin_username\":\"Test\",\"gid\":\"2\",\"PHPSESSID\":\"f3rlt8hi3kvegni0u3en6tg7m6\"}', 'login', '2019-02-26 09:24:40');
INSERT INTO `s_test` VALUES ('40', '{\"aid\":\"2\",\"admin_username\":\"Test\",\"gid\":\"2\",\"PHPSESSID\":\"f3rlt8hi3kvegni0u3en6tg7m6\"}', 'login', '2019-02-26 09:27:20');
INSERT INTO `s_test` VALUES ('41', '{\"aid\":\"2\",\"admin_username\":\"Test\",\"gid\":\"2\",\"PHPSESSID\":\"f3rlt8hi3kvegni0u3en6tg7m6\"}', 'login', '2019-02-26 09:27:48');
INSERT INTO `s_test` VALUES ('42', '{\"aid\":\"2\",\"admin_username\":\"Test\",\"gid\":\"2\",\"PHPSESSID\":\"f3rlt8hi3kvegni0u3en6tg7m6\"}', 'login', '2019-02-26 09:27:49');
INSERT INTO `s_test` VALUES ('43', '{\"aid\":\"2\",\"admin_username\":\"Test\",\"gid\":\"2\",\"PHPSESSID\":\"f3rlt8hi3kvegni0u3en6tg7m6\"}', 'login', '2019-02-26 09:27:56');
INSERT INTO `s_test` VALUES ('44', '{\"aid\":\"2\",\"admin_username\":\"Test\",\"gid\":\"2\",\"PHPSESSID\":\"f3rlt8hi3kvegni0u3en6tg7m6\"}', 'login', '2019-02-26 09:28:00');
INSERT INTO `s_test` VALUES ('45', '{\"aid\":\"2\",\"admin_username\":\"Test\",\"gid\":\"2\",\"PHPSESSID\":\"f3rlt8hi3kvegni0u3en6tg7m6\"}', 'forgetpwd.html', '2019-02-26 09:28:18');
INSERT INTO `s_test` VALUES ('46', '{\"aid\":\"2\",\"admin_username\":\"Test\",\"gid\":\"2\",\"PHPSESSID\":\"f3rlt8hi3kvegni0u3en6tg7m6\"}', 'login', '2019-02-26 09:30:53');
INSERT INTO `s_test` VALUES ('47', '{\"aid\":\"2\",\"admin_username\":\"Test\",\"gid\":\"2\",\"PHPSESSID\":\"f3rlt8hi3kvegni0u3en6tg7m6\"}', 'login', '2019-02-26 09:30:55');
INSERT INTO `s_test` VALUES ('48', '{\"aid\":\"2\",\"admin_username\":\"Test\",\"gid\":\"2\",\"PHPSESSID\":\"f3rlt8hi3kvegni0u3en6tg7m6\"}', 'login', '2019-02-26 09:30:55');
INSERT INTO `s_test` VALUES ('49', '{\"aid\":\"2\",\"admin_username\":\"Test\",\"gid\":\"2\",\"PHPSESSID\":\"f3rlt8hi3kvegni0u3en6tg7m6\"}', 'login', '2019-02-26 09:30:56');
INSERT INTO `s_test` VALUES ('50', '{\"aid\":\"2\",\"admin_username\":\"Test\",\"gid\":\"2\",\"PHPSESSID\":\"f3rlt8hi3kvegni0u3en6tg7m6\"}', 'login', '2019-02-26 09:30:56');
INSERT INTO `s_test` VALUES ('51', '{\"aid\":\"2\",\"admin_username\":\"Test\",\"gid\":\"2\",\"PHPSESSID\":\"f3rlt8hi3kvegni0u3en6tg7m6\"}', 'login', '2019-02-26 09:30:57');
INSERT INTO `s_test` VALUES ('52', '{\"aid\":\"2\",\"admin_username\":\"Test\",\"gid\":\"2\",\"PHPSESSID\":\"f3rlt8hi3kvegni0u3en6tg7m6\"}', 'login', '2019-02-26 09:30:57');
INSERT INTO `s_test` VALUES ('53', '{\"aid\":\"2\",\"admin_username\":\"Test\",\"gid\":\"2\",\"PHPSESSID\":\"f3rlt8hi3kvegni0u3en6tg7m6\"}', 'login', '2019-02-26 09:30:57');
INSERT INTO `s_test` VALUES ('54', '{\"aid\":\"2\",\"admin_username\":\"Test\",\"gid\":\"2\",\"PHPSESSID\":\"f3rlt8hi3kvegni0u3en6tg7m6\"}', 'login', '2019-02-26 09:30:57');
INSERT INTO `s_test` VALUES ('55', '{\"aid\":\"2\",\"admin_username\":\"Test\",\"gid\":\"2\",\"PHPSESSID\":\"f3rlt8hi3kvegni0u3en6tg7m6\"}', 'login', '2019-02-26 09:30:57');
INSERT INTO `s_test` VALUES ('56', '{\"aid\":\"2\",\"admin_username\":\"Test\",\"gid\":\"2\",\"PHPSESSID\":\"f3rlt8hi3kvegni0u3en6tg7m6\"}', 'login', '2019-02-26 09:38:09');
INSERT INTO `s_test` VALUES ('57', '{\"aid\":\"2\",\"admin_username\":\"Test\",\"gid\":\"2\",\"PHPSESSID\":\"f3rlt8hi3kvegni0u3en6tg7m6\"}', 'login', '2019-02-26 09:38:10');
INSERT INTO `s_test` VALUES ('58', '{\"aid\":\"2\",\"admin_username\":\"Test\",\"gid\":\"2\",\"PHPSESSID\":\"f3rlt8hi3kvegni0u3en6tg7m6\"}', 'login', '2019-02-26 09:41:39');
INSERT INTO `s_test` VALUES ('59', '{\"aid\":\"2\",\"admin_username\":\"Test\",\"gid\":\"2\",\"PHPSESSID\":\"f3rlt8hi3kvegni0u3en6tg7m6\"}', 'login', '2019-02-26 09:41:40');
INSERT INTO `s_test` VALUES ('60', '{\"aid\":\"2\",\"admin_username\":\"Test\",\"gid\":\"2\",\"PHPSESSID\":\"f3rlt8hi3kvegni0u3en6tg7m6\"}', 'login', '2019-02-26 09:41:40');
INSERT INTO `s_test` VALUES ('61', '{\"aid\":\"2\",\"admin_username\":\"Test\",\"gid\":\"2\",\"PHPSESSID\":\"f3rlt8hi3kvegni0u3en6tg7m6\"}', 'forgetpwd', '2019-02-26 09:41:41');
INSERT INTO `s_test` VALUES ('62', '{\"aid\":\"2\",\"admin_username\":\"Test\",\"gid\":\"2\",\"PHPSESSID\":\"f3rlt8hi3kvegni0u3en6tg7m6\"}', 'login.html', '2019-02-26 09:41:46');
INSERT INTO `s_test` VALUES ('63', '{\"aid\":\"2\",\"admin_username\":\"Test\",\"gid\":\"2\",\"PHPSESSID\":\"f3rlt8hi3kvegni0u3en6tg7m6\"}', 'forgetpwd', '2019-02-26 09:42:09');
INSERT INTO `s_test` VALUES ('64', '{\"aid\":\"2\",\"admin_username\":\"Test\",\"gid\":\"2\",\"PHPSESSID\":\"f3rlt8hi3kvegni0u3en6tg7m6\"}', 'forgetpwd', '2019-02-26 09:42:10');
INSERT INTO `s_test` VALUES ('65', '{\"aid\":\"2\",\"admin_username\":\"Test\",\"gid\":\"2\",\"PHPSESSID\":\"f3rlt8hi3kvegni0u3en6tg7m6\"}', 'login', '2019-02-26 09:42:12');
INSERT INTO `s_test` VALUES ('66', '{\"aid\":\"2\",\"admin_username\":\"Test\",\"gid\":\"2\",\"PHPSESSID\":\"f3rlt8hi3kvegni0u3en6tg7m6\"}', 'forgetpwd', '2019-02-26 09:42:15');
INSERT INTO `s_test` VALUES ('67', '{\"aid\":\"2\",\"admin_username\":\"Test\",\"gid\":\"2\",\"PHPSESSID\":\"f3rlt8hi3kvegni0u3en6tg7m6\"}', 'login', '2019-02-26 09:42:27');
INSERT INTO `s_test` VALUES ('68', '{\"aid\":\"2\",\"admin_username\":\"Test\",\"gid\":\"2\",\"PHPSESSID\":\"f3rlt8hi3kvegni0u3en6tg7m6\"}', 'login', '2019-02-26 09:43:10');
INSERT INTO `s_test` VALUES ('69', '{\"aid\":\"2\",\"admin_username\":\"Test\",\"gid\":\"2\",\"PHPSESSID\":\"f3rlt8hi3kvegni0u3en6tg7m6\"}', 'login', '2019-02-26 09:43:11');
INSERT INTO `s_test` VALUES ('70', '{\"aid\":\"2\",\"admin_username\":\"Test\",\"gid\":\"2\",\"PHPSESSID\":\"f3rlt8hi3kvegni0u3en6tg7m6\"}', 'forgetpwd', '2019-02-26 09:43:12');
INSERT INTO `s_test` VALUES ('71', '{\"aid\":\"2\",\"admin_username\":\"Test\",\"gid\":\"2\",\"PHPSESSID\":\"f3rlt8hi3kvegni0u3en6tg7m6\"}', 'forgetpwd', '2019-02-26 09:43:13');
INSERT INTO `s_test` VALUES ('72', '{\"aid\":\"2\",\"admin_username\":\"Test\",\"gid\":\"2\",\"PHPSESSID\":\"f3rlt8hi3kvegni0u3en6tg7m6\"}', 'forgetpwd', '2019-02-26 09:43:13');
INSERT INTO `s_test` VALUES ('73', '{\"aid\":\"2\",\"admin_username\":\"Test\",\"gid\":\"2\",\"PHPSESSID\":\"f3rlt8hi3kvegni0u3en6tg7m6\"}', 'forgetpwd', '2019-02-26 09:43:59');
INSERT INTO `s_test` VALUES ('74', '{\"aid\":\"2\",\"admin_username\":\"Test\",\"gid\":\"2\",\"PHPSESSID\":\"f3rlt8hi3kvegni0u3en6tg7m6\"}', 'forgetpwd', '2019-02-26 09:46:55');
INSERT INTO `s_test` VALUES ('75', '{\"aid\":\"2\",\"admin_username\":\"Test\",\"gid\":\"2\",\"PHPSESSID\":\"f3rlt8hi3kvegni0u3en6tg7m6\"}', 'forgetpwd', '2019-02-26 09:46:56');
INSERT INTO `s_test` VALUES ('76', '{\"aid\":\"2\",\"admin_username\":\"Test\",\"gid\":\"2\",\"PHPSESSID\":\"f3rlt8hi3kvegni0u3en6tg7m6\"}', 'forgetpwd', '2019-02-26 09:46:57');
INSERT INTO `s_test` VALUES ('77', '{\"aid\":\"2\",\"admin_username\":\"Test\",\"gid\":\"2\",\"PHPSESSID\":\"f3rlt8hi3kvegni0u3en6tg7m6\"}', 'forgetpwd', '2019-02-26 09:46:58');
INSERT INTO `s_test` VALUES ('78', '{\"aid\":\"2\",\"admin_username\":\"Test\",\"gid\":\"2\",\"PHPSESSID\":\"f3rlt8hi3kvegni0u3en6tg7m6\"}', 'forgetpwd', '2019-02-26 09:47:47');
INSERT INTO `s_test` VALUES ('79', '{\"aid\":\"2\",\"admin_username\":\"Test\",\"gid\":\"2\",\"PHPSESSID\":\"f3rlt8hi3kvegni0u3en6tg7m6\"}', 'forgetpwd', '2019-02-26 09:47:47');
INSERT INTO `s_test` VALUES ('80', '{\"aid\":\"2\",\"admin_username\":\"Test\",\"gid\":\"2\",\"PHPSESSID\":\"f3rlt8hi3kvegni0u3en6tg7m6\"}', 'forgetpwd', '2019-02-26 09:53:31');
INSERT INTO `s_test` VALUES ('81', '{\"aid\":\"2\",\"admin_username\":\"Test\",\"gid\":\"2\",\"PHPSESSID\":\"f3rlt8hi3kvegni0u3en6tg7m6\"}', 'forgetpwd', '2019-02-26 09:53:32');
INSERT INTO `s_test` VALUES ('82', '{\"aid\":\"2\",\"admin_username\":\"Test\",\"gid\":\"2\",\"PHPSESSID\":\"f3rlt8hi3kvegni0u3en6tg7m6\",\"phone\":\"17604267409\"}', 'send_sms', '2019-02-26 09:53:44');
INSERT INTO `s_test` VALUES ('83', '{\"aid\":\"2\",\"admin_username\":\"Test\",\"gid\":\"2\",\"PHPSESSID\":\"f3rlt8hi3kvegni0u3en6tg7m6\"}', 'login', '2019-02-26 09:54:04');
INSERT INTO `s_test` VALUES ('84', '{\"aid\":\"2\",\"admin_username\":\"Test\",\"gid\":\"2\",\"PHPSESSID\":\"f3rlt8hi3kvegni0u3en6tg7m6\",\"phone\":\"123456\",\"password\":\"123456\",\"yzm\":\"1234\"}', 'reg', '2019-02-26 10:04:42');
INSERT INTO `s_test` VALUES ('85', '{\"aid\":\"2\",\"admin_username\":\"Test\",\"gid\":\"2\",\"PHPSESSID\":\"f3rlt8hi3kvegni0u3en6tg7m6\"}', 'reg', '2019-02-26 10:04:49');
INSERT INTO `s_test` VALUES ('86', '{\"aid\":\"2\",\"admin_username\":\"Test\",\"gid\":\"2\",\"PHPSESSID\":\"f3rlt8hi3kvegni0u3en6tg7m6\"}', 'reg', '2019-02-26 10:06:31');
INSERT INTO `s_test` VALUES ('87', '{\"aid\":\"2\",\"admin_username\":\"Test\",\"gid\":\"2\",\"PHPSESSID\":\"f3rlt8hi3kvegni0u3en6tg7m6\"}', 'reg', '2019-02-26 10:08:13');
INSERT INTO `s_test` VALUES ('88', '{\"aid\":\"2\",\"admin_username\":\"Test\",\"gid\":\"2\",\"PHPSESSID\":\"f3rlt8hi3kvegni0u3en6tg7m6\"}', 'reg', '2019-02-26 10:08:13');
INSERT INTO `s_test` VALUES ('89', '{\"aid\":\"2\",\"admin_username\":\"Test\",\"gid\":\"2\",\"PHPSESSID\":\"f3rlt8hi3kvegni0u3en6tg7m6\"}', 'login', '2019-02-26 10:15:38');
INSERT INTO `s_test` VALUES ('90', '{\"aid\":\"2\",\"admin_username\":\"Test\",\"gid\":\"2\",\"PHPSESSID\":\"f3rlt8hi3kvegni0u3en6tg7m6\",\"phone\":\"18888888888\",\"password\":\"123456\"}', 'login', '2019-02-26 10:15:49');
INSERT INTO `s_test` VALUES ('91', '{\"aid\":\"2\",\"admin_username\":\"Test\",\"gid\":\"2\"}', 'login', '2019-02-26 10:27:03');
INSERT INTO `s_test` VALUES ('92', '{\"aid\":\"2\",\"admin_username\":\"Test\",\"gid\":\"2\"}', 'login', '2019-02-26 10:27:06');
INSERT INTO `s_test` VALUES ('93', '{\"aid\":\"2\",\"admin_username\":\"Test\",\"gid\":\"2\",\"phone\":\"18888888888\",\"password\":\"123456\"}', 'login', '2019-02-26 10:27:16');
INSERT INTO `s_test` VALUES ('94', '{\"aid\":\"2\",\"admin_username\":\"Test\",\"gid\":\"2\",\"PHPSESSID\":\"4cqs8g01ro7dvacimoiqk2p075\"}', 'logout', '2019-02-26 11:26:18');
INSERT INTO `s_test` VALUES ('95', '{\"aid\":\"2\",\"admin_username\":\"Test\",\"gid\":\"2\",\"PHPSESSID\":\"4cqs8g01ro7dvacimoiqk2p075\"}', 'login', '2019-02-26 11:26:21');
INSERT INTO `s_test` VALUES ('96', '{\"aid\":\"2\",\"admin_username\":\"Test\",\"gid\":\"2\",\"PHPSESSID\":\"4cqs8g01ro7dvacimoiqk2p075\"}', 'login', '2019-02-26 11:28:49');
INSERT INTO `s_test` VALUES ('97', '{\"aid\":\"2\",\"admin_username\":\"Test\",\"gid\":\"2\",\"PHPSESSID\":\"4cqs8g01ro7dvacimoiqk2p075\",\"phone\":\"18888888888\",\"password\":\"123456\"}', 'login', '2019-02-26 11:28:57');
INSERT INTO `s_test` VALUES ('98', '{\"aid\":\"2\",\"admin_username\":\"Test\",\"gid\":\"2\",\"PHPSESSID\":\"4cqs8g01ro7dvacimoiqk2p075\"}', 'logout', '2019-02-26 11:29:06');
INSERT INTO `s_test` VALUES ('99', '{\"aid\":\"2\",\"admin_username\":\"Test\",\"gid\":\"2\",\"PHPSESSID\":\"4cqs8g01ro7dvacimoiqk2p075\"}', 'login', '2019-02-26 11:29:06');
INSERT INTO `s_test` VALUES ('100', '{\"aid\":\"2\",\"admin_username\":\"Test\",\"gid\":\"2\",\"PHPSESSID\":\"4cqs8g01ro7dvacimoiqk2p075\"}', 'login', '2019-02-26 11:30:56');
INSERT INTO `s_test` VALUES ('101', '{\"aid\":\"2\",\"admin_username\":\"Test\",\"gid\":\"2\",\"PHPSESSID\":\"4cqs8g01ro7dvacimoiqk2p075\",\"phone\":\"18888888888\",\"password\":\"123456\"}', 'login', '2019-02-26 11:31:06');
INSERT INTO `s_test` VALUES ('102', '{\"aid\":\"2\",\"admin_username\":\"Test\",\"gid\":\"2\",\"PHPSESSID\":\"4cqs8g01ro7dvacimoiqk2p075\"}', 'logout', '2019-02-26 11:31:10');
INSERT INTO `s_test` VALUES ('103', '{\"aid\":\"2\",\"admin_username\":\"Test\",\"gid\":\"2\",\"PHPSESSID\":\"4cqs8g01ro7dvacimoiqk2p075\"}', 'login', '2019-02-26 11:31:10');
INSERT INTO `s_test` VALUES ('104', '{\"aid\":\"2\",\"admin_username\":\"Test\",\"gid\":\"2\",\"PHPSESSID\":\"4cqs8g01ro7dvacimoiqk2p075\"}', 'login', '2019-02-26 11:31:38');
INSERT INTO `s_test` VALUES ('105', '{\"aid\":\"2\",\"admin_username\":\"Test\",\"gid\":\"2\",\"PHPSESSID\":\"4cqs8g01ro7dvacimoiqk2p075\",\"phone\":\"18888888888\",\"password\":\"123456\"}', 'login', '2019-02-26 11:31:45');
INSERT INTO `s_test` VALUES ('106', '{\"aid\":\"2\",\"admin_username\":\"Test\",\"gid\":\"2\",\"PHPSESSID\":\"4cqs8g01ro7dvacimoiqk2p075\"}', 'logout', '2019-02-26 11:31:50');
INSERT INTO `s_test` VALUES ('107', '{\"aid\":\"2\",\"admin_username\":\"Test\",\"gid\":\"2\",\"PHPSESSID\":\"4cqs8g01ro7dvacimoiqk2p075\"}', 'login', '2019-02-26 11:31:50');
INSERT INTO `s_test` VALUES ('108', '{\"aid\":\"2\",\"admin_username\":\"Test\",\"gid\":\"2\",\"PHPSESSID\":\"4cqs8g01ro7dvacimoiqk2p075\"}', 'login', '2019-02-26 11:32:34');
INSERT INTO `s_test` VALUES ('109', '{\"aid\":\"2\",\"admin_username\":\"Test\",\"gid\":\"2\",\"PHPSESSID\":\"4cqs8g01ro7dvacimoiqk2p075\",\"phone\":\"14711111111\",\"password\":\"123456\"}', 'login', '2019-02-26 11:32:49');
INSERT INTO `s_test` VALUES ('110', '{\"aid\":\"2\",\"admin_username\":\"Test\",\"gid\":\"2\",\"PHPSESSID\":\"4cqs8g01ro7dvacimoiqk2p075\"}', 'logout', '2019-02-26 11:33:04');
INSERT INTO `s_test` VALUES ('111', '{\"aid\":\"2\",\"admin_username\":\"Test\",\"gid\":\"2\",\"PHPSESSID\":\"4cqs8g01ro7dvacimoiqk2p075\"}', 'login', '2019-02-26 11:33:05');
INSERT INTO `s_test` VALUES ('112', '{\"aid\":\"2\",\"admin_username\":\"Test\",\"gid\":\"2\",\"PHPSESSID\":\"4cqs8g01ro7dvacimoiqk2p075\",\"phone\":\"14711111112\",\"password\":\"123456\"}', 'login', '2019-02-26 11:33:18');
INSERT INTO `s_test` VALUES ('113', '{\"aid\":\"2\",\"admin_username\":\"Test\",\"gid\":\"2\",\"PHPSESSID\":\"4cqs8g01ro7dvacimoiqk2p075\",\"active_code\":\"1234\"}', 'use_active', '2019-02-26 11:45:52');
INSERT INTO `s_test` VALUES ('114', '{\"aid\":\"2\",\"admin_username\":\"Test\",\"gid\":\"2\",\"PHPSESSID\":\"4cqs8g01ro7dvacimoiqk2p075\",\"active_code\":\"1234\"}', 'use_active', '2019-02-26 11:46:34');
INSERT INTO `s_test` VALUES ('115', '{\"aid\":\"2\",\"admin_username\":\"Test\",\"gid\":\"2\",\"PHPSESSID\":\"4cqs8g01ro7dvacimoiqk2p075\",\"active_code\":\"1234\"}', 'use_active', '2019-02-26 11:46:38');
INSERT INTO `s_test` VALUES ('116', '{\"aid\":\"2\",\"admin_username\":\"Test\",\"gid\":\"2\",\"PHPSESSID\":\"4cqs8g01ro7dvacimoiqk2p075\",\"active_code\":\"1234\"}', 'use_active', '2019-02-26 11:46:42');
INSERT INTO `s_test` VALUES ('117', '{\"aid\":\"2\",\"admin_username\":\"Test\",\"gid\":\"2\",\"PHPSESSID\":\"4cqs8g01ro7dvacimoiqk2p075\",\"active_code\":\"1234\"}', 'use_active', '2019-02-26 11:46:49');
INSERT INTO `s_test` VALUES ('118', '{\"aid\":\"2\",\"admin_username\":\"Test\",\"gid\":\"2\",\"PHPSESSID\":\"4cqs8g01ro7dvacimoiqk2p075\",\"active_code\":\"123456\"}', 'use_active', '2019-02-26 11:47:22');
INSERT INTO `s_test` VALUES ('119', '{\"aid\":\"2\",\"admin_username\":\"Test\",\"gid\":\"2\",\"PHPSESSID\":\"4cqs8g01ro7dvacimoiqk2p075\",\"active_code\":\"111111\"}', 'use_active', '2019-02-26 11:49:40');
INSERT INTO `s_test` VALUES ('120', '{\"aid\":\"2\",\"admin_username\":\"Test\",\"gid\":\"2\",\"PHPSESSID\":\"4cqs8g01ro7dvacimoiqk2p075\",\"active_code\":\"111111\"}', 'use_active', '2019-02-26 11:49:43');
INSERT INTO `s_test` VALUES ('121', '{\"aid\":\"2\",\"admin_username\":\"Test\",\"gid\":\"2\",\"PHPSESSID\":\"4cqs8g01ro7dvacimoiqk2p075\",\"active_code\":\"111111\"}', 'use_active', '2019-02-26 11:50:20');
INSERT INTO `s_test` VALUES ('122', '{\"aid\":\"2\",\"admin_username\":\"Test\",\"gid\":\"2\",\"PHPSESSID\":\"4cqs8g01ro7dvacimoiqk2p075\",\"active_code\":\"919652\"}', 'use_active', '2019-02-26 11:50:27');
INSERT INTO `s_test` VALUES ('123', '{\"aid\":\"2\",\"admin_username\":\"Test\",\"gid\":\"2\",\"PHPSESSID\":\"4cqs8g01ro7dvacimoiqk2p075\",\"active_code\":\"919652\"}', 'use_active', '2019-02-26 11:52:24');
INSERT INTO `s_test` VALUES ('124', '{\"aid\":\"2\",\"admin_username\":\"Test\",\"gid\":\"2\",\"PHPSESSID\":\"4cqs8g01ro7dvacimoiqk2p075\",\"active_code\":\"919652\"}', 'use_active', '2019-02-26 11:53:10');
INSERT INTO `s_test` VALUES ('125', '{\"aid\":\"2\",\"admin_username\":\"Test\",\"gid\":\"2\",\"PHPSESSID\":\"4cqs8g01ro7dvacimoiqk2p075\",\"active_code\":\"919652\"}', 'use_active', '2019-02-26 11:53:29');
INSERT INTO `s_test` VALUES ('126', '{\"aid\":\"2\",\"admin_username\":\"Test\",\"gid\":\"2\",\"PHPSESSID\":\"4cqs8g01ro7dvacimoiqk2p075\"}', 'logout', '2019-02-26 11:54:50');
INSERT INTO `s_test` VALUES ('127', '{\"aid\":\"2\",\"admin_username\":\"Test\",\"gid\":\"2\",\"PHPSESSID\":\"4cqs8g01ro7dvacimoiqk2p075\"}', 'login', '2019-02-26 11:54:51');
INSERT INTO `s_test` VALUES ('128', '{\"aid\":\"2\",\"admin_username\":\"Test\",\"gid\":\"2\",\"PHPSESSID\":\"4cqs8g01ro7dvacimoiqk2p075\",\"phone\":\"14711111112\",\"password\":\"123456\"}', 'login', '2019-02-26 11:55:06');
INSERT INTO `s_test` VALUES ('129', '{\"aid\":\"2\",\"admin_username\":\"Test\",\"gid\":\"2\",\"PHPSESSID\":\"4cqs8g01ro7dvacimoiqk2p075\",\"active_code\":\"919652\"}', 'use_active', '2019-02-26 11:55:18');
INSERT INTO `s_test` VALUES ('130', '{\"aid\":\"2\",\"admin_username\":\"Test\",\"gid\":\"2\",\"PHPSESSID\":\"4cqs8g01ro7dvacimoiqk2p075\"}', 'login', '2019-02-26 13:25:53');
INSERT INTO `s_test` VALUES ('131', '{\"aid\":\"2\",\"admin_username\":\"Test\",\"gid\":\"2\",\"PHPSESSID\":\"4cqs8g01ro7dvacimoiqk2p075\",\"phone\":\"14711111112\",\"password\":\"123123\"}', 'login', '2019-02-26 13:26:26');
INSERT INTO `s_test` VALUES ('132', '{\"aid\":\"2\",\"admin_username\":\"Test\",\"gid\":\"2\",\"PHPSESSID\":\"4cqs8g01ro7dvacimoiqk2p075\"}', 'logout', '2019-02-26 14:56:57');
INSERT INTO `s_test` VALUES ('133', '{\"aid\":\"2\",\"admin_username\":\"Test\",\"gid\":\"2\",\"PHPSESSID\":\"4cqs8g01ro7dvacimoiqk2p075\"}', 'login', '2019-02-26 14:56:58');
INSERT INTO `s_test` VALUES ('134', '{\"aid\":\"2\",\"admin_username\":\"Test\",\"gid\":\"2\",\"PHPSESSID\":\"4cqs8g01ro7dvacimoiqk2p075\",\"phone\":\"14711111111\",\"password\":\"123456\"}', 'login', '2019-02-26 14:57:10');
INSERT INTO `s_test` VALUES ('135', '{\"PHPSESSID\":\"4cqs8g01ro7dvacimoiqk2p075\"}', 'logout', '2019-02-26 17:19:51');
INSERT INTO `s_test` VALUES ('136', '{\"PHPSESSID\":\"4cqs8g01ro7dvacimoiqk2p075\"}', 'login', '2019-02-26 17:19:52');
INSERT INTO `s_test` VALUES ('137', '{\"PHPSESSID\":\"4cqs8g01ro7dvacimoiqk2p075\",\"phone\":\"14711111112\",\"password\":\"123123\"}', 'login', '2019-02-26 17:20:04');
INSERT INTO `s_test` VALUES ('138', '{\"PHPSESSID\":\"4cqs8g01ro7dvacimoiqk2p075\"}', 'logout', '2019-02-26 17:20:20');
INSERT INTO `s_test` VALUES ('139', '{\"PHPSESSID\":\"4cqs8g01ro7dvacimoiqk2p075\"}', 'login', '2019-02-26 17:20:20');
INSERT INTO `s_test` VALUES ('140', '{\"PHPSESSID\":\"4cqs8g01ro7dvacimoiqk2p075\",\"phone\":\"14711111113\",\"password\":\"123456\"}', 'login', '2019-02-26 17:20:32');
INSERT INTO `s_test` VALUES ('141', '{\"PHPSESSID\":\"4cqs8g01ro7dvacimoiqk2p075\"}', 'logout', '2019-02-26 17:24:57');
INSERT INTO `s_test` VALUES ('142', '{\"PHPSESSID\":\"4cqs8g01ro7dvacimoiqk2p075\"}', 'login', '2019-02-26 17:24:58');
INSERT INTO `s_test` VALUES ('143', '{\"PHPSESSID\":\"4cqs8g01ro7dvacimoiqk2p075\",\"phone\":\"14711111113\",\"password\":\"123456\"}', 'login', '2019-02-26 17:25:19');
INSERT INTO `s_test` VALUES ('144', '{\"PHPSESSID\":\"4cqs8g01ro7dvacimoiqk2p075\",\"active_code\":\"919652\"}', 'use_active', '2019-02-26 17:29:27');
INSERT INTO `s_test` VALUES ('145', '{\"PHPSESSID\":\"4cqs8g01ro7dvacimoiqk2p075\",\"active_code\":\"826021\"}', 'use_active', '2019-02-26 17:29:36');
INSERT INTO `s_test` VALUES ('146', '{\"PHPSESSID\":\"4cqs8g01ro7dvacimoiqk2p075\"}', 'logout', '2019-02-26 17:30:20');
INSERT INTO `s_test` VALUES ('147', '{\"PHPSESSID\":\"4cqs8g01ro7dvacimoiqk2p075\"}', 'login', '2019-02-26 17:30:21');
INSERT INTO `s_test` VALUES ('148', '{\"PHPSESSID\":\"4cqs8g01ro7dvacimoiqk2p075\",\"phone\":\"14711111113\",\"password\":\"123456\"}', 'login', '2019-02-26 17:30:31');
INSERT INTO `s_test` VALUES ('149', '{\"PHPSESSID\":\"4cqs8g01ro7dvacimoiqk2p075\"}', 'logout', '2019-02-26 17:30:37');
INSERT INTO `s_test` VALUES ('150', '{\"PHPSESSID\":\"4cqs8g01ro7dvacimoiqk2p075\"}', 'login', '2019-02-26 17:30:37');
INSERT INTO `s_test` VALUES ('151', '{\"PHPSESSID\":\"4cqs8g01ro7dvacimoiqk2p075\"}', 'login', '2019-02-26 17:31:02');
INSERT INTO `s_test` VALUES ('152', '{\"PHPSESSID\":\"4cqs8g01ro7dvacimoiqk2p075\",\"phone\":\"14711111113\",\"password\":\"123456\"}', 'login', '2019-02-26 17:31:19');
INSERT INTO `s_test` VALUES ('153', '{\"PHPSESSID\":\"4cqs8g01ro7dvacimoiqk2p075\",\"active_code\":\"826021\"}', 'use_active', '2019-02-26 17:31:31');
INSERT INTO `s_test` VALUES ('154', '{\"PHPSESSID\":\"4cqs8g01ro7dvacimoiqk2p075\"}', 'logout', '2019-02-26 17:41:32');
INSERT INTO `s_test` VALUES ('155', '{\"PHPSESSID\":\"4cqs8g01ro7dvacimoiqk2p075\"}', 'login', '2019-02-26 17:41:33');
INSERT INTO `s_test` VALUES ('156', '{\"PHPSESSID\":\"4cqs8g01ro7dvacimoiqk2p075\",\"phone\":\"18888888888\",\"password\":\"123456\"}', 'login', '2019-02-26 17:41:41');
INSERT INTO `s_test` VALUES ('157', '{\"PHPSESSID\":\"4cqs8g01ro7dvacimoiqk2p075\"}', 'logout', '2019-02-26 18:03:17');
INSERT INTO `s_test` VALUES ('158', '{\"PHPSESSID\":\"4cqs8g01ro7dvacimoiqk2p075\"}', 'login', '2019-02-26 18:03:18');
INSERT INTO `s_test` VALUES ('159', '[]', 'login', '2019-02-27 09:06:53');
INSERT INTO `s_test` VALUES ('160', '[]', 'login', '2019-02-27 09:06:56');
INSERT INTO `s_test` VALUES ('161', '[]', 'login', '2019-02-27 09:06:57');
INSERT INTO `s_test` VALUES ('162', '{\"PHPSESSID\":\"irtnjmpjkm5gsl0n7nkpkao0u4\"}', 'login', '2019-02-27 09:12:28');
INSERT INTO `s_test` VALUES ('163', '{\"PHPSESSID\":\"irtnjmpjkm5gsl0n7nkpkao0u4\"}', 'login', '2019-02-27 09:12:45');
INSERT INTO `s_test` VALUES ('164', '{\"PHPSESSID\":\"irtnjmpjkm5gsl0n7nkpkao0u4\"}', 'login', '2019-02-27 09:12:46');
INSERT INTO `s_test` VALUES ('165', '{\"PHPSESSID\":\"irtnjmpjkm5gsl0n7nkpkao0u4\"}', 'login', '2019-02-27 09:14:42');
INSERT INTO `s_test` VALUES ('166', '{\"PHPSESSID\":\"irtnjmpjkm5gsl0n7nkpkao0u4\",\"phone\":\"14711111111\",\"password\":\"123456\"}', 'login', '2019-02-27 09:17:42');
INSERT INTO `s_test` VALUES ('167', '{\"PHPSESSID\":\"irtnjmpjkm5gsl0n7nkpkao0u4\"}', 'logout', '2019-02-27 09:17:52');
INSERT INTO `s_test` VALUES ('168', '{\"PHPSESSID\":\"irtnjmpjkm5gsl0n7nkpkao0u4\"}', 'login', '2019-02-27 09:17:53');
INSERT INTO `s_test` VALUES ('169', '{\"PHPSESSID\":\"irtnjmpjkm5gsl0n7nkpkao0u4\",\"phone\":\"18888888888\",\"password\":\"123456\"}', 'login', '2019-02-27 09:18:03');
INSERT INTO `s_test` VALUES ('170', '{\"PHPSESSID\":\"irtnjmpjkm5gsl0n7nkpkao0u4\"}', 'logout', '2019-02-27 11:24:49');
INSERT INTO `s_test` VALUES ('171', '{\"PHPSESSID\":\"irtnjmpjkm5gsl0n7nkpkao0u4\"}', 'login', '2019-02-27 11:24:50');
INSERT INTO `s_test` VALUES ('172', '{\"PHPSESSID\":\"irtnjmpjkm5gsl0n7nkpkao0u4\",\"phone\":\"14711111111\",\"password\":\"123456\"}', 'login', '2019-02-27 11:25:09');
INSERT INTO `s_test` VALUES ('173', '{\"PHPSESSID\":\"irtnjmpjkm5gsl0n7nkpkao0u4\",\"phone\":\"14711111111\",\"password\":\"123456\"}', 'login', '2019-02-27 11:25:12');
INSERT INTO `s_test` VALUES ('174', '{\"PHPSESSID\":\"irtnjmpjkm5gsl0n7nkpkao0u4\",\"phone\":\"14725836978\",\"password\":\"123456\"}', 'login', '2019-02-27 11:25:24');
INSERT INTO `s_test` VALUES ('175', '{\"recommend\":\"9997h\"}', 'reg', '2019-02-27 11:27:37');
INSERT INTO `s_test` VALUES ('176', '{\"PHPSESSID\":\"irtnjmpjkm5gsl0n7nkpkao0u4\"}', 'logout', '2019-02-27 11:29:12');
INSERT INTO `s_test` VALUES ('177', '{\"PHPSESSID\":\"irtnjmpjkm5gsl0n7nkpkao0u4\"}', 'login', '2019-02-27 11:29:13');
INSERT INTO `s_test` VALUES ('178', '{\"PHPSESSID\":\"irtnjmpjkm5gsl0n7nkpkao0u4\",\"phone\":\"14711111113\",\"password\":\"123456\"}', 'login', '2019-02-27 11:29:26');
INSERT INTO `s_test` VALUES ('179', '{\"PHPSESSID\":\"irtnjmpjkm5gsl0n7nkpkao0u4\"}', 'logout', '2019-02-27 11:33:15');
INSERT INTO `s_test` VALUES ('180', '{\"PHPSESSID\":\"irtnjmpjkm5gsl0n7nkpkao0u4\"}', 'login', '2019-02-27 11:33:16');
INSERT INTO `s_test` VALUES ('181', '{\"PHPSESSID\":\"irtnjmpjkm5gsl0n7nkpkao0u4\",\"phone\":\"14711111114\",\"password\":\"123456\"}', 'login', '2019-02-27 11:33:21');
INSERT INTO `s_test` VALUES ('182', '{\"PHPSESSID\":\"irtnjmpjkm5gsl0n7nkpkao0u4\"}', 'logout', '2019-02-27 11:35:59');
INSERT INTO `s_test` VALUES ('183', '{\"PHPSESSID\":\"irtnjmpjkm5gsl0n7nkpkao0u4\"}', 'login', '2019-02-27 11:36:05');
INSERT INTO `s_test` VALUES ('184', '{\"PHPSESSID\":\"irtnjmpjkm5gsl0n7nkpkao0u4\"}', 'login', '2019-02-27 11:36:16');
INSERT INTO `s_test` VALUES ('185', '{\"PHPSESSID\":\"irtnjmpjkm5gsl0n7nkpkao0u4\",\"phone\":\"14711111114\",\"password\":\"123456\"}', 'login', '2019-02-27 11:36:26');
INSERT INTO `s_test` VALUES ('186', '{\"PHPSESSID\":\"irtnjmpjkm5gsl0n7nkpkao0u4\"}', 'logout', '2019-02-27 11:39:56');
INSERT INTO `s_test` VALUES ('187', '{\"PHPSESSID\":\"irtnjmpjkm5gsl0n7nkpkao0u4\"}', 'login', '2019-02-27 11:39:57');
INSERT INTO `s_test` VALUES ('188', '{\"PHPSESSID\":\"irtnjmpjkm5gsl0n7nkpkao0u4\",\"phone\":\"18888888888\",\"password\":\"123456\"}', 'login', '2019-02-27 11:40:31');
INSERT INTO `s_test` VALUES ('189', '{\"PHPSESSID\":\"irtnjmpjkm5gsl0n7nkpkao0u4\"}', 'logout', '2019-02-27 14:30:59');
INSERT INTO `s_test` VALUES ('190', '{\"PHPSESSID\":\"irtnjmpjkm5gsl0n7nkpkao0u4\"}', 'login', '2019-02-27 14:31:00');
INSERT INTO `s_test` VALUES ('191', '{\"PHPSESSID\":\"irtnjmpjkm5gsl0n7nkpkao0u4\"}', 'reg', '2019-02-27 14:31:05');
INSERT INTO `s_test` VALUES ('192', '{\"PHPSESSID\":\"irtnjmpjkm5gsl0n7nkpkao0u4\"}', 'reg', '2019-02-27 14:31:50');
INSERT INTO `s_test` VALUES ('193', '{\"PHPSESSID\":\"irtnjmpjkm5gsl0n7nkpkao0u4\"}', 'reg', '2019-02-27 14:32:31');
INSERT INTO `s_test` VALUES ('194', '{\"PHPSESSID\":\"irtnjmpjkm5gsl0n7nkpkao0u4\"}', 'reg', '2019-02-27 14:35:45');
INSERT INTO `s_test` VALUES ('195', '{\"PHPSESSID\":\"irtnjmpjkm5gsl0n7nkpkao0u4\"}', 'reg', '2019-02-27 14:36:38');
INSERT INTO `s_test` VALUES ('196', '{\"PHPSESSID\":\"irtnjmpjkm5gsl0n7nkpkao0u4\"}', 'reg', '2019-02-27 14:36:39');
INSERT INTO `s_test` VALUES ('197', '{\"PHPSESSID\":\"irtnjmpjkm5gsl0n7nkpkao0u4\"}', 'reg', '2019-02-27 14:36:45');
INSERT INTO `s_test` VALUES ('198', '{\"PHPSESSID\":\"irtnjmpjkm5gsl0n7nkpkao0u4\"}', 'reg', '2019-02-27 14:37:32');
INSERT INTO `s_test` VALUES ('199', '{\"PHPSESSID\":\"irtnjmpjkm5gsl0n7nkpkao0u4\"}', 'reg', '2019-02-27 14:37:33');
INSERT INTO `s_test` VALUES ('200', '{\"PHPSESSID\":\"irtnjmpjkm5gsl0n7nkpkao0u4\"}', 'reg', '2019-02-27 14:38:11');
INSERT INTO `s_test` VALUES ('201', '{\"PHPSESSID\":\"irtnjmpjkm5gsl0n7nkpkao0u4\"}', 'reg', '2019-02-27 14:38:26');
INSERT INTO `s_test` VALUES ('202', '{\"PHPSESSID\":\"irtnjmpjkm5gsl0n7nkpkao0u4\"}', 'reg', '2019-02-27 14:39:04');
INSERT INTO `s_test` VALUES ('203', '{\"PHPSESSID\":\"irtnjmpjkm5gsl0n7nkpkao0u4\"}', 'reg', '2019-02-27 14:41:40');
INSERT INTO `s_test` VALUES ('204', '{\"PHPSESSID\":\"irtnjmpjkm5gsl0n7nkpkao0u4\"}', 'reg', '2019-02-27 14:42:09');
INSERT INTO `s_test` VALUES ('205', '{\"PHPSESSID\":\"irtnjmpjkm5gsl0n7nkpkao0u4\"}', 'reg', '2019-02-27 14:49:25');
INSERT INTO `s_test` VALUES ('206', '{\"PHPSESSID\":\"irtnjmpjkm5gsl0n7nkpkao0u4\"}', 'reg', '2019-02-27 14:50:42');
INSERT INTO `s_test` VALUES ('207', '{\"PHPSESSID\":\"irtnjmpjkm5gsl0n7nkpkao0u4\"}', 'reg', '2019-02-27 14:50:43');
INSERT INTO `s_test` VALUES ('208', '{\"PHPSESSID\":\"irtnjmpjkm5gsl0n7nkpkao0u4\",\"aid\":\"1\",\"admin_username\":\"Mr\",\"gid\":\"1\",\"phone\":\"18888888888\",\"password\":\"123456\"}', 'login', '2019-02-27 17:45:34');
INSERT INTO `s_test` VALUES ('209', '{\"aid\":\"1\",\"admin_username\":\"Mr\",\"gid\":\"1\",\"PHPSESSID\":\"sul4educfp30dpl89oe68i39r0\"}', 'login', '2019-02-28 09:44:44');
INSERT INTO `s_test` VALUES ('210', '{\"aid\":\"1\",\"admin_username\":\"Mr\",\"gid\":\"1\",\"PHPSESSID\":\"sul4educfp30dpl89oe68i39r0\"}', 'login', '2019-02-28 09:44:46');
INSERT INTO `s_test` VALUES ('211', '{\"aid\":\"1\",\"admin_username\":\"Mr\",\"gid\":\"1\",\"PHPSESSID\":\"sul4educfp30dpl89oe68i39r0\"}', 'login', '2019-02-28 09:44:49');
INSERT INTO `s_test` VALUES ('212', '{\"aid\":\"1\",\"admin_username\":\"Mr\",\"gid\":\"1\",\"PHPSESSID\":\"sul4educfp30dpl89oe68i39r0\",\"phone\":\"18888888888\",\"password\":\"123456\"}', 'login', '2019-02-28 13:29:11');
INSERT INTO `s_test` VALUES ('213', '{\"aid\":\"1\",\"admin_username\":\"Mr\",\"gid\":\"1\",\"PHPSESSID\":\"sul4educfp30dpl89oe68i39r0\"}', 'logout', '2019-02-28 16:05:56');
INSERT INTO `s_test` VALUES ('214', '{\"aid\":\"1\",\"admin_username\":\"Mr\",\"gid\":\"1\",\"PHPSESSID\":\"sul4educfp30dpl89oe68i39r0\"}', 'login', '2019-02-28 16:05:57');
INSERT INTO `s_test` VALUES ('215', '{\"aid\":\"1\",\"admin_username\":\"Mr\",\"gid\":\"1\",\"PHPSESSID\":\"sul4educfp30dpl89oe68i39r0\"}', 'reg', '2019-02-28 16:06:04');
INSERT INTO `s_test` VALUES ('216', '{\"aid\":\"1\",\"admin_username\":\"Mr\",\"gid\":\"1\",\"PHPSESSID\":\"sul4educfp30dpl89oe68i39r0\",\"phone\":\"18888888888\",\"password\":\"123456\"}', 'login', '2019-02-28 16:28:47');
INSERT INTO `s_test` VALUES ('217', '{\"aid\":\"1\",\"admin_username\":\"Mr\",\"PHPSESSID\":\"bj3seeva0k6tje3t4qekpdh8m6\"}', 'login', '2019-03-05 09:08:18');
INSERT INTO `s_test` VALUES ('218', '{\"PHPSESSID\":\"lcrsfehektuq0nb899d1jv37h3\"}', 'login', '2019-03-06 18:11:47');
INSERT INTO `s_test` VALUES ('219', '{\"PHPSESSID\":\"lcrsfehektuq0nb899d1jv37h3\"}', 'login', '2019-03-06 18:11:49');
INSERT INTO `s_test` VALUES ('220', '{\"PHPSESSID\":\"lcrsfehektuq0nb899d1jv37h3\"}', 'login', '2019-03-06 18:11:51');
INSERT INTO `s_test` VALUES ('221', '{\"PHPSESSID\":\"lcrsfehektuq0nb899d1jv37h3\",\"phone\":\"18888888888\",\"password\":\"123456\"}', 'login', '2019-03-06 18:11:58');
INSERT INTO `s_test` VALUES ('222', '{\"PHPSESSID\":\"lcrsfehektuq0nb899d1jv37h3\"}', 'logout', '2019-03-06 18:12:21');
INSERT INTO `s_test` VALUES ('223', '{\"PHPSESSID\":\"lcrsfehektuq0nb899d1jv37h3\"}', 'login', '2019-03-06 18:12:22');
INSERT INTO `s_test` VALUES ('224', '{\"PHPSESSID\":\"lcrsfehektuq0nb899d1jv37h3\",\"phone\":\"14711111111\",\"password\":\"123456\"}', 'login', '2019-03-06 18:12:27');
INSERT INTO `s_test` VALUES ('225', '{\"PHPSESSID\":\"lcrsfehektuq0nb899d1jv37h3\"}', 'logout', '2019-03-06 18:12:39');
INSERT INTO `s_test` VALUES ('226', '{\"PHPSESSID\":\"lcrsfehektuq0nb899d1jv37h3\"}', 'login', '2019-03-06 18:12:40');
INSERT INTO `s_test` VALUES ('227', '{\"PHPSESSID\":\"lcrsfehektuq0nb899d1jv37h3\",\"phone\":\"14711111112\",\"password\":\"123456\"}', 'login', '2019-03-06 18:12:45');
INSERT INTO `s_test` VALUES ('228', '{\"PHPSESSID\":\"lcrsfehektuq0nb899d1jv37h3\",\"phone\":\"14711111112\",\"password\":\"123123\"}', 'login', '2019-03-06 18:12:56');
INSERT INTO `s_test` VALUES ('229', '{\"PHPSESSID\":\"lcrsfehektuq0nb899d1jv37h3\",\"phone\":\"14711111112\",\"password\":\"123123\"}', 'login', '2019-03-06 18:13:04');
INSERT INTO `s_test` VALUES ('230', '{\"PHPSESSID\":\"vifn16svuqgj86cgao79s3h441\"}', 'login', '2019-03-08 09:17:24');

-- ----------------------------
-- Table structure for s_yzm
-- ----------------------------
DROP TABLE IF EXISTS `s_yzm`;
CREATE TABLE `s_yzm` (
  `keyid` int(11) NOT NULL AUTO_INCREMENT,
  `phone` varchar(255) DEFAULT NULL COMMENT '手机号',
  `code` varchar(255) DEFAULT NULL COMMENT '验证码',
  `createtime` int(11) DEFAULT NULL COMMENT '发送时间',
  `day` varchar(255) DEFAULT NULL COMMENT '发送日期',
  PRIMARY KEY (`keyid`)
) ENGINE=MyISAM AUTO_INCREMENT=395 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of s_yzm
-- ----------------------------
INSERT INTO `s_yzm` VALUES ('223', '18603805439', '3304', '1547543993', '2019-01-15');
INSERT INTO `s_yzm` VALUES ('224', '13322263179', '8990', '1547543997', '2019-01-15');
INSERT INTO `s_yzm` VALUES ('225', '13129750200', '2477', '1547544408', '2019-01-15');
INSERT INTO `s_yzm` VALUES ('226', '15563513339', '9759', '1547544571', '2019-01-15');
INSERT INTO `s_yzm` VALUES ('227', '15670492333', '5619', '1547545295', '2019-01-15');
INSERT INTO `s_yzm` VALUES ('228', '13590993135', '2204', '1547545396', '2019-01-15');
INSERT INTO `s_yzm` VALUES ('229', '15818979082', '5449', '1547545402', '2019-01-15');
INSERT INTO `s_yzm` VALUES ('230', '17666416285', '3372', '1547545502', '2019-01-15');
INSERT INTO `s_yzm` VALUES ('231', '13129750200', '7829', '1547545566', '2019-01-15');
INSERT INTO `s_yzm` VALUES ('232', '18552688848', '3076', '1547545697', '2019-01-15');
INSERT INTO `s_yzm` VALUES ('233', '18331313571', '4272', '1547545704', '2019-01-15');
INSERT INTO `s_yzm` VALUES ('234', '18798319165', '7847', '1547545741', '2019-01-15');
INSERT INTO `s_yzm` VALUES ('235', '13348371423', '6016', '1547545765', '2019-01-15');
INSERT INTO `s_yzm` VALUES ('236', '18337313571', '6160', '1547545771', '2019-01-15');
INSERT INTO `s_yzm` VALUES ('237', '17630943613', '2779', '1547545805', '2019-01-15');
INSERT INTO `s_yzm` VALUES ('238', '13930588123', '7532', '1547546177', '2019-01-15');
INSERT INTO `s_yzm` VALUES ('239', '13325714282', '9049', '1547547166', '2019-01-15');
INSERT INTO `s_yzm` VALUES ('240', '13649427138', '1779', '1547547304', '2019-01-15');
INSERT INTO `s_yzm` VALUES ('241', '15970071451', '8754', '1547547325', '2019-01-15');
INSERT INTO `s_yzm` VALUES ('242', '13967643793', '2970', '1547547414', '2019-01-15');
INSERT INTO `s_yzm` VALUES ('243', '16675980439', '2822', '1547547418', '2019-01-15');
INSERT INTO `s_yzm` VALUES ('244', '15797708513', '7901', '1547547426', '2019-01-15');
INSERT INTO `s_yzm` VALUES ('245', '18030231011', '3001', '1547547448', '2019-01-15');
INSERT INTO `s_yzm` VALUES ('246', '17637620858', '7523', '1547547480', '2019-01-15');
INSERT INTO `s_yzm` VALUES ('247', '18133213139', '4076', '1547547545', '2019-01-15');
INSERT INTO `s_yzm` VALUES ('248', '15639278780', '7682', '1547547546', '2019-01-15');
INSERT INTO `s_yzm` VALUES ('249', '15686299831', '3205', '1547547559', '2019-01-15');
INSERT INTO `s_yzm` VALUES ('250', '18863358245', '3687', '1547547564', '2019-01-15');
INSERT INTO `s_yzm` VALUES ('251', '13967696135', '5877', '1547547567', '2019-01-15');
INSERT INTO `s_yzm` VALUES ('252', '13451745602', '8359', '1547547576', '2019-01-15');
INSERT INTO `s_yzm` VALUES ('253', '18163286867', '1356', '1547547596', '2019-01-15');
INSERT INTO `s_yzm` VALUES ('254', '18163286867', '2979', '1547547597', '2019-01-15');
INSERT INTO `s_yzm` VALUES ('255', '13661427319', '3539', '1547547669', '2019-01-15');
INSERT INTO `s_yzm` VALUES ('256', '13427801320', '2269', '1547547704', '2019-01-15');
INSERT INTO `s_yzm` VALUES ('257', '17679298951', '4939', '1547547764', '2019-01-15');
INSERT INTO `s_yzm` VALUES ('258', '17679298951', '7057', '1547547765', '2019-01-15');
INSERT INTO `s_yzm` VALUES ('259', '13279113762', '9171', '1547547794', '2019-01-15');
INSERT INTO `s_yzm` VALUES ('260', '13658747662', '7956', '1547547894', '2019-01-15');
INSERT INTO `s_yzm` VALUES ('261', '15079949782', '7416', '1547547970', '2019-01-15');
INSERT INTO `s_yzm` VALUES ('262', '15079949782', '9924', '1547547971', '2019-01-15');
INSERT INTO `s_yzm` VALUES ('263', '15079949782', '7760', '1547548036', '2019-01-15');
INSERT INTO `s_yzm` VALUES ('264', '13002596800', '6704', '1547548041', '2019-01-15');
INSERT INTO `s_yzm` VALUES ('265', '15924836872', '4416', '1547548178', '2019-01-15');
INSERT INTO `s_yzm` VALUES ('266', '13814139470', '6267', '1547548203', '2019-01-15');
INSERT INTO `s_yzm` VALUES ('267', '17820683691', '8256', '1547548241', '2019-01-15');
INSERT INTO `s_yzm` VALUES ('268', '13850500061', '8848', '1547548450', '2019-01-15');
INSERT INTO `s_yzm` VALUES ('269', '15033591385', '3356', '1547548533', '2019-01-15');
INSERT INTO `s_yzm` VALUES ('270', '13017123368', '3021', '1547548583', '2019-01-15');
INSERT INTO `s_yzm` VALUES ('271', '18235850403', '2562', '1547548733', '2019-01-15');
INSERT INTO `s_yzm` VALUES ('272', '18878281741', '7480', '1547548894', '2019-01-15');
INSERT INTO `s_yzm` VALUES ('273', '18603047878', '3186', '1547548905', '2019-01-15');
INSERT INTO `s_yzm` VALUES ('274', '15217322580', '9204', '1547548943', '2019-01-15');
INSERT INTO `s_yzm` VALUES ('275', '18090309790', '9312', '1547549032', '2019-01-15');
INSERT INTO `s_yzm` VALUES ('276', '18131875335', '2160', '1547549226', '2019-01-15');
INSERT INTO `s_yzm` VALUES ('277', '13258397369', '7311', '1547549302', '2019-01-15');
INSERT INTO `s_yzm` VALUES ('278', '15904056543', '3089', '1547549350', '2019-01-15');
INSERT INTO `s_yzm` VALUES ('279', '13523565608', '5573', '1547549393', '2019-01-15');
INSERT INTO `s_yzm` VALUES ('280', '17673420667', '5884', '1547549401', '2019-01-15');
INSERT INTO `s_yzm` VALUES ('281', '17673477094', '1969', '1547549428', '2019-01-15');
INSERT INTO `s_yzm` VALUES ('282', '13523565608', '9183', '1547549452', '2019-01-15');
INSERT INTO `s_yzm` VALUES ('283', '13468823056', '6189', '1547549496', '2019-01-15');
INSERT INTO `s_yzm` VALUES ('284', '18979471330', '2794', '1547549693', '2019-01-15');
INSERT INTO `s_yzm` VALUES ('285', '18979471330', '1892', '1547549759', '2019-01-15');
INSERT INTO `s_yzm` VALUES ('286', '15243856602', '4793', '1547549843', '2019-01-15');
INSERT INTO `s_yzm` VALUES ('287', '13551503197', '5369', '1547550050', '2019-01-15');
INSERT INTO `s_yzm` VALUES ('288', '15998670305', '2923', '1547550139', '2019-01-15');
INSERT INTO `s_yzm` VALUES ('289', '13598614345', '7387', '1547550305', '2019-01-15');
INSERT INTO `s_yzm` VALUES ('290', '18237975201', '8134', '1547550390', '2019-01-15');
INSERT INTO `s_yzm` VALUES ('291', '18634604129', '6285', '1547550427', '2019-01-15');
INSERT INTO `s_yzm` VALUES ('292', '18090319627', '8861', '1547550514', '2019-01-15');
INSERT INTO `s_yzm` VALUES ('293', '13729984359', '2750', '1547550701', '2019-01-15');
INSERT INTO `s_yzm` VALUES ('294', '13729984359', '3536', '1547550702', '2019-01-15');
INSERT INTO `s_yzm` VALUES ('295', '15831309827', '5178', '1547550800', '2019-01-15');
INSERT INTO `s_yzm` VALUES ('296', '15831309827', '8957', '1547551336', '2019-01-15');
INSERT INTO `s_yzm` VALUES ('297', '15649647111', '7037', '1547551379', '2019-01-15');
INSERT INTO `s_yzm` VALUES ('298', '18637338889', '6849', '1547551398', '2019-01-15');
INSERT INTO `s_yzm` VALUES ('299', '13731325113', '2469', '1547551400', '2019-01-15');
INSERT INTO `s_yzm` VALUES ('300', '13523525520', '5423', '1547551472', '2019-01-15');
INSERT INTO `s_yzm` VALUES ('301', '13020521300', '9465', '1547551495', '2019-01-15');
INSERT INTO `s_yzm` VALUES ('302', '15023901781', '4113', '1547551504', '2019-01-15');
INSERT INTO `s_yzm` VALUES ('303', '13523525520', '8604', '1547551546', '2019-01-15');
INSERT INTO `s_yzm` VALUES ('304', '18648328862', '9801', '1547551630', '2019-01-15');
INSERT INTO `s_yzm` VALUES ('305', '18152432265', '8176', '1547551677', '2019-01-15');
INSERT INTO `s_yzm` VALUES ('306', '18182906817', '3480', '1547551740', '2019-01-15');
INSERT INTO `s_yzm` VALUES ('307', '15649647111', '4234', '1547551851', '2019-01-15');
INSERT INTO `s_yzm` VALUES ('308', '18218346465', '4275', '1547551865', '2019-01-15');
INSERT INTO `s_yzm` VALUES ('309', '13523525520', '4994', '1547551927', '2019-01-15');
INSERT INTO `s_yzm` VALUES ('310', '15003400378', '2170', '1547552802', '2019-01-15');
INSERT INTO `s_yzm` VALUES ('311', '15348374994', '5923', '1547552906', '2019-01-15');
INSERT INTO `s_yzm` VALUES ('312', '18027854977', '9908', '1547552927', '2019-01-15');
INSERT INTO `s_yzm` VALUES ('313', '13523525520', '5644', '1547553297', '2019-01-15');
INSERT INTO `s_yzm` VALUES ('314', '18338435603', '2071', '1547553397', '2019-01-15');
INSERT INTO `s_yzm` VALUES ('315', '18837348765', '6909', '1547553481', '2019-01-15');
INSERT INTO `s_yzm` VALUES ('316', '18207385425', '2338', '1547553494', '2019-01-15');
INSERT INTO `s_yzm` VALUES ('317', '18207385425', '2177', '1547553570', '2019-01-15');
INSERT INTO `s_yzm` VALUES ('318', '17633803052', '5495', '1547553625', '2019-01-15');
INSERT INTO `s_yzm` VALUES ('319', '17633803052', '4797', '1547553626', '2019-01-15');
INSERT INTO `s_yzm` VALUES ('320', '17745577929', '6860', '1547553970', '2019-01-15');
INSERT INTO `s_yzm` VALUES ('321', '18822070206', '2241', '1547554287', '2019-01-15');
INSERT INTO `s_yzm` VALUES ('322', '15269999163', '2150', '1547554310', '2019-01-15');
INSERT INTO `s_yzm` VALUES ('323', '13873552356', '8759', '1547554800', '2019-01-15');
INSERT INTO `s_yzm` VALUES ('324', '17393528017', '9563', '1547555019', '2019-01-15');
INSERT INTO `s_yzm` VALUES ('325', '18905283721', '4240', '1547555192', '2019-01-15');
INSERT INTO `s_yzm` VALUES ('326', '15235399412', '9980', '1547555197', '2019-01-15');
INSERT INTO `s_yzm` VALUES ('327', '18700644703', '7269', '1547555226', '2019-01-15');
INSERT INTO `s_yzm` VALUES ('328', '18345168667', '9461', '1547555262', '2019-01-15');
INSERT INTO `s_yzm` VALUES ('329', '13523525520', '9782', '1547555649', '2019-01-15');
INSERT INTO `s_yzm` VALUES ('330', '15515713050', '6752', '1547555711', '2019-01-15');
INSERT INTO `s_yzm` VALUES ('331', '18638818970', '5270', '1547555720', '2019-01-15');
INSERT INTO `s_yzm` VALUES ('332', '13838310832', '7341', '1547556278', '2019-01-15');
INSERT INTO `s_yzm` VALUES ('333', '18239091679', '4943', '1547556511', '2019-01-15');
INSERT INTO `s_yzm` VALUES ('334', '17835543240', '2226', '1547556579', '2019-01-15');
INSERT INTO `s_yzm` VALUES ('335', '15129216990', '5314', '1547556590', '2019-01-15');
INSERT INTO `s_yzm` VALUES ('336', '15129216990', '6676', '1547556642', '2019-01-15');
INSERT INTO `s_yzm` VALUES ('337', '18055603710', '6386', '1547556816', '2019-01-15');
INSERT INTO `s_yzm` VALUES ('338', '13523525520', '3813', '1547557037', '2019-01-15');
INSERT INTO `s_yzm` VALUES ('339', '18905296398', '6590', '1547557226', '2019-01-15');
INSERT INTO `s_yzm` VALUES ('340', '17359040685', '4451', '1547557381', '2019-01-15');
INSERT INTO `s_yzm` VALUES ('341', '18081663698', '8313', '1547557571', '2019-01-15');
INSERT INTO `s_yzm` VALUES ('342', '17636557045', '9755', '1547557697', '2019-01-15');
INSERT INTO `s_yzm` VALUES ('343', '15803504795', '8065', '1547557758', '2019-01-15');
INSERT INTO `s_yzm` VALUES ('344', '13523525520', '6895', '1547558013', '2019-01-15');
INSERT INTO `s_yzm` VALUES ('345', '18602426465', '5773', '1547558088', '2019-01-15');
INSERT INTO `s_yzm` VALUES ('346', '18602426465', '5415', '1547558089', '2019-01-15');
INSERT INTO `s_yzm` VALUES ('347', '13523525520', '3542', '1547558103', '2019-01-15');
INSERT INTO `s_yzm` VALUES ('348', '13928942493', '4953', '1547558268', '2019-01-15');
INSERT INTO `s_yzm` VALUES ('349', '13523525520', '7798', '1547558327', '2019-01-15');
INSERT INTO `s_yzm` VALUES ('350', '13623630874', '2573', '1547558814', '2019-01-15');
INSERT INTO `s_yzm` VALUES ('351', '17726499891', '7571', '1547559560', '2019-01-15');
INSERT INTO `s_yzm` VALUES ('352', '15973565982', '2538', '1547559833', '2019-01-15');
INSERT INTO `s_yzm` VALUES ('353', '15973565982', '2876', '1547559834', '2019-01-15');
INSERT INTO `s_yzm` VALUES ('354', '18174634388', '1875', '1547560078', '2019-01-15');
INSERT INTO `s_yzm` VALUES ('355', '13356927114', '1283', '1547561009', '2019-01-15');
INSERT INTO `s_yzm` VALUES ('356', '18337978870', '8293', '1547561018', '2019-01-15');
INSERT INTO `s_yzm` VALUES ('357', '15722614597', '3987', '1547561067', '2019-01-15');
INSERT INTO `s_yzm` VALUES ('358', '15892783833', '5885', '1547561090', '2019-01-15');
INSERT INTO `s_yzm` VALUES ('359', '13602041102', '6040', '1547561095', '2019-01-15');
INSERT INTO `s_yzm` VALUES ('360', '15722614597', '9283', '1547561131', '2019-01-15');
INSERT INTO `s_yzm` VALUES ('361', '18825902080', '2359', '1547561524', '2019-01-15');
INSERT INTO `s_yzm` VALUES ('362', '15089545978', '6669', '1547561881', '2019-01-15');
INSERT INTO `s_yzm` VALUES ('363', '18420114387', '2813', '1547562492', '2019-01-15');
INSERT INTO `s_yzm` VALUES ('364', '17739360718', '3417', '1547562963', '2019-01-15');
INSERT INTO `s_yzm` VALUES ('365', '13523525520', '4805', '1547562997', '2019-01-15');
INSERT INTO `s_yzm` VALUES ('366', '13523525520', '1102', '1547563193', '2019-01-15');
INSERT INTO `s_yzm` VALUES ('367', '13523525520', '8321', '1547563514', '2019-01-15');
INSERT INTO `s_yzm` VALUES ('368', '13523525520', '5679', '1547563609', '2019-01-15');
INSERT INTO `s_yzm` VALUES ('369', '13523525520', '4242', '1547563767', '2019-01-15');
INSERT INTO `s_yzm` VALUES ('370', '13542513068', '8806', '1547564194', '2019-01-15');
INSERT INTO `s_yzm` VALUES ('371', '13542513068', '5156', '1547564326', '2019-01-15');
INSERT INTO `s_yzm` VALUES ('372', '13542563593', '6771', '1547564535', '2019-01-15');
INSERT INTO `s_yzm` VALUES ('373', '13523525520', '7916', '1547564610', '2019-01-15');
INSERT INTO `s_yzm` VALUES ('374', '18334536183', '2494', '1547568366', '2019-01-16');
INSERT INTO `s_yzm` VALUES ('375', '15256130880', '4100', '1547569121', '2019-01-16');
INSERT INTO `s_yzm` VALUES ('376', '18729194549', '2566', '1547569419', '2019-01-16');
INSERT INTO `s_yzm` VALUES ('377', '18020840273', '5012', '1547571503', '2019-01-16');
INSERT INTO `s_yzm` VALUES ('378', '17676477816', '8364', '1547571854', '2019-01-16');
INSERT INTO `s_yzm` VALUES ('379', '17607824197', '4932', '1547571927', '2019-01-16');
INSERT INTO `s_yzm` VALUES ('380', '15102747073', '1856', '1547572434', '2019-01-16');
INSERT INTO `s_yzm` VALUES ('381', '13886019901', '2950', '1547573134', '2019-01-16');
INSERT INTO `s_yzm` VALUES ('382', '18787883011', '6592', '1547573817', '2019-01-16');
INSERT INTO `s_yzm` VALUES ('383', '18138177274', '5234', '1547575858', '2019-01-16');
INSERT INTO `s_yzm` VALUES ('384', '15019681699', '8805', '1547576016', '2019-01-16');
INSERT INTO `s_yzm` VALUES ('385', '15926245422', '1526', '1547576105', '2019-01-16');
INSERT INTO `s_yzm` VALUES ('386', '17691319371', '7379', '1547576279', '2019-01-16');
INSERT INTO `s_yzm` VALUES ('387', '13122402313', '6398', '1547592553', '2019-01-16');
INSERT INTO `s_yzm` VALUES ('388', '15227083760', '7074', '1547593521', '2019-01-16');
INSERT INTO `s_yzm` VALUES ('389', '18324365453', '4495', '1547599843', '2019-01-16');
INSERT INTO `s_yzm` VALUES ('390', '18324365453', '3802', '1547599844', '2019-01-16');
INSERT INTO `s_yzm` VALUES ('391', '18324365453', '1100', '1547599845', '2019-01-16');
INSERT INTO `s_yzm` VALUES ('392', '18598832566', '3992', '1547600780', '2019-01-16');
INSERT INTO `s_yzm` VALUES ('393', '13952155989', '9899', '1547601636', '2019-01-16');
INSERT INTO `s_yzm` VALUES ('394', '17625501907', '4282', '1547604744', '2019-01-16');
