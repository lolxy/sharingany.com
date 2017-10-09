/*
Navicat MySQL Data Transfer

Source Server         : 218.85.132.232
Source Server Version : 50173
Source Host           : 218.85.132.232:3306
Source Database       : db0032459

Target Server Type    : MYSQL
Target Server Version : 50173
File Encoding         : 65001

Date: 2017-08-30 22:18:34
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `com_ad`
-- ----------------------------
DROP TABLE IF EXISTS `com_ad`;
CREATE TABLE `com_ad` (
  `ad_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '广告id',
  `ad_name` varchar(255) NOT NULL COMMENT '广告名称',
  `ad_content` text COMMENT '广告内容',
  `status` int(2) NOT NULL DEFAULT '1' COMMENT '状态，1显示，0不显示',
  PRIMARY KEY (`ad_id`),
  KEY `ad_name` (`ad_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of com_ad
-- ----------------------------

-- ----------------------------
-- Table structure for `com_asset`
-- ----------------------------
DROP TABLE IF EXISTS `com_asset`;
CREATE TABLE `com_asset` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL DEFAULT '0' COMMENT '用户 id',
  `key` varchar(50) NOT NULL COMMENT '资源 key',
  `filename` varchar(50) DEFAULT NULL COMMENT '文件名',
  `filesize` int(11) DEFAULT NULL COMMENT '文件大小,单位Byte',
  `filepath` varchar(200) NOT NULL COMMENT '文件路径，相对于 upload 目录，可以为 url',
  `uploadtime` int(11) NOT NULL COMMENT '上传时间',
  `status` int(2) NOT NULL DEFAULT '1' COMMENT '状态，1：可用，0：删除，不可用',
  `meta` text COMMENT '其它详细信息，JSON格式',
  `suffix` varchar(50) DEFAULT NULL COMMENT '文件后缀名，不包括点',
  `download_times` int(11) NOT NULL DEFAULT '0' COMMENT '下载次数',
  PRIMARY KEY (`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of com_asset
-- ----------------------------

-- ----------------------------
-- Table structure for `com_auth_access`
-- ----------------------------
DROP TABLE IF EXISTS `com_auth_access`;
CREATE TABLE `com_auth_access` (
  `role_id` mediumint(8) unsigned NOT NULL COMMENT '角色',
  `rule_name` varchar(255) NOT NULL COMMENT '规则唯一英文标识,全小写',
  `type` varchar(30) DEFAULT NULL COMMENT '权限规则分类，请加应用前缀,如admin_',
  KEY `role_id` (`role_id`),
  KEY `rule_name` (`rule_name`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of com_auth_access
-- ----------------------------
INSERT INTO `com_auth_access` VALUES ('2', 'admin/content/default', 'admin_url');
INSERT INTO `com_auth_access` VALUES ('2', 'portal/adminpost/index', 'admin_url');
INSERT INTO `com_auth_access` VALUES ('2', 'portal/adminpost/listorders', 'admin_url');
INSERT INTO `com_auth_access` VALUES ('2', 'portal/adminpost/top', 'admin_url');
INSERT INTO `com_auth_access` VALUES ('2', 'portal/adminpost/recommend', 'admin_url');
INSERT INTO `com_auth_access` VALUES ('2', 'portal/adminpost/move', 'admin_url');
INSERT INTO `com_auth_access` VALUES ('2', 'portal/adminpost/check', 'admin_url');
INSERT INTO `com_auth_access` VALUES ('2', 'portal/adminpost/delete', 'admin_url');
INSERT INTO `com_auth_access` VALUES ('2', 'portal/adminpost/edit', 'admin_url');
INSERT INTO `com_auth_access` VALUES ('2', 'portal/adminpost/edit_post', 'admin_url');
INSERT INTO `com_auth_access` VALUES ('2', 'portal/adminpost/add', 'admin_url');
INSERT INTO `com_auth_access` VALUES ('2', 'portal/adminpost/add_post', 'admin_url');
INSERT INTO `com_auth_access` VALUES ('2', 'portal/adminpage/index', 'admin_url');
INSERT INTO `com_auth_access` VALUES ('2', 'portal/adminpage/listorders', 'admin_url');
INSERT INTO `com_auth_access` VALUES ('2', 'portal/adminpage/delete', 'admin_url');
INSERT INTO `com_auth_access` VALUES ('2', 'portal/adminpage/edit', 'admin_url');
INSERT INTO `com_auth_access` VALUES ('2', 'portal/adminpage/edit_post', 'admin_url');
INSERT INTO `com_auth_access` VALUES ('2', 'portal/adminpage/add', 'admin_url');
INSERT INTO `com_auth_access` VALUES ('2', 'portal/adminpage/add_post', 'admin_url');
INSERT INTO `com_auth_access` VALUES ('2', 'portal/adminproduct/index', 'admin_url');
INSERT INTO `com_auth_access` VALUES ('2', 'portal/adminjob/index', 'admin_url');
INSERT INTO `com_auth_access` VALUES ('2', 'admin/extension/default', 'admin_url');
INSERT INTO `com_auth_access` VALUES ('2', 'admin/slide/default', 'admin_url');
INSERT INTO `com_auth_access` VALUES ('2', 'admin/slide/index', 'admin_url');
INSERT INTO `com_auth_access` VALUES ('2', 'admin/slide/listorders', 'admin_url');
INSERT INTO `com_auth_access` VALUES ('2', 'admin/slide/toggle', 'admin_url');
INSERT INTO `com_auth_access` VALUES ('2', 'admin/slide/delete', 'admin_url');
INSERT INTO `com_auth_access` VALUES ('2', 'admin/slide/edit', 'admin_url');
INSERT INTO `com_auth_access` VALUES ('2', 'admin/slide/edit_post', 'admin_url');
INSERT INTO `com_auth_access` VALUES ('2', 'admin/slide/add', 'admin_url');
INSERT INTO `com_auth_access` VALUES ('2', 'admin/slide/add_post', 'admin_url');
INSERT INTO `com_auth_access` VALUES ('2', 'admin/slide/ban', 'admin_url');
INSERT INTO `com_auth_access` VALUES ('2', 'admin/slide/cancelban', 'admin_url');
INSERT INTO `com_auth_access` VALUES ('2', 'admin/slidecat/index', 'admin_url');
INSERT INTO `com_auth_access` VALUES ('2', 'admin/slidecat/delete', 'admin_url');
INSERT INTO `com_auth_access` VALUES ('2', 'admin/slidecat/edit', 'admin_url');
INSERT INTO `com_auth_access` VALUES ('2', 'admin/slidecat/edit_post', 'admin_url');
INSERT INTO `com_auth_access` VALUES ('2', 'admin/slidecat/add', 'admin_url');
INSERT INTO `com_auth_access` VALUES ('2', 'admin/slidecat/add_post', 'admin_url');
INSERT INTO `com_auth_access` VALUES ('2', 'admin/setting/default', 'admin_url');
INSERT INTO `com_auth_access` VALUES ('2', 'admin/setting/clearcache', 'admin_url');

-- ----------------------------
-- Table structure for `com_auth_rule`
-- ----------------------------
DROP TABLE IF EXISTS `com_auth_rule`;
CREATE TABLE `com_auth_rule` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '规则id,自增主键',
  `module` varchar(20) NOT NULL COMMENT '规则所属module',
  `type` varchar(30) NOT NULL DEFAULT '1' COMMENT '权限规则分类，请加应用前缀,如admin_',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '规则唯一英文标识,全小写',
  `param` varchar(255) DEFAULT NULL COMMENT '额外url参数',
  `title` varchar(20) NOT NULL DEFAULT '' COMMENT '规则中文描述',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否有效(0:无效,1:有效)',
  `condition` varchar(300) NOT NULL DEFAULT '' COMMENT '规则附加条件',
  PRIMARY KEY (`id`),
  KEY `module` (`module`,`status`,`type`)
) ENGINE=MyISAM AUTO_INCREMENT=166 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of com_auth_rule
-- ----------------------------
INSERT INTO `com_auth_rule` VALUES ('1', 'Admin', 'admin_url', 'admin/content/default', '', '内容管理', '1', '');
INSERT INTO `com_auth_rule` VALUES ('2', 'Api', 'admin_url', 'api/guestbookadmin/index', '', '所有留言', '1', '');
INSERT INTO `com_auth_rule` VALUES ('3', 'Api', 'admin_url', 'api/guestbookadmin/delete', '', '删除网站留言', '1', '');
INSERT INTO `com_auth_rule` VALUES ('4', 'Comment', 'admin_url', 'comment/commentadmin/index', '', '评论管理', '1', '');
INSERT INTO `com_auth_rule` VALUES ('5', 'Comment', 'admin_url', 'comment/commentadmin/delete', '', '删除评论', '1', '');
INSERT INTO `com_auth_rule` VALUES ('6', 'Comment', 'admin_url', 'comment/commentadmin/check', '', '评论审核', '1', '');
INSERT INTO `com_auth_rule` VALUES ('7', 'Portal', 'admin_url', 'portal/adminpost/index', '', '资讯管理', '1', '');
INSERT INTO `com_auth_rule` VALUES ('8', 'Portal', 'admin_url', 'portal/adminpost/listorders', '', '文章排序', '1', '');
INSERT INTO `com_auth_rule` VALUES ('9', 'Portal', 'admin_url', 'portal/adminpost/top', '', '文章置顶', '1', '');
INSERT INTO `com_auth_rule` VALUES ('10', 'Portal', 'admin_url', 'portal/adminpost/recommend', '', '文章推荐', '1', '');
INSERT INTO `com_auth_rule` VALUES ('11', 'Portal', 'admin_url', 'portal/adminpost/move', '', '批量移动', '1', '');
INSERT INTO `com_auth_rule` VALUES ('12', 'Portal', 'admin_url', 'portal/adminpost/check', '', '文章审核', '1', '');
INSERT INTO `com_auth_rule` VALUES ('13', 'Portal', 'admin_url', 'portal/adminpost/delete', '', '删除文章', '1', '');
INSERT INTO `com_auth_rule` VALUES ('14', 'Portal', 'admin_url', 'portal/adminpost/edit', '', '编辑文章', '1', '');
INSERT INTO `com_auth_rule` VALUES ('15', 'Portal', 'admin_url', 'portal/adminpost/edit_post', '', '提交编辑', '1', '');
INSERT INTO `com_auth_rule` VALUES ('16', 'Portal', 'admin_url', 'portal/adminpost/add', '', '添加文章', '1', '');
INSERT INTO `com_auth_rule` VALUES ('17', 'Portal', 'admin_url', 'portal/adminpost/add_post', '', '提交添加', '1', '');
INSERT INTO `com_auth_rule` VALUES ('18', 'Portal', 'admin_url', 'portal/adminterm/index', '', '分类管理', '1', '');
INSERT INTO `com_auth_rule` VALUES ('19', 'Portal', 'admin_url', 'portal/adminterm/listorders', '', '文章分类排序', '1', '');
INSERT INTO `com_auth_rule` VALUES ('20', 'Portal', 'admin_url', 'portal/adminterm/delete', '', '删除分类', '1', '');
INSERT INTO `com_auth_rule` VALUES ('21', 'Portal', 'admin_url', 'portal/adminterm/edit', '', '编辑分类', '1', '');
INSERT INTO `com_auth_rule` VALUES ('22', 'Portal', 'admin_url', 'portal/adminterm/edit_post', '', '提交编辑', '1', '');
INSERT INTO `com_auth_rule` VALUES ('23', 'Portal', 'admin_url', 'portal/adminterm/add', '', '添加分类', '1', '');
INSERT INTO `com_auth_rule` VALUES ('24', 'Portal', 'admin_url', 'portal/adminterm/add_post', '', '提交添加', '1', '');
INSERT INTO `com_auth_rule` VALUES ('25', 'Portal', 'admin_url', 'portal/adminpage/index', '', '页面管理', '1', '');
INSERT INTO `com_auth_rule` VALUES ('26', 'Portal', 'admin_url', 'portal/adminpage/listorders', '', '页面排序', '1', '');
INSERT INTO `com_auth_rule` VALUES ('27', 'Portal', 'admin_url', 'portal/adminpage/delete', '', '删除页面', '1', '');
INSERT INTO `com_auth_rule` VALUES ('28', 'Portal', 'admin_url', 'portal/adminpage/edit', '', '编辑页面', '1', '');
INSERT INTO `com_auth_rule` VALUES ('29', 'Portal', 'admin_url', 'portal/adminpage/edit_post', '', '提交编辑', '1', '');
INSERT INTO `com_auth_rule` VALUES ('30', 'Portal', 'admin_url', 'portal/adminpage/add', '', '添加页面', '1', '');
INSERT INTO `com_auth_rule` VALUES ('31', 'Portal', 'admin_url', 'portal/adminpage/add_post', '', '提交添加', '1', '');
INSERT INTO `com_auth_rule` VALUES ('32', 'Admin', 'admin_url', 'admin/recycle/default', '', '回收站', '1', '');
INSERT INTO `com_auth_rule` VALUES ('33', 'Portal', 'admin_url', 'portal/adminpost/recyclebin', '', '文章回收', '1', '');
INSERT INTO `com_auth_rule` VALUES ('34', 'Portal', 'admin_url', 'portal/adminpost/restore', '', '文章还原', '1', '');
INSERT INTO `com_auth_rule` VALUES ('35', 'Portal', 'admin_url', 'portal/adminpost/clean', '', '彻底删除', '1', '');
INSERT INTO `com_auth_rule` VALUES ('36', 'Portal', 'admin_url', 'portal/adminpage/recyclebin', '', '页面回收', '1', '');
INSERT INTO `com_auth_rule` VALUES ('37', 'Portal', 'admin_url', 'portal/adminpage/clean', '', '彻底删除', '1', '');
INSERT INTO `com_auth_rule` VALUES ('38', 'Portal', 'admin_url', 'portal/adminpage/restore', '', '页面还原', '1', '');
INSERT INTO `com_auth_rule` VALUES ('39', 'Admin', 'admin_url', 'admin/extension/default', '', '扩展工具', '1', '');
INSERT INTO `com_auth_rule` VALUES ('40', 'Admin', 'admin_url', 'admin/backup/default', '', '备份管理', '1', '');
INSERT INTO `com_auth_rule` VALUES ('41', 'Admin', 'admin_url', 'admin/backup/restore', '', '数据还原', '1', '');
INSERT INTO `com_auth_rule` VALUES ('42', 'Admin', 'admin_url', 'admin/backup/index', '', '数据备份', '1', '');
INSERT INTO `com_auth_rule` VALUES ('43', 'Admin', 'admin_url', 'admin/backup/index_post', '', '提交数据备份', '1', '');
INSERT INTO `com_auth_rule` VALUES ('44', 'Admin', 'admin_url', 'admin/backup/download', '', '下载备份', '1', '');
INSERT INTO `com_auth_rule` VALUES ('45', 'Admin', 'admin_url', 'admin/backup/del_backup', '', '删除备份', '1', '');
INSERT INTO `com_auth_rule` VALUES ('46', 'Admin', 'admin_url', 'admin/backup/import', '', '数据备份导入', '1', '');
INSERT INTO `com_auth_rule` VALUES ('47', 'Admin', 'admin_url', 'admin/plugin/index', '', '插件管理', '1', '');
INSERT INTO `com_auth_rule` VALUES ('48', 'Admin', 'admin_url', 'admin/plugin/toggle', '', '插件启用切换', '1', '');
INSERT INTO `com_auth_rule` VALUES ('49', 'Admin', 'admin_url', 'admin/plugin/setting', '', '插件设置', '1', '');
INSERT INTO `com_auth_rule` VALUES ('50', 'Admin', 'admin_url', 'admin/plugin/setting_post', '', '插件设置提交', '1', '');
INSERT INTO `com_auth_rule` VALUES ('51', 'Admin', 'admin_url', 'admin/plugin/install', '', '插件安装', '1', '');
INSERT INTO `com_auth_rule` VALUES ('52', 'Admin', 'admin_url', 'admin/plugin/uninstall', '', '插件卸载', '1', '');
INSERT INTO `com_auth_rule` VALUES ('53', 'Admin', 'admin_url', 'admin/slide/default', '', '幻灯片', '1', '');
INSERT INTO `com_auth_rule` VALUES ('54', 'Admin', 'admin_url', 'admin/slide/index', '', '幻灯片管理', '1', '');
INSERT INTO `com_auth_rule` VALUES ('55', 'Admin', 'admin_url', 'admin/slide/listorders', '', '幻灯片排序', '1', '');
INSERT INTO `com_auth_rule` VALUES ('56', 'Admin', 'admin_url', 'admin/slide/toggle', '', '幻灯片显示切换', '1', '');
INSERT INTO `com_auth_rule` VALUES ('57', 'Admin', 'admin_url', 'admin/slide/delete', '', '删除幻灯片', '1', '');
INSERT INTO `com_auth_rule` VALUES ('58', 'Admin', 'admin_url', 'admin/slide/edit', '', '编辑幻灯片', '1', '');
INSERT INTO `com_auth_rule` VALUES ('59', 'Admin', 'admin_url', 'admin/slide/edit_post', '', '提交编辑', '1', '');
INSERT INTO `com_auth_rule` VALUES ('60', 'Admin', 'admin_url', 'admin/slide/add', '', '添加幻灯片', '1', '');
INSERT INTO `com_auth_rule` VALUES ('61', 'Admin', 'admin_url', 'admin/slide/add_post', '', '提交添加', '1', '');
INSERT INTO `com_auth_rule` VALUES ('62', 'Admin', 'admin_url', 'admin/slidecat/index', '', '幻灯片分类', '1', '');
INSERT INTO `com_auth_rule` VALUES ('63', 'Admin', 'admin_url', 'admin/slidecat/delete', '', '删除分类', '1', '');
INSERT INTO `com_auth_rule` VALUES ('64', 'Admin', 'admin_url', 'admin/slidecat/edit', '', '编辑分类', '1', '');
INSERT INTO `com_auth_rule` VALUES ('65', 'Admin', 'admin_url', 'admin/slidecat/edit_post', '', '提交编辑', '1', '');
INSERT INTO `com_auth_rule` VALUES ('66', 'Admin', 'admin_url', 'admin/slidecat/add', '', '添加分类', '1', '');
INSERT INTO `com_auth_rule` VALUES ('67', 'Admin', 'admin_url', 'admin/slidecat/add_post', '', '提交添加', '1', '');
INSERT INTO `com_auth_rule` VALUES ('68', 'Admin', 'admin_url', 'admin/ad/index', '', '网站广告', '1', '');
INSERT INTO `com_auth_rule` VALUES ('69', 'Admin', 'admin_url', 'admin/ad/toggle', '', '广告显示切换', '1', '');
INSERT INTO `com_auth_rule` VALUES ('70', 'Admin', 'admin_url', 'admin/ad/delete', '', '删除广告', '1', '');
INSERT INTO `com_auth_rule` VALUES ('71', 'Admin', 'admin_url', 'admin/ad/edit', '', '编辑广告', '1', '');
INSERT INTO `com_auth_rule` VALUES ('72', 'Admin', 'admin_url', 'admin/ad/edit_post', '', '提交编辑', '1', '');
INSERT INTO `com_auth_rule` VALUES ('73', 'Admin', 'admin_url', 'admin/ad/add', '', '添加广告', '1', '');
INSERT INTO `com_auth_rule` VALUES ('74', 'Admin', 'admin_url', 'admin/ad/add_post', '', '提交添加', '1', '');
INSERT INTO `com_auth_rule` VALUES ('75', 'Admin', 'admin_url', 'admin/link/index', '', '友情链接', '1', '');
INSERT INTO `com_auth_rule` VALUES ('76', 'Admin', 'admin_url', 'admin/link/listorders', '', '友情链接排序', '1', '');
INSERT INTO `com_auth_rule` VALUES ('77', 'Admin', 'admin_url', 'admin/link/toggle', '', '友链显示切换', '1', '');
INSERT INTO `com_auth_rule` VALUES ('78', 'Admin', 'admin_url', 'admin/link/delete', '', '删除友情链接', '1', '');
INSERT INTO `com_auth_rule` VALUES ('79', 'Admin', 'admin_url', 'admin/link/edit', '', '编辑友情链接', '1', '');
INSERT INTO `com_auth_rule` VALUES ('80', 'Admin', 'admin_url', 'admin/link/edit_post', '', '提交编辑', '1', '');
INSERT INTO `com_auth_rule` VALUES ('81', 'Admin', 'admin_url', 'admin/link/add', '', '添加友情链接', '1', '');
INSERT INTO `com_auth_rule` VALUES ('82', 'Admin', 'admin_url', 'admin/link/add_post', '', '提交添加', '1', '');
INSERT INTO `com_auth_rule` VALUES ('83', 'Api', 'admin_url', 'api/oauthadmin/setting', '', '第三方登陆', '1', '');
INSERT INTO `com_auth_rule` VALUES ('84', 'Api', 'admin_url', 'api/oauthadmin/setting_post', '', '提交设置', '1', '');
INSERT INTO `com_auth_rule` VALUES ('85', 'Admin', 'admin_url', 'admin/menu/default', '', '菜单管理', '1', '');
INSERT INTO `com_auth_rule` VALUES ('86', 'Admin', 'admin_url', 'admin/navcat/default1', '', '前台菜单', '1', '');
INSERT INTO `com_auth_rule` VALUES ('87', 'Admin', 'admin_url', 'admin/nav/index', '', '菜单管理', '1', '');
INSERT INTO `com_auth_rule` VALUES ('88', 'Admin', 'admin_url', 'admin/nav/listorders', '', '前台导航排序', '1', '');
INSERT INTO `com_auth_rule` VALUES ('89', 'Admin', 'admin_url', 'admin/nav/delete', '', '删除菜单', '1', '');
INSERT INTO `com_auth_rule` VALUES ('90', 'Admin', 'admin_url', 'admin/nav/edit', '', '编辑菜单', '1', '');
INSERT INTO `com_auth_rule` VALUES ('91', 'Admin', 'admin_url', 'admin/nav/edit_post', '', '提交编辑', '1', '');
INSERT INTO `com_auth_rule` VALUES ('92', 'Admin', 'admin_url', 'admin/nav/add', '', '添加菜单', '1', '');
INSERT INTO `com_auth_rule` VALUES ('93', 'Admin', 'admin_url', 'admin/nav/add_post', '', '提交添加', '1', '');
INSERT INTO `com_auth_rule` VALUES ('94', 'Admin', 'admin_url', 'admin/navcat/index', '', '菜单分类', '1', '');
INSERT INTO `com_auth_rule` VALUES ('95', 'Admin', 'admin_url', 'admin/navcat/delete', '', '删除分类', '1', '');
INSERT INTO `com_auth_rule` VALUES ('96', 'Admin', 'admin_url', 'admin/navcat/edit', '', '编辑分类', '1', '');
INSERT INTO `com_auth_rule` VALUES ('97', 'Admin', 'admin_url', 'admin/navcat/edit_post', '', '提交编辑', '1', '');
INSERT INTO `com_auth_rule` VALUES ('98', 'Admin', 'admin_url', 'admin/navcat/add', '', '添加分类', '1', '');
INSERT INTO `com_auth_rule` VALUES ('99', 'Admin', 'admin_url', 'admin/navcat/add_post', '', '提交添加', '1', '');
INSERT INTO `com_auth_rule` VALUES ('100', 'Admin', 'admin_url', 'admin/menu/index', '', '后台菜单', '1', '');
INSERT INTO `com_auth_rule` VALUES ('101', 'Admin', 'admin_url', 'admin/menu/add', '', '添加菜单', '1', '');
INSERT INTO `com_auth_rule` VALUES ('102', 'Admin', 'admin_url', 'admin/menu/add_post', '', '提交添加', '1', '');
INSERT INTO `com_auth_rule` VALUES ('103', 'Admin', 'admin_url', 'admin/menu/listorders', '', '后台菜单排序', '1', '');
INSERT INTO `com_auth_rule` VALUES ('104', 'Admin', 'admin_url', 'admin/menu/export_menu', '', '菜单备份', '1', '');
INSERT INTO `com_auth_rule` VALUES ('105', 'Admin', 'admin_url', 'admin/menu/edit', '', '编辑菜单', '1', '');
INSERT INTO `com_auth_rule` VALUES ('106', 'Admin', 'admin_url', 'admin/menu/edit_post', '', '提交编辑', '1', '');
INSERT INTO `com_auth_rule` VALUES ('107', 'Admin', 'admin_url', 'admin/menu/delete', '', '删除菜单', '1', '');
INSERT INTO `com_auth_rule` VALUES ('108', 'Admin', 'admin_url', 'admin/menu/lists', '', '所有菜单', '1', '');
INSERT INTO `com_auth_rule` VALUES ('109', 'Admin', 'admin_url', 'admin/setting/default', '', '设置', '1', '');
INSERT INTO `com_auth_rule` VALUES ('110', 'Admin', 'admin_url', 'admin/setting/userdefault', '', '个人信息', '1', '');
INSERT INTO `com_auth_rule` VALUES ('111', 'Admin', 'admin_url', 'admin/user/userinfo', '', '修改信息', '1', '');
INSERT INTO `com_auth_rule` VALUES ('112', 'Admin', 'admin_url', 'admin/user/userinfo_post', '', '修改信息提交', '1', '');
INSERT INTO `com_auth_rule` VALUES ('113', 'Admin', 'admin_url', 'admin/setting/password', '', '修改密码', '1', '');
INSERT INTO `com_auth_rule` VALUES ('114', 'Admin', 'admin_url', 'admin/setting/password_post', '', '提交修改', '1', '');
INSERT INTO `com_auth_rule` VALUES ('115', 'Admin', 'admin_url', 'admin/setting/site', '', '网站信息', '1', '');
INSERT INTO `com_auth_rule` VALUES ('116', 'Admin', 'admin_url', 'admin/setting/site_post', '', '提交修改', '1', '');
INSERT INTO `com_auth_rule` VALUES ('117', 'Admin', 'admin_url', 'admin/route/index', '', '路由列表', '1', '');
INSERT INTO `com_auth_rule` VALUES ('118', 'Admin', 'admin_url', 'admin/route/add', '', '路由添加', '1', '');
INSERT INTO `com_auth_rule` VALUES ('119', 'Admin', 'admin_url', 'admin/route/add_post', '', '路由添加提交', '1', '');
INSERT INTO `com_auth_rule` VALUES ('120', 'Admin', 'admin_url', 'admin/route/edit', '', '路由编辑', '1', '');
INSERT INTO `com_auth_rule` VALUES ('121', 'Admin', 'admin_url', 'admin/route/edit_post', '', '路由编辑提交', '1', '');
INSERT INTO `com_auth_rule` VALUES ('122', 'Admin', 'admin_url', 'admin/route/delete', '', '路由删除', '1', '');
INSERT INTO `com_auth_rule` VALUES ('123', 'Admin', 'admin_url', 'admin/route/ban', '', '路由禁止', '1', '');
INSERT INTO `com_auth_rule` VALUES ('124', 'Admin', 'admin_url', 'admin/route/open', '', '路由启用', '1', '');
INSERT INTO `com_auth_rule` VALUES ('125', 'Admin', 'admin_url', 'admin/route/listorders', '', '路由排序', '1', '');
INSERT INTO `com_auth_rule` VALUES ('126', 'Admin', 'admin_url', 'admin/mailer/default', '', '邮箱配置', '1', '');
INSERT INTO `com_auth_rule` VALUES ('127', 'Admin', 'admin_url', 'admin/mailer/index', '', 'SMTP配置', '1', '');
INSERT INTO `com_auth_rule` VALUES ('128', 'Admin', 'admin_url', 'admin/mailer/index_post', '', '提交配置', '1', '');
INSERT INTO `com_auth_rule` VALUES ('129', 'Admin', 'admin_url', 'admin/mailer/active', '', '邮件模板', '1', '');
INSERT INTO `com_auth_rule` VALUES ('130', 'Admin', 'admin_url', 'admin/mailer/active_post', '', '提交模板', '1', '');
INSERT INTO `com_auth_rule` VALUES ('131', 'Admin', 'admin_url', 'admin/setting/clearcache', '', '清除缓存', '1', '');
INSERT INTO `com_auth_rule` VALUES ('132', 'User', 'admin_url', 'user/indexadmin/default', '', '用户管理', '1', '');
INSERT INTO `com_auth_rule` VALUES ('133', 'User', 'admin_url', 'user/indexadmin/default1', '', '用户组', '1', '');
INSERT INTO `com_auth_rule` VALUES ('134', 'User', 'admin_url', 'user/indexadmin/index', '', '本站用户', '1', '');
INSERT INTO `com_auth_rule` VALUES ('135', 'User', 'admin_url', 'user/indexadmin/ban', '', '拉黑会员', '1', '');
INSERT INTO `com_auth_rule` VALUES ('136', 'User', 'admin_url', 'user/indexadmin/cancelban', '', '启用会员', '1', '');
INSERT INTO `com_auth_rule` VALUES ('137', 'User', 'admin_url', 'user/oauthadmin/index', '', '第三方用户', '1', '');
INSERT INTO `com_auth_rule` VALUES ('138', 'User', 'admin_url', 'user/oauthadmin/delete', '', '第三方用户解绑', '1', '');
INSERT INTO `com_auth_rule` VALUES ('139', 'User', 'admin_url', 'user/indexadmin/default3', '', '管理组', '1', '');
INSERT INTO `com_auth_rule` VALUES ('140', 'Admin', 'admin_url', 'admin/rbac/index', '', '角色管理', '1', '');
INSERT INTO `com_auth_rule` VALUES ('141', 'Admin', 'admin_url', 'admin/rbac/member', '', '成员管理', '1', '');
INSERT INTO `com_auth_rule` VALUES ('142', 'Admin', 'admin_url', 'admin/rbac/authorize', '', '权限设置', '1', '');
INSERT INTO `com_auth_rule` VALUES ('143', 'Admin', 'admin_url', 'admin/rbac/authorize_post', '', '提交设置', '1', '');
INSERT INTO `com_auth_rule` VALUES ('144', 'Admin', 'admin_url', 'admin/rbac/roleedit', '', '编辑角色', '1', '');
INSERT INTO `com_auth_rule` VALUES ('145', 'Admin', 'admin_url', 'admin/rbac/roleedit_post', '', '提交编辑', '1', '');
INSERT INTO `com_auth_rule` VALUES ('146', 'Admin', 'admin_url', 'admin/rbac/roledelete', '', '删除角色', '1', '');
INSERT INTO `com_auth_rule` VALUES ('147', 'Admin', 'admin_url', 'admin/rbac/roleadd', '', '添加角色', '1', '');
INSERT INTO `com_auth_rule` VALUES ('148', 'Admin', 'admin_url', 'admin/rbac/roleadd_post', '', '提交添加', '1', '');
INSERT INTO `com_auth_rule` VALUES ('149', 'Admin', 'admin_url', 'admin/user/index', '', '管理员', '1', '');
INSERT INTO `com_auth_rule` VALUES ('150', 'Admin', 'admin_url', 'admin/user/delete', '', '删除管理员', '1', '');
INSERT INTO `com_auth_rule` VALUES ('151', 'Admin', 'admin_url', 'admin/user/edit', '', '管理员编辑', '1', '');
INSERT INTO `com_auth_rule` VALUES ('152', 'Admin', 'admin_url', 'admin/user/edit_post', '', '编辑提交', '1', '');
INSERT INTO `com_auth_rule` VALUES ('153', 'Admin', 'admin_url', 'admin/user/add', '', '管理员添加', '1', '');
INSERT INTO `com_auth_rule` VALUES ('154', 'Admin', 'admin_url', 'admin/user/add_post', '', '添加提交', '1', '');
INSERT INTO `com_auth_rule` VALUES ('155', 'Admin', 'admin_url', 'admin/plugin/update', '', '插件更新', '1', '');
INSERT INTO `com_auth_rule` VALUES ('156', 'Admin', 'admin_url', 'admin/storage/index', '', '文件存储', '1', '');
INSERT INTO `com_auth_rule` VALUES ('157', 'Admin', 'admin_url', 'admin/storage/setting_post', '', '文件存储设置提交', '1', '');
INSERT INTO `com_auth_rule` VALUES ('158', 'Admin', 'admin_url', 'admin/slide/ban', '', '禁用幻灯片', '1', '');
INSERT INTO `com_auth_rule` VALUES ('159', 'Admin', 'admin_url', 'admin/slide/cancelban', '', '启用幻灯片', '1', '');
INSERT INTO `com_auth_rule` VALUES ('160', 'Admin', 'admin_url', 'admin/user/ban', '', '禁用管理员', '1', '');
INSERT INTO `com_auth_rule` VALUES ('161', 'Admin', 'admin_url', 'admin/user/cancelban', '', '启用管理员', '1', '');
INSERT INTO `com_auth_rule` VALUES ('162', 'Admin', 'admin_url', 'admin/variable/index', '', '变量管理', '1', '');
INSERT INTO `com_auth_rule` VALUES ('163', 'Portal', 'admin_url', 'portal/adminproduct/index', '', '产品管理', '1', '');
INSERT INTO `com_auth_rule` VALUES ('164', 'Portal', 'admin_url', 'portal/adminjob/index', '', '招聘管理', '1', '');
INSERT INTO `com_auth_rule` VALUES ('165', 'Portal', 'admin_url', 'portal/admincase/index', '', '案例管理', '1', '');

-- ----------------------------
-- Table structure for `com_comments`
-- ----------------------------
DROP TABLE IF EXISTS `com_comments`;
CREATE TABLE `com_comments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_table` varchar(100) NOT NULL COMMENT '评论内容所在表，不带表前缀',
  `post_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '评论内容 id',
  `url` varchar(255) DEFAULT NULL COMMENT '原文地址',
  `uid` int(11) NOT NULL DEFAULT '0' COMMENT '发表评论的用户id',
  `to_uid` int(11) NOT NULL DEFAULT '0' COMMENT '被评论的用户id',
  `full_name` varchar(50) DEFAULT NULL COMMENT '评论者昵称',
  `email` varchar(255) DEFAULT NULL COMMENT '评论者邮箱',
  `createtime` datetime NOT NULL DEFAULT '2000-01-01 00:00:00' COMMENT '评论时间',
  `content` text NOT NULL COMMENT '评论内容',
  `type` smallint(1) NOT NULL DEFAULT '1' COMMENT '评论类型；1实名评论',
  `parentid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '被回复的评论id',
  `path` varchar(500) DEFAULT NULL,
  `status` smallint(1) NOT NULL DEFAULT '1' COMMENT '状态，1已审核，0未审核',
  PRIMARY KEY (`id`),
  KEY `comment_post_ID` (`post_id`),
  KEY `comment_approved_date_gmt` (`status`),
  KEY `comment_parent` (`parentid`),
  KEY `table_id_status` (`post_table`,`post_id`,`status`),
  KEY `createtime` (`createtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of com_comments
-- ----------------------------

-- ----------------------------
-- Table structure for `com_common_action_log`
-- ----------------------------
DROP TABLE IF EXISTS `com_common_action_log`;
CREATE TABLE `com_common_action_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` bigint(20) DEFAULT '0' COMMENT '用户id',
  `object` varchar(100) DEFAULT NULL COMMENT '访问对象的id,格式：不带前缀的表名+id;如posts1表示xx_posts表里id为1的记录',
  `action` varchar(50) DEFAULT NULL COMMENT '操作名称；格式规定为：应用名+控制器+操作名；也可自己定义格式只要不发生冲突且惟一；',
  `count` int(11) DEFAULT '0' COMMENT '访问次数',
  `last_time` int(11) DEFAULT '0' COMMENT '最后访问的时间戳',
  `ip` varchar(15) DEFAULT NULL COMMENT '访问者最后访问ip',
  PRIMARY KEY (`id`),
  KEY `user_object_action` (`user`,`object`,`action`),
  KEY `user_object_action_ip` (`user`,`object`,`action`,`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of com_common_action_log
-- ----------------------------

-- ----------------------------
-- Table structure for `com_guestbook`
-- ----------------------------
DROP TABLE IF EXISTS `com_guestbook`;
CREATE TABLE `com_guestbook` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `full_name` varchar(50) NOT NULL COMMENT '留言者姓名',
  `email` varchar(100) NOT NULL COMMENT '留言者邮箱',
  `title` varchar(255) DEFAULT NULL COMMENT '留言标题',
  `msg` text NOT NULL COMMENT '留言内容',
  `createtime` datetime NOT NULL COMMENT '留言时间',
  `status` smallint(2) NOT NULL DEFAULT '1' COMMENT '留言状态，1：正常，0：删除',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=452 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of com_guestbook
-- ----------------------------
INSERT INTO `com_guestbook` VALUES ('444', '胡见应', '12545454545', '555555', '55555', '2017-07-28 18:36:37', '1');
INSERT INTO `com_guestbook` VALUES ('445', '1', '11111111111', '1', '1', '2017-07-28 19:09:20', '1');
INSERT INTO `com_guestbook` VALUES ('446', '1', '11111111111', '1', '1', '2017-07-28 19:09:23', '1');
INSERT INTO `com_guestbook` VALUES ('447', '1', '15880445543', '153', '111', '2017-07-29 07:57:56', '1');
INSERT INTO `com_guestbook` VALUES ('448', '1', '15880445543', '153', '111', '2017-07-29 07:58:03', '1');
INSERT INTO `com_guestbook` VALUES ('449', 'jjj', 'fffffffffff', 'fffff', 'ff', '2017-07-31 17:42:17', '1');
INSERT INTO `com_guestbook` VALUES ('450', 'jjj', 'fffffffffff', 'fffff', 'ff', '2017-07-31 17:43:01', '1');
INSERT INTO `com_guestbook` VALUES ('451', 'jjj', 'fffffffffff', 'fffff', 'ff', '2017-07-31 17:47:24', '1');

-- ----------------------------
-- Table structure for `com_links`
-- ----------------------------
DROP TABLE IF EXISTS `com_links`;
CREATE TABLE `com_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) NOT NULL COMMENT '友情链接地址',
  `link_name` varchar(255) NOT NULL COMMENT '友情链接名称',
  `link_image` varchar(255) DEFAULT NULL COMMENT '友情链接图标',
  `link_target` varchar(25) NOT NULL DEFAULT '_blank' COMMENT '友情链接打开方式',
  `link_description` text NOT NULL COMMENT '友情链接描述',
  `link_status` int(2) NOT NULL DEFAULT '1' COMMENT '状态，1显示，0不显示',
  `link_rating` int(11) NOT NULL DEFAULT '0' COMMENT '友情链接评级',
  `link_rel` varchar(255) DEFAULT NULL COMMENT '链接与网站的关系',
  `listorder` int(10) NOT NULL DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of com_links
-- ----------------------------

-- ----------------------------
-- Table structure for `com_menu`
-- ----------------------------
DROP TABLE IF EXISTS `com_menu`;
CREATE TABLE `com_menu` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `parentid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `app` char(20) NOT NULL COMMENT '应用名称app',
  `model` char(20) NOT NULL COMMENT '控制器',
  `action` char(20) NOT NULL COMMENT '操作名称',
  `data` char(50) NOT NULL COMMENT '额外参数',
  `type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '菜单类型  1：权限认证+菜单；0：只作为菜单',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '状态，1显示，0不显示',
  `name` varchar(50) NOT NULL COMMENT '菜单名称',
  `icon` varchar(50) DEFAULT NULL COMMENT '菜单图标',
  `remark` varchar(255) NOT NULL COMMENT '备注',
  `listorder` smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '排序ID',
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `parentid` (`parentid`),
  KEY `model` (`model`)
) ENGINE=MyISAM AUTO_INCREMENT=166 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of com_menu
-- ----------------------------
INSERT INTO `com_menu` VALUES ('1', '0', 'Admin', 'Content', 'default', '', '0', '1', '内容管理', 'th', '', '30');
INSERT INTO `com_menu` VALUES ('2', '1', 'Api', 'Guestbookadmin', 'index', '', '1', '1', '所有留言', '', '', '0');
INSERT INTO `com_menu` VALUES ('3', '2', 'Api', 'Guestbookadmin', 'delete', '', '1', '0', '删除网站留言', '', '', '0');
INSERT INTO `com_menu` VALUES ('4', '1', 'Comment', 'Commentadmin', 'index', '', '1', '0', '评论管理', '', '', '0');
INSERT INTO `com_menu` VALUES ('5', '4', 'Comment', 'Commentadmin', 'delete', '', '1', '0', '删除评论', '', '', '0');
INSERT INTO `com_menu` VALUES ('6', '4', 'Comment', 'Commentadmin', 'check', '', '1', '0', '评论审核', '', '', '0');
INSERT INTO `com_menu` VALUES ('7', '1', 'Portal', 'AdminPost', 'index', '', '1', '1', '资讯管理', '', '', '1');
INSERT INTO `com_menu` VALUES ('8', '7', 'Portal', 'AdminPost', 'listorders', '', '1', '0', '文章排序', '', '', '0');
INSERT INTO `com_menu` VALUES ('9', '7', 'Portal', 'AdminPost', 'top', '', '1', '0', '文章置顶', '', '', '0');
INSERT INTO `com_menu` VALUES ('10', '7', 'Portal', 'AdminPost', 'recommend', '', '1', '0', '文章推荐', '', '', '0');
INSERT INTO `com_menu` VALUES ('11', '7', 'Portal', 'AdminPost', 'move', '', '1', '0', '批量移动', '', '', '1000');
INSERT INTO `com_menu` VALUES ('12', '7', 'Portal', 'AdminPost', 'check', '', '1', '0', '文章审核', '', '', '1000');
INSERT INTO `com_menu` VALUES ('13', '7', 'Portal', 'AdminPost', 'delete', '', '1', '0', '删除文章', '', '', '1000');
INSERT INTO `com_menu` VALUES ('14', '7', 'Portal', 'AdminPost', 'edit', '', '1', '0', '编辑文章', '', '', '1000');
INSERT INTO `com_menu` VALUES ('15', '14', 'Portal', 'AdminPost', 'edit_post', '', '1', '0', '提交编辑', '', '', '0');
INSERT INTO `com_menu` VALUES ('16', '7', 'Portal', 'AdminPost', 'add', '', '1', '0', '添加文章', '', '', '1000');
INSERT INTO `com_menu` VALUES ('17', '16', 'Portal', 'AdminPost', 'add_post', '', '1', '0', '提交添加', '', '', '0');
INSERT INTO `com_menu` VALUES ('18', '1', 'Portal', 'AdminTerm', 'index', '', '0', '1', '分类管理', '', '', '2');
INSERT INTO `com_menu` VALUES ('19', '18', 'Portal', 'AdminTerm', 'listorders', '', '1', '0', '文章分类排序', '', '', '0');
INSERT INTO `com_menu` VALUES ('20', '18', 'Portal', 'AdminTerm', 'delete', '', '1', '0', '删除分类', '', '', '1000');
INSERT INTO `com_menu` VALUES ('21', '18', 'Portal', 'AdminTerm', 'edit', '', '1', '0', '编辑分类', '', '', '1000');
INSERT INTO `com_menu` VALUES ('22', '21', 'Portal', 'AdminTerm', 'edit_post', '', '1', '0', '提交编辑', '', '', '0');
INSERT INTO `com_menu` VALUES ('23', '18', 'Portal', 'AdminTerm', 'add', '', '1', '0', '添加分类', '', '', '1000');
INSERT INTO `com_menu` VALUES ('24', '23', 'Portal', 'AdminTerm', 'add_post', '', '1', '0', '提交添加', '', '', '0');
INSERT INTO `com_menu` VALUES ('25', '1', 'Portal', 'AdminPage', 'index', '', '1', '1', '页面管理', '', '', '3');
INSERT INTO `com_menu` VALUES ('26', '25', 'Portal', 'AdminPage', 'listorders', '', '1', '0', '页面排序', '', '', '0');
INSERT INTO `com_menu` VALUES ('27', '25', 'Portal', 'AdminPage', 'delete', '', '1', '0', '删除页面', '', '', '1000');
INSERT INTO `com_menu` VALUES ('28', '25', 'Portal', 'AdminPage', 'edit', '', '1', '0', '编辑页面', '', '', '1000');
INSERT INTO `com_menu` VALUES ('29', '28', 'Portal', 'AdminPage', 'edit_post', '', '1', '0', '提交编辑', '', '', '0');
INSERT INTO `com_menu` VALUES ('30', '25', 'Portal', 'AdminPage', 'add', '', '1', '0', '添加页面', '', '', '1000');
INSERT INTO `com_menu` VALUES ('31', '30', 'Portal', 'AdminPage', 'add_post', '', '1', '0', '提交添加', '', '', '0');
INSERT INTO `com_menu` VALUES ('32', '1', 'Admin', 'Recycle', 'default', '', '1', '1', '回收站', '', '', '4');
INSERT INTO `com_menu` VALUES ('33', '32', 'Portal', 'AdminPost', 'recyclebin', '', '1', '1', '文章回收', '', '', '0');
INSERT INTO `com_menu` VALUES ('34', '33', 'Portal', 'AdminPost', 'restore', '', '1', '0', '文章还原', '', '', '1000');
INSERT INTO `com_menu` VALUES ('35', '33', 'Portal', 'AdminPost', 'clean', '', '1', '0', '彻底删除', '', '', '1000');
INSERT INTO `com_menu` VALUES ('36', '32', 'Portal', 'AdminPage', 'recyclebin', '', '1', '1', '页面回收', '', '', '1');
INSERT INTO `com_menu` VALUES ('37', '36', 'Portal', 'AdminPage', 'clean', '', '1', '0', '彻底删除', '', '', '1000');
INSERT INTO `com_menu` VALUES ('38', '36', 'Portal', 'AdminPage', 'restore', '', '1', '0', '页面还原', '', '', '1000');
INSERT INTO `com_menu` VALUES ('39', '0', 'Admin', 'Extension', 'default', '', '0', '1', '扩展工具', 'cloud', '', '40');
INSERT INTO `com_menu` VALUES ('40', '39', 'Admin', 'Backup', 'default', '', '1', '1', '备份管理', '', '', '0');
INSERT INTO `com_menu` VALUES ('41', '40', 'Admin', 'Backup', 'restore', '', '1', '1', '数据还原', '', '', '0');
INSERT INTO `com_menu` VALUES ('42', '40', 'Admin', 'Backup', 'index', '', '1', '1', '数据备份', '', '', '0');
INSERT INTO `com_menu` VALUES ('43', '42', 'Admin', 'Backup', 'index_post', '', '1', '0', '提交数据备份', '', '', '0');
INSERT INTO `com_menu` VALUES ('44', '40', 'Admin', 'Backup', 'download', '', '1', '0', '下载备份', '', '', '1000');
INSERT INTO `com_menu` VALUES ('45', '40', 'Admin', 'Backup', 'del_backup', '', '1', '0', '删除备份', '', '', '1000');
INSERT INTO `com_menu` VALUES ('46', '40', 'Admin', 'Backup', 'import', '', '1', '0', '数据备份导入', '', '', '1000');
INSERT INTO `com_menu` VALUES ('47', '39', 'Admin', 'Plugin', 'index', '', '1', '0', '插件管理', '', '', '0');
INSERT INTO `com_menu` VALUES ('48', '47', 'Admin', 'Plugin', 'toggle', '', '1', '0', '插件启用切换', '', '', '0');
INSERT INTO `com_menu` VALUES ('49', '47', 'Admin', 'Plugin', 'setting', '', '1', '0', '插件设置', '', '', '0');
INSERT INTO `com_menu` VALUES ('50', '49', 'Admin', 'Plugin', 'setting_post', '', '1', '0', '插件设置提交', '', '', '0');
INSERT INTO `com_menu` VALUES ('51', '47', 'Admin', 'Plugin', 'install', '', '1', '0', '插件安装', '', '', '0');
INSERT INTO `com_menu` VALUES ('52', '47', 'Admin', 'Plugin', 'uninstall', '', '1', '0', '插件卸载', '', '', '0');
INSERT INTO `com_menu` VALUES ('53', '39', 'Admin', 'Slide', 'default', '', '1', '1', '幻灯片', '', '', '1');
INSERT INTO `com_menu` VALUES ('54', '53', 'Admin', 'Slide', 'index', '', '1', '1', '幻灯片管理', '', '', '0');
INSERT INTO `com_menu` VALUES ('55', '54', 'Admin', 'Slide', 'listorders', '', '1', '0', '幻灯片排序', '', '', '0');
INSERT INTO `com_menu` VALUES ('56', '54', 'Admin', 'Slide', 'toggle', '', '1', '0', '幻灯片显示切换', '', '', '0');
INSERT INTO `com_menu` VALUES ('57', '54', 'Admin', 'Slide', 'delete', '', '1', '0', '删除幻灯片', '', '', '1000');
INSERT INTO `com_menu` VALUES ('58', '54', 'Admin', 'Slide', 'edit', '', '1', '0', '编辑幻灯片', '', '', '1000');
INSERT INTO `com_menu` VALUES ('59', '58', 'Admin', 'Slide', 'edit_post', '', '1', '0', '提交编辑', '', '', '0');
INSERT INTO `com_menu` VALUES ('60', '54', 'Admin', 'Slide', 'add', '', '1', '0', '添加幻灯片', '', '', '1000');
INSERT INTO `com_menu` VALUES ('61', '60', 'Admin', 'Slide', 'add_post', '', '1', '0', '提交添加', '', '', '0');
INSERT INTO `com_menu` VALUES ('62', '53', 'Admin', 'Slidecat', 'index', '', '1', '1', '幻灯片分类', '', '', '0');
INSERT INTO `com_menu` VALUES ('63', '62', 'Admin', 'Slidecat', 'delete', '', '1', '0', '删除分类', '', '', '1000');
INSERT INTO `com_menu` VALUES ('64', '62', 'Admin', 'Slidecat', 'edit', '', '1', '0', '编辑分类', '', '', '1000');
INSERT INTO `com_menu` VALUES ('65', '64', 'Admin', 'Slidecat', 'edit_post', '', '1', '0', '提交编辑', '', '', '0');
INSERT INTO `com_menu` VALUES ('66', '62', 'Admin', 'Slidecat', 'add', '', '1', '0', '添加分类', '', '', '1000');
INSERT INTO `com_menu` VALUES ('67', '66', 'Admin', 'Slidecat', 'add_post', '', '1', '0', '提交添加', '', '', '0');
INSERT INTO `com_menu` VALUES ('68', '39', 'Admin', 'Ad', 'index', '', '1', '1', '网站广告', '', '', '2');
INSERT INTO `com_menu` VALUES ('69', '68', 'Admin', 'Ad', 'toggle', '', '1', '0', '广告显示切换', '', '', '0');
INSERT INTO `com_menu` VALUES ('70', '68', 'Admin', 'Ad', 'delete', '', '1', '0', '删除广告', '', '', '1000');
INSERT INTO `com_menu` VALUES ('71', '68', 'Admin', 'Ad', 'edit', '', '1', '0', '编辑广告', '', '', '1000');
INSERT INTO `com_menu` VALUES ('72', '71', 'Admin', 'Ad', 'edit_post', '', '1', '0', '提交编辑', '', '', '0');
INSERT INTO `com_menu` VALUES ('73', '68', 'Admin', 'Ad', 'add', '', '1', '0', '添加广告', '', '', '1000');
INSERT INTO `com_menu` VALUES ('74', '73', 'Admin', 'Ad', 'add_post', '', '1', '0', '提交添加', '', '', '0');
INSERT INTO `com_menu` VALUES ('75', '39', 'Admin', 'Link', 'index', '', '0', '1', '友情链接', '', '', '3');
INSERT INTO `com_menu` VALUES ('76', '75', 'Admin', 'Link', 'listorders', '', '1', '0', '友情链接排序', '', '', '0');
INSERT INTO `com_menu` VALUES ('77', '75', 'Admin', 'Link', 'toggle', '', '1', '0', '友链显示切换', '', '', '0');
INSERT INTO `com_menu` VALUES ('78', '75', 'Admin', 'Link', 'delete', '', '1', '0', '删除友情链接', '', '', '1000');
INSERT INTO `com_menu` VALUES ('79', '75', 'Admin', 'Link', 'edit', '', '1', '0', '编辑友情链接', '', '', '1000');
INSERT INTO `com_menu` VALUES ('80', '79', 'Admin', 'Link', 'edit_post', '', '1', '0', '提交编辑', '', '', '0');
INSERT INTO `com_menu` VALUES ('81', '75', 'Admin', 'Link', 'add', '', '1', '0', '添加友情链接', '', '', '1000');
INSERT INTO `com_menu` VALUES ('82', '81', 'Admin', 'Link', 'add_post', '', '1', '0', '提交添加', '', '', '0');
INSERT INTO `com_menu` VALUES ('83', '39', 'Api', 'Oauthadmin', 'setting', '', '1', '0', '第三方登陆', 'leaf', '', '4');
INSERT INTO `com_menu` VALUES ('84', '83', 'Api', 'Oauthadmin', 'setting_post', '', '1', '0', '提交设置', '', '', '0');
INSERT INTO `com_menu` VALUES ('85', '0', 'Admin', 'Menu', 'default', '', '1', '1', '菜单管理', 'list', '', '20');
INSERT INTO `com_menu` VALUES ('86', '85', 'Admin', 'Navcat', 'default1', '', '1', '1', '前台菜单', '', '', '0');
INSERT INTO `com_menu` VALUES ('87', '86', 'Admin', 'Nav', 'index', '', '1', '1', '菜单管理', '', '', '0');
INSERT INTO `com_menu` VALUES ('88', '87', 'Admin', 'Nav', 'listorders', '', '1', '0', '前台导航排序', '', '', '0');
INSERT INTO `com_menu` VALUES ('89', '87', 'Admin', 'Nav', 'delete', '', '1', '0', '删除菜单', '', '', '1000');
INSERT INTO `com_menu` VALUES ('90', '87', 'Admin', 'Nav', 'edit', '', '1', '0', '编辑菜单', '', '', '1000');
INSERT INTO `com_menu` VALUES ('91', '90', 'Admin', 'Nav', 'edit_post', '', '1', '0', '提交编辑', '', '', '0');
INSERT INTO `com_menu` VALUES ('92', '87', 'Admin', 'Nav', 'add', '', '1', '0', '添加菜单', '', '', '1000');
INSERT INTO `com_menu` VALUES ('93', '92', 'Admin', 'Nav', 'add_post', '', '1', '0', '提交添加', '', '', '0');
INSERT INTO `com_menu` VALUES ('94', '86', 'Admin', 'Navcat', 'index', '', '1', '1', '菜单分类', '', '', '0');
INSERT INTO `com_menu` VALUES ('95', '94', 'Admin', 'Navcat', 'delete', '', '1', '0', '删除分类', '', '', '1000');
INSERT INTO `com_menu` VALUES ('96', '94', 'Admin', 'Navcat', 'edit', '', '1', '0', '编辑分类', '', '', '1000');
INSERT INTO `com_menu` VALUES ('97', '96', 'Admin', 'Navcat', 'edit_post', '', '1', '0', '提交编辑', '', '', '0');
INSERT INTO `com_menu` VALUES ('98', '94', 'Admin', 'Navcat', 'add', '', '1', '0', '添加分类', '', '', '1000');
INSERT INTO `com_menu` VALUES ('99', '98', 'Admin', 'Navcat', 'add_post', '', '1', '0', '提交添加', '', '', '0');
INSERT INTO `com_menu` VALUES ('100', '85', 'Admin', 'Menu', 'index', '', '1', '1', '后台菜单', '', '', '0');
INSERT INTO `com_menu` VALUES ('101', '100', 'Admin', 'Menu', 'add', '', '1', '0', '添加菜单', '', '', '0');
INSERT INTO `com_menu` VALUES ('102', '101', 'Admin', 'Menu', 'add_post', '', '1', '0', '提交添加', '', '', '0');
INSERT INTO `com_menu` VALUES ('103', '100', 'Admin', 'Menu', 'listorders', '', '1', '0', '后台菜单排序', '', '', '0');
INSERT INTO `com_menu` VALUES ('104', '100', 'Admin', 'Menu', 'export_menu', '', '1', '0', '菜单备份', '', '', '1000');
INSERT INTO `com_menu` VALUES ('105', '100', 'Admin', 'Menu', 'edit', '', '1', '0', '编辑菜单', '', '', '1000');
INSERT INTO `com_menu` VALUES ('106', '105', 'Admin', 'Menu', 'edit_post', '', '1', '0', '提交编辑', '', '', '0');
INSERT INTO `com_menu` VALUES ('107', '100', 'Admin', 'Menu', 'delete', '', '1', '0', '删除菜单', '', '', '1000');
INSERT INTO `com_menu` VALUES ('108', '100', 'Admin', 'Menu', 'lists', '', '1', '0', '所有菜单', '', '', '1000');
INSERT INTO `com_menu` VALUES ('109', '0', 'Admin', 'Setting', 'default', '', '0', '1', '设置', 'cogs', '', '0');
INSERT INTO `com_menu` VALUES ('110', '109', 'Admin', 'Setting', 'userdefault', '', '0', '1', '个人信息', '', '', '0');
INSERT INTO `com_menu` VALUES ('111', '110', 'Admin', 'User', 'userinfo', '', '1', '1', '修改信息', '', '', '0');
INSERT INTO `com_menu` VALUES ('112', '111', 'Admin', 'User', 'userinfo_post', '', '1', '0', '修改信息提交', '', '', '0');
INSERT INTO `com_menu` VALUES ('113', '110', 'Admin', 'Setting', 'password', '', '1', '1', '修改密码', '', '', '0');
INSERT INTO `com_menu` VALUES ('114', '113', 'Admin', 'Setting', 'password_post', '', '1', '0', '提交修改', '', '', '0');
INSERT INTO `com_menu` VALUES ('115', '109', 'Admin', 'Setting', 'site', '', '1', '1', '网站信息', '', '', '0');
INSERT INTO `com_menu` VALUES ('116', '115', 'Admin', 'Setting', 'site_post', '', '1', '0', '提交修改', '', '', '0');
INSERT INTO `com_menu` VALUES ('117', '115', 'Admin', 'Route', 'index', '', '1', '0', '路由列表', '', '', '0');
INSERT INTO `com_menu` VALUES ('118', '115', 'Admin', 'Route', 'add', '', '1', '0', '路由添加', '', '', '0');
INSERT INTO `com_menu` VALUES ('119', '118', 'Admin', 'Route', 'add_post', '', '1', '0', '路由添加提交', '', '', '0');
INSERT INTO `com_menu` VALUES ('120', '115', 'Admin', 'Route', 'edit', '', '1', '0', '路由编辑', '', '', '0');
INSERT INTO `com_menu` VALUES ('121', '120', 'Admin', 'Route', 'edit_post', '', '1', '0', '路由编辑提交', '', '', '0');
INSERT INTO `com_menu` VALUES ('122', '115', 'Admin', 'Route', 'delete', '', '1', '0', '路由删除', '', '', '0');
INSERT INTO `com_menu` VALUES ('123', '115', 'Admin', 'Route', 'ban', '', '1', '0', '路由禁止', '', '', '0');
INSERT INTO `com_menu` VALUES ('124', '115', 'Admin', 'Route', 'open', '', '1', '0', '路由启用', '', '', '0');
INSERT INTO `com_menu` VALUES ('125', '115', 'Admin', 'Route', 'listorders', '', '1', '0', '路由排序', '', '', '0');
INSERT INTO `com_menu` VALUES ('126', '109', 'Admin', 'Mailer', 'default', '', '1', '1', '邮箱配置', '', '', '0');
INSERT INTO `com_menu` VALUES ('127', '126', 'Admin', 'Mailer', 'index', '', '1', '1', 'SMTP配置', '', '', '0');
INSERT INTO `com_menu` VALUES ('128', '127', 'Admin', 'Mailer', 'index_post', '', '1', '0', '提交配置', '', '', '0');
INSERT INTO `com_menu` VALUES ('129', '126', 'Admin', 'Mailer', 'active', '', '1', '1', '邮件模板', '', '', '0');
INSERT INTO `com_menu` VALUES ('130', '129', 'Admin', 'Mailer', 'active_post', '', '1', '0', '提交模板', '', '', '0');
INSERT INTO `com_menu` VALUES ('131', '109', 'Admin', 'Setting', 'clearcache', '', '1', '1', '清除缓存', '', '', '1');
INSERT INTO `com_menu` VALUES ('132', '0', 'User', 'Indexadmin', 'default', '', '1', '1', '用户管理', 'group', '', '10');
INSERT INTO `com_menu` VALUES ('133', '132', 'User', 'Indexadmin', 'default1', '', '1', '1', '用户组', '', '', '0');
INSERT INTO `com_menu` VALUES ('134', '133', 'User', 'Indexadmin', 'index', '', '1', '1', '本站用户', 'leaf', '', '0');
INSERT INTO `com_menu` VALUES ('135', '134', 'User', 'Indexadmin', 'ban', '', '1', '0', '拉黑会员', '', '', '0');
INSERT INTO `com_menu` VALUES ('136', '134', 'User', 'Indexadmin', 'cancelban', '', '1', '0', '启用会员', '', '', '0');
INSERT INTO `com_menu` VALUES ('137', '133', 'User', 'Oauthadmin', 'index', '', '1', '1', '第三方用户', 'leaf', '', '0');
INSERT INTO `com_menu` VALUES ('138', '137', 'User', 'Oauthadmin', 'delete', '', '1', '0', '第三方用户解绑', '', '', '0');
INSERT INTO `com_menu` VALUES ('139', '132', 'User', 'Indexadmin', 'default3', '', '1', '1', '管理组', '', '', '0');
INSERT INTO `com_menu` VALUES ('140', '139', 'Admin', 'Rbac', 'index', '', '1', '1', '角色管理', '', '', '0');
INSERT INTO `com_menu` VALUES ('141', '140', 'Admin', 'Rbac', 'member', '', '1', '0', '成员管理', '', '', '1000');
INSERT INTO `com_menu` VALUES ('142', '140', 'Admin', 'Rbac', 'authorize', '', '1', '0', '权限设置', '', '', '1000');
INSERT INTO `com_menu` VALUES ('143', '142', 'Admin', 'Rbac', 'authorize_post', '', '1', '0', '提交设置', '', '', '0');
INSERT INTO `com_menu` VALUES ('144', '140', 'Admin', 'Rbac', 'roleedit', '', '1', '0', '编辑角色', '', '', '1000');
INSERT INTO `com_menu` VALUES ('145', '144', 'Admin', 'Rbac', 'roleedit_post', '', '1', '0', '提交编辑', '', '', '0');
INSERT INTO `com_menu` VALUES ('146', '140', 'Admin', 'Rbac', 'roledelete', '', '1', '1', '删除角色', '', '', '1000');
INSERT INTO `com_menu` VALUES ('147', '140', 'Admin', 'Rbac', 'roleadd', '', '1', '1', '添加角色', '', '', '1000');
INSERT INTO `com_menu` VALUES ('148', '147', 'Admin', 'Rbac', 'roleadd_post', '', '1', '0', '提交添加', '', '', '0');
INSERT INTO `com_menu` VALUES ('149', '139', 'Admin', 'User', 'index', '', '1', '1', '管理员', '', '', '0');
INSERT INTO `com_menu` VALUES ('150', '149', 'Admin', 'User', 'delete', '', '1', '0', '删除管理员', '', '', '1000');
INSERT INTO `com_menu` VALUES ('151', '149', 'Admin', 'User', 'edit', '', '1', '0', '管理员编辑', '', '', '1000');
INSERT INTO `com_menu` VALUES ('152', '151', 'Admin', 'User', 'edit_post', '', '1', '0', '编辑提交', '', '', '0');
INSERT INTO `com_menu` VALUES ('153', '149', 'Admin', 'User', 'add', '', '1', '0', '管理员添加', '', '', '1000');
INSERT INTO `com_menu` VALUES ('154', '153', 'Admin', 'User', 'add_post', '', '1', '0', '添加提交', '', '', '0');
INSERT INTO `com_menu` VALUES ('155', '47', 'Admin', 'Plugin', 'update', '', '1', '0', '插件更新', '', '', '0');
INSERT INTO `com_menu` VALUES ('156', '39', 'Admin', 'Storage', 'index', '', '1', '0', '文件存储', '', '', '0');
INSERT INTO `com_menu` VALUES ('157', '156', 'Admin', 'Storage', 'setting_post', '', '1', '0', '文件存储设置提交', '', '', '0');
INSERT INTO `com_menu` VALUES ('158', '54', 'Admin', 'Slide', 'ban', '', '1', '0', '禁用幻灯片', '', '', '0');
INSERT INTO `com_menu` VALUES ('159', '54', 'Admin', 'Slide', 'cancelban', '', '1', '0', '启用幻灯片', '', '', '0');
INSERT INTO `com_menu` VALUES ('160', '149', 'Admin', 'User', 'ban', '', '1', '0', '禁用管理员', '', '', '0');
INSERT INTO `com_menu` VALUES ('161', '149', 'Admin', 'User', 'cancelban', '', '1', '0', '启用管理员', '', '', '0');
INSERT INTO `com_menu` VALUES ('162', '1', 'Admin', 'Variable', 'index', '', '1', '1', '变量管理', 'cog', '', '0');
INSERT INTO `com_menu` VALUES ('163', '1', 'Portal', 'AdminProduct', 'index', '', '1', '1', '产品管理', '', '', '0');
INSERT INTO `com_menu` VALUES ('164', '1', 'Portal', 'AdminJob', 'index', '', '1', '1', '招聘管理', '', '', '0');
INSERT INTO `com_menu` VALUES ('165', '1', 'Portal', 'AdminCase', 'index', '', '1', '1', '案例管理', '', '', '0');

-- ----------------------------
-- Table structure for `com_nav`
-- ----------------------------
DROP TABLE IF EXISTS `com_nav`;
CREATE TABLE `com_nav` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL COMMENT '导航分类 id',
  `parentid` int(11) NOT NULL COMMENT '导航父 id',
  `label` varchar(255) NOT NULL COMMENT '导航标题',
  `target` varchar(50) DEFAULT NULL COMMENT '打开方式',
  `href` varchar(255) NOT NULL COMMENT '导航链接',
  `icon` varchar(255) NOT NULL COMMENT '导航图标',
  `status` int(2) NOT NULL DEFAULT '1' COMMENT '状态，1显示，0不显示',
  `listorder` int(6) DEFAULT '0' COMMENT '排序',
  `path` varchar(255) NOT NULL DEFAULT '0' COMMENT '层级关系',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of com_nav
-- ----------------------------
INSERT INTO `com_nav` VALUES ('1', '1', '0', '首页', '', 'home', '', '1', '0', '0-1');
INSERT INTO `com_nav` VALUES ('6', '1', '0', '人才招聘', '', 'a:2:{s:6:\"action\";s:17:\"Portal/List/index\";s:5:\"param\";a:1:{s:2:\"id\";s:1:\"5\";}}', '', '1', '3', '0-6');
INSERT INTO `com_nav` VALUES ('7', '1', '0', '关于我们', '', 'a:2:{s:6:\"action\";s:17:\"Portal/Page/index\";s:5:\"param\";a:1:{s:2:\"id\";s:1:\"1\";}}', '', '1', '4', '0-7');
INSERT INTO `com_nav` VALUES ('4', '1', '0', '产品&amp;服务', '', 'a:2:{s:6:\"action\";s:17:\"Portal/List/index\";s:5:\"param\";a:1:{s:2:\"id\";s:1:\"3\";}}', '', '1', '1', '0-4');
INSERT INTO `com_nav` VALUES ('5', '1', '0', '公司案例', '', 'a:2:{s:6:\"action\";s:17:\"Portal/List/index\";s:5:\"param\";a:1:{s:2:\"id\";s:1:\"4\";}}', '', '1', '2', '0-5');
INSERT INTO `com_nav` VALUES ('8', '1', '7', '公司简介', '', 'a:2:{s:6:\"action\";s:17:\"Portal/Page/index\";s:5:\"param\";a:1:{s:2:\"id\";s:1:\"1\";}}', '', '1', '0', '0-7-8');
INSERT INTO `com_nav` VALUES ('11', '1', '7', '联系我们', '', 'a:2:{s:6:\"action\";s:17:\"Portal/Page/index\";s:5:\"param\";a:1:{s:2:\"id\";s:1:\"4\";}}', '', '1', '0', '0-7-11');

-- ----------------------------
-- Table structure for `com_nav_cat`
-- ----------------------------
DROP TABLE IF EXISTS `com_nav_cat`;
CREATE TABLE `com_nav_cat` (
  `navcid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL COMMENT '导航分类名',
  `active` int(1) NOT NULL DEFAULT '1' COMMENT '是否为主菜单，1是，0不是',
  `remark` text COMMENT '备注',
  PRIMARY KEY (`navcid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of com_nav_cat
-- ----------------------------
INSERT INTO `com_nav_cat` VALUES ('1', '主导航', '1', '主导航');

-- ----------------------------
-- Table structure for `com_oauth_user`
-- ----------------------------
DROP TABLE IF EXISTS `com_oauth_user`;
CREATE TABLE `com_oauth_user` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `from` varchar(20) NOT NULL COMMENT '用户来源key',
  `name` varchar(30) NOT NULL COMMENT '第三方昵称',
  `head_img` varchar(200) NOT NULL COMMENT '头像',
  `uid` int(20) NOT NULL COMMENT '关联的本站用户id',
  `create_time` datetime NOT NULL COMMENT '绑定时间',
  `last_login_time` datetime NOT NULL COMMENT '最后登录时间',
  `last_login_ip` varchar(16) NOT NULL COMMENT '最后登录ip',
  `login_times` int(6) NOT NULL COMMENT '登录次数',
  `status` tinyint(2) NOT NULL,
  `access_token` varchar(512) NOT NULL,
  `expires_date` int(11) NOT NULL COMMENT 'access_token过期时间',
  `openid` varchar(40) NOT NULL COMMENT '第三方用户id',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of com_oauth_user
-- ----------------------------

-- ----------------------------
-- Table structure for `com_options`
-- ----------------------------
DROP TABLE IF EXISTS `com_options`;
CREATE TABLE `com_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(64) NOT NULL COMMENT '配置名',
  `option_value` longtext NOT NULL COMMENT '配置值',
  `autoload` int(2) NOT NULL DEFAULT '1' COMMENT '是否自动加载',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of com_options
-- ----------------------------
INSERT INTO `com_options` VALUES ('1', 'member_email_active', '{\"title\":\"ThinkCMF\\u90ae\\u4ef6\\u6fc0\\u6d3b\\u901a\\u77e5.\",\"template\":\"<p>\\u672c\\u90ae\\u4ef6\\u6765\\u81ea<a href=\\\"http:\\/\\/www.thinkcmf.com\\\">ThinkCMF<\\/a><br\\/><br\\/>&nbsp; &nbsp;<strong>---------------<\\/strong><br\\/>&nbsp; &nbsp;<strong>\\u5e10\\u53f7\\u6fc0\\u6d3b\\u8bf4\\u660e<\\/strong><br\\/>&nbsp; &nbsp;<strong>---------------<\\/strong><br\\/><br\\/>&nbsp; &nbsp; \\u5c0a\\u656c\\u7684<span style=\\\"FONT-SIZE: 16px; FONT-FAMILY: Arial; COLOR: rgb(51,51,51); LINE-HEIGHT: 18px; BACKGROUND-COLOR: rgb(255,255,255)\\\">#username#\\uff0c\\u60a8\\u597d\\u3002<\\/span>\\u5982\\u679c\\u60a8\\u662fThinkCMF\\u7684\\u65b0\\u7528\\u6237\\uff0c\\u6216\\u5728\\u4fee\\u6539\\u60a8\\u7684\\u6ce8\\u518cEmail\\u65f6\\u4f7f\\u7528\\u4e86\\u672c\\u5730\\u5740\\uff0c\\u6211\\u4eec\\u9700\\u8981\\u5bf9\\u60a8\\u7684\\u5730\\u5740\\u6709\\u6548\\u6027\\u8fdb\\u884c\\u9a8c\\u8bc1\\u4ee5\\u907f\\u514d\\u5783\\u573e\\u90ae\\u4ef6\\u6216\\u5730\\u5740\\u88ab\\u6ee5\\u7528\\u3002<br\\/>&nbsp; &nbsp; \\u60a8\\u53ea\\u9700\\u70b9\\u51fb\\u4e0b\\u9762\\u7684\\u94fe\\u63a5\\u5373\\u53ef\\u6fc0\\u6d3b\\u60a8\\u7684\\u5e10\\u53f7\\uff1a<br\\/>&nbsp; &nbsp; <a title=\\\"\\\" href=\\\"http:\\/\\/#link#\\\" target=\\\"_self\\\">http:\\/\\/#link#<\\/a><br\\/>&nbsp; &nbsp; (\\u5982\\u679c\\u4e0a\\u9762\\u4e0d\\u662f\\u94fe\\u63a5\\u5f62\\u5f0f\\uff0c\\u8bf7\\u5c06\\u8be5\\u5730\\u5740\\u624b\\u5de5\\u7c98\\u8d34\\u5230\\u6d4f\\u89c8\\u5668\\u5730\\u5740\\u680f\\u518d\\u8bbf\\u95ee)<br\\/>&nbsp; &nbsp; \\u611f\\u8c22\\u60a8\\u7684\\u8bbf\\u95ee\\uff0c\\u795d\\u60a8\\u4f7f\\u7528\\u6109\\u5feb\\uff01<br\\/><br\\/>&nbsp; &nbsp; \\u6b64\\u81f4<br\\/>&nbsp; &nbsp; ThinkCMF \\u7ba1\\u7406\\u56e2\\u961f.<\\/p>\"}', '1');
INSERT INTO `com_options` VALUES ('2', 'site_options', '{\"site_name\":\"sharingany\",\"site_host\":\"http:\\/\\/www.sharingany.com\\/\",\"site_logo\":\"\\/data\\/upload\\/597f0a7258a94.png\",\"site_erweima\":\"\\/data\\/upload\\/597f0a9f735d3.png\",\"site_admin_url_password\":\"\",\"site_tpl\":\"sharingany\",\"mobile_tpl_enabled\":\"1\",\"site_adminstyle\":\"flat\",\"site_icp\":\"\\u95fdICP\\u590715015670\",\"site_admin_email\":\"admin@sharingany.com\",\"site_tongji\":\"<script>\\nvar _hmt = _hmt || [];\\n(function() {\\n  var hm = document.createElement(\\\"script\\\");\\n  hm.src = \\\"https:\\/\\/hm.baidu.com\\/hm.js?cebfbdd88ef2a80b5d0576663646d620https:\\/\\/hm.baidu.com\\/hm.js?cebfbdd88ef2a80b5d0576663646d620https:\\/\\/hm.baidu.com\\/hm.js?cebfbdd88ef2a80b5d0576663646d620\\\";\\n  var s = document.getElementsByTagName(\\\"script\\\")[0]; \\n  s.parentNode.insertBefore(hm, s);\\n})();\\n<\\/script>\",\"site_copyright\":\"Copyright@2015-2016 \\u798f\\u5dde\\u5e02\\u4f17\\u4eab\\u667a\\u8054\\u7f51\\u7edc\\u79d1\\u6280\\u6709\\u9650\\u516c\\u53f8  \\u7248\\u6743\\u6240\\u6709 \",\"site_seo_title\":\"\\u4e92\\u8054\\u7f51\\u521b\\u65b0\\u6280\\u672f\\u670d\\u52a1\\u89e3\\u51b3\\u65b9\\u6848 \\u798f\\u5efa \\u2022 \\u798f\\u5dde\\u4f17\\u4eab\\u667a\\u8054\\u7f51\\u7edc\\u79d1\\u6280\\u6709\\u9650\\u516c\\u53f8\",\"site_seo_keywords\":\"\\u4e92\\u8054\\u7f51,\\u4f17\\u4eab\\u7f51\\u7edc,\\u521b\\u65b0\\u6280\\u672f\\uff0c\\u6280\\u672f\\u89e3\\u51b3\\u65b9\\u6848\\u63d0\\u4f9b\\u5546\",\"site_seo_description\":\"\\u798f\\u5efa \\u2022 \\u798f\\u5dde\\u4f17\\u4eab\\u667a\\u8054\\u7f51\\u7edc\\u79d1\\u6280\\u6709\\u9650\\u516c\\u53f8\\uff0c\\u4e92\\u8054\\u7f51\\u521b\\u65b0\\u6280\\u672f\\u670d\\u52a1\\u89e3\\u51b3\\u65b9\\u6848 \",\"urlmode\":\"0\",\"html_suffix\":\"\",\"comment_time_interval\":60}', '1');
INSERT INTO `com_options` VALUES ('3', 'cmf_settings', '{\"banned_usernames\":\"\"}', '1');

-- ----------------------------
-- Table structure for `com_plugins`
-- ----------------------------
DROP TABLE IF EXISTS `com_plugins`;
CREATE TABLE `com_plugins` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `name` varchar(50) NOT NULL COMMENT '插件名，英文',
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '插件名称',
  `description` text COMMENT '插件描述',
  `type` tinyint(2) DEFAULT '0' COMMENT '插件类型, 1:网站；8;微信',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态；1开启；',
  `config` text COMMENT '插件配置',
  `hooks` varchar(255) DEFAULT NULL COMMENT '实现的钩子;以“，”分隔',
  `has_admin` tinyint(2) DEFAULT '0' COMMENT '插件是否有后台管理界面',
  `author` varchar(50) DEFAULT '' COMMENT '插件作者',
  `version` varchar(20) DEFAULT '' COMMENT '插件版本号',
  `createtime` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '插件安装时间',
  `listorder` smallint(6) NOT NULL DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of com_plugins
-- ----------------------------

-- ----------------------------
-- Table structure for `com_posts`
-- ----------------------------
DROP TABLE IF EXISTS `com_posts`;
CREATE TABLE `com_posts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned DEFAULT '0' COMMENT '发表者id',
  `post_keywords` varchar(150) DEFAULT NULL COMMENT 'seo keywords',
  `post_source` varchar(150) DEFAULT NULL COMMENT '转载文章的来源',
  `post_date` datetime DEFAULT '2000-01-01 00:00:00' COMMENT 'post创建日期，永久不变，一般不显示给用户',
  `post_content` longtext COMMENT 'post内容',
  `post_title` text COMMENT 'post标题',
  `post_excerpt` text COMMENT 'post摘要',
  `post_status` int(2) DEFAULT '1' COMMENT 'post状态，1已审核，0未审核',
  `comment_status` int(2) DEFAULT '1' COMMENT '评论状态，1允许，0不允许',
  `post_modified` datetime DEFAULT '2000-01-01 00:00:00' COMMENT 'post更新时间，可在前台修改，显示给用户',
  `post_content_filtered` longtext,
  `post_parent` bigint(20) unsigned DEFAULT '0' COMMENT 'post的父级post id,表示post层级关系',
  `post_type` varchar(2) DEFAULT NULL,
  `post_mime_type` varchar(100) DEFAULT NULL,
  `comment_count` bigint(20) DEFAULT '0',
  `smeta` text COMMENT 'post的扩展字段，保存相关扩展属性，如缩略图；格式为json',
  `post_hits` int(11) DEFAULT '0' COMMENT 'post点击数，查看数',
  `post_like` int(11) DEFAULT '0' COMMENT 'post赞数',
  `istop` tinyint(1) NOT NULL DEFAULT '0' COMMENT '置顶 1置顶； 0不置顶',
  `recommended` tinyint(1) NOT NULL DEFAULT '0' COMMENT '推荐 1推荐 0不推荐',
  `product` longtext COMMENT '产品介绍',
  `price` longtext COMMENT '产品价格',
  `functionss` longtext COMMENT '功能介绍',
  `flow` longtext COMMENT '制定流程',
  `zp_count` int(11) NOT NULL DEFAULT '1' COMMENT '招聘人数',
  `zp_date` date DEFAULT '0000-00-00' COMMENT '招聘时效',
  `zp_xuanshang` varchar(255) DEFAULT NULL COMMENT '悬赏招聘',
  `zp_gangwei` longtext COMMENT '岗位要求',
  `zp_xssm` longtext COMMENT '悬赏说明',
  `zp_zhize` longtext COMMENT '工作职责',
  `zp_address` varchar(255) DEFAULT NULL COMMENT '工作地点',
  `post_url` varchar(255) DEFAULT NULL COMMENT '外部链接',
  PRIMARY KEY (`id`),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`id`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`),
  KEY `post_date` (`post_date`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=65 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of com_posts
-- ----------------------------
INSERT INTO `com_posts` VALUES ('1', '1', '众享智联网络科技  公司简介', '', '2016-07-20 21:41:56', '<div class=\"fzlc\"><div class=\"title abstracttitle\"></div><div class=\"ovhide mt31 abstract_at\"><div class=\"abstract_s1\"><div class=\"f_l w800\"><p style=\"line-height: 1.75em;\"><span style=\"font-size: 18px;\">福州市众享智联网络科技有限公司(www.sharingany.com 简称众享智联），是一家以互联网领域创新型软件产品研发及配套服务为主快速发展的高新IT技术创新企业。致力于行业领域的软件研发、解决方案集成及运行维护服务，并已构建起完整的IT服务价值链，为客户提供端到端的IT信息化服务。</span></p><p><span style=\"font-size: 18px;\">公司目前提供三大服务：创新模式互联网+软件产品，政务与行业软件产品，移动互联网互动营销服务。从技术、营销、商业模式各方面提供全方位的创新服务，助力企业互联网+升级。拥有多年的专业历程及互联网核心技术沉淀&nbsp;，十余款互联网创新产品自主知识产权，互联网领域10余年从业经验的专业团队。</span></p><p style=\"margin-top:0;margin-bottom:0;text-align:left;direction:ltr;unicode-bidi:embed;vertical-align:baseline\"><span style=\"font-size: 18px;\">我们追求卓越的产品品质以及完美的用户服务体验，提倡“以技术创新、服务至上、专注极致为根本导向”。旨在为企业提供符合企业“互联网+”战略的软件产品设计、开发以及提供互动营销云服务，以技术创新驱动企业“互联网+”战略的落地。</span></p><p><br/></p></div>﻿﻿<div style=\"max-width:370px;\" class=\"f_r\"><img src=\"http://www.sharingany.com/data/upload/ueditor/20170210/589db00fd23a5.png\" title=\"关于我们 公司简介.png\" alt=\"关于我们 公司简介.png\"/></div><div class=\"blank\"></div></div><div class=\"blank15\"></div><div class=\"be_line\"></div><div class=\"blank15\"></div><div class=\"blank15\"></div><div class=\"blank30\"></div><div class=\"abstract_s3\"><div class=\"abstract_s3tit\"></div><div class=\"\"><div class=\"boxes\"><div class=\"box\"><div class=\"box_img abstract_s3img1\"></div><div class=\"box_txt\"><h1><span style=\"font-size: 36px;\">技术创新</span></h1><h2><span style=\"font-size: 18px;\">敏锐的技术前瞻性，引领技术创新潮流</span></h2><div class=\"blank15\"></div></div></div><div class=\"box\"><div class=\"box_img abstract_s3img2\"></div><div class=\"box_txt\"><h1><span style=\"font-size: 36px;\">服务至上</span></h1><h2><span style=\"font-size: 18px;\">为客户提供极致的思维、产品、服务</span></h2><div class=\"blank15\"></div></div></div><div class=\"box\"><div class=\"box_img abstract_s3img3\"></div><div class=\"box_txt\"><h1><span style=\"font-size: 36px;\">专注极致</span></h1><h2><span style=\"font-size: 18px;\">深耕互联网产业，坚持创新，精益求精</span></h2><div class=\"blank15\"></div></div></div><div class=\"blank\"></div></div></div></div><div class=\"blank30\"></div><div class=\"be_line\"></div><div class=\"blank30\"></div><div class=\"abstract_s5\"><div class=\"blank30\"></div><div class=\"abstract_s5tit\"></div><div class=\"blank20\"></div><div class=\"abstract_s5con\"><img src=\"http://www.sharingany.com/data/upload/ueditor/20170205/5897442a3d746.png\" title=\"灵感空间-04.png\" alt=\"灵感空间-04.png\"/></div></div></div></div>', '公司简介', '众享智联网络科技  公司简介', '1', '1', '2016-07-20 21:41:40', '', '0', '2', '', '0', '{\"template\":\"about\",\"thumb\":\"\"}', '0', '0', '0', '0', '', '', '', '', '1', '0000-00-00', '', '', '', '', '', '');
INSERT INTO `com_posts` VALUES ('14', '1', 'web前端开发', '', '2016-09-04 16:58:16', '', 'web前端工程师', '测试', '1', '1', '2016-09-01 16:57:00', '', '0', '0', '', '0', '{\"thumb\":\"\"}', '19', '0', '1', '1', '', '', '', '', '2', '2017-05-01', '', '<p>1、参与公司产品webapp和pcweb前端的技术选型、架构设计、编码开发、重构；<br/>2、负责前端团队的组建和培养，与其他端沟通协调；<br/>3、根据产品开发进度和任务分配，能够独立按时且高质量地完成编码和单元测试工作；<br/>4、坚持把自己当成产品经理，参与每个sprint工作任务的制定，轮流做master。</p>', '<p>职位月薪：<strong>5000-10000元/月</strong></p>', '<p>1、大专及以上学历，有自己的作品或者成功的案列；<br/>2、熟练掌握 HTML/CSS/Jquery 等前端技术，对流行前端框架（AngularJS, Bootstrap, RequireJS）有一定理解和应用；<br/>3、至少掌握一种服务端语言（node、php、java、python、ruby），且有具体项目实践经验；<br/>4、能够熟练使用Shell/Python/PHP等脚本语言辅助完成日常任务；&nbsp;<br/>5、具有较强的分析, 解决问题, 方案设计的能力, 以及持续学习和业务推进的能力；&nbsp;<br/>6、有github上有独立维护或参与开发的项目者优先；</p>', '福州', '');
INSERT INTO `com_posts` VALUES ('2', '1', '发展历程', '', '2016-07-20 21:42:13', '<p>发展历程</p>', '发展历程', '发展历程', '0', '1', '2016-07-20 21:41:58', '', '0', '2', '', '0', '{\"template\":\"page\",\"thumb\":\"\"}', '0', '0', '0', '0', '', '', '', '', '1', '0000-00-00', '', '', '', '', '', '');
INSERT INTO `com_posts` VALUES ('3', '1', '加入我们', '', '2016-07-20 21:42:26', '<p>加入我们</p>', '加入我们', '加入我们', '0', '1', '2016-07-20 21:42:15', '', '0', '2', '', '0', '{\"template\":\"page\",\"thumb\":\"\"}', '0', '0', '0', '0', '', '', '', '', '1', '0000-00-00', '', '', '', '', '', '');
INSERT INTO `com_posts` VALUES ('4', '1', '联系我们', '', '2016-07-20 21:42:39', '<p>联系我们</p>', '联系我们', '联系我们', '1', '1', '2016-07-20 21:42:27', '', '0', '2', '', '0', '{\"template\":\"contactus\",\"thumb\":\"\"}', '0', '0', '0', '0', '', '', '', '', '1', '0000-00-00', '', '', '', '', '', '');
INSERT INTO `com_posts` VALUES ('5', '1', '淘办租赁房产O2O平台', '测试1', '2016-07-22 21:47:40', '<p><img src=\"http://www.sharingany.com/data/upload/ueditor/20160723/57937637d6c09.jpg\" title=\"001.jpg\" alt=\"001.jpg\"/></p>', '淘办租赁房产O2O平台', '淘办租赁房产O2O平台', '1', '1', '2016-07-22 21:47:11', '', '0', '0', '', '0', '{\"thumb\":\"5889e69dd009d.png\"}', '87', '0', '1', '1', '', '', '', '', '1', '0000-00-00', '', '', '', '', '', '');
INSERT INTO `com_posts` VALUES ('6', '1', '罗技智能游戏鼠标', '测试2', '2016-07-22 21:54:35', '<p>罗技智能游戏鼠标</p>', '罗技智能游戏鼠标', '罗技智能游戏鼠标', '1', '1', '2016-07-22 21:49:09', '', '0', '0', '', '0', '{\"thumb\":\"20160722\\/57922588f1748.png\"}', '82', '0', '0', '0', '', '', '', '', '1', '0000-00-00', '', '', '', '', '', '');
INSERT INTO `com_posts` VALUES ('7', '1', '微信小程序   玩法', '众享科技', '2016-07-22 23:07:16', '<p style=\"box-sizing:border-box;margin-top:0px;margin-bottom:25px;-webkit-margin-before:1em;-webkit-margin-after:1em;color:rgba(0, 0, 0, 0.760784);font-family:&#39;hiragino sans gb&#39;, &#39;open sans&#39;, arial, &#39;microsoft yahei&#39;, 微软雅黑, stheiti, &#39;wenquanyi micro hei&#39;, simsun, sans-serif;font-size:16px;line-height:30px;\"><span style=\"font-size:16px;\">历经一年的等待后，小程序在2017年1月9日凌晨终于揭开神秘面纱，正式上线。</span></p><p style=\"box-sizing:border-box;margin-top:0px;margin-bottom:25px;-webkit-margin-before:1em;-webkit-margin-after:1em;color:rgba(0, 0, 0, 0.760784);font-family:&#39;hiragino sans gb&#39;, &#39;open sans&#39;, arial, &#39;microsoft yahei&#39;, 微软雅黑, stheiti, &#39;wenquanyi micro hei&#39;, simsun, sans-serif;font-size:16px;line-height:30px;text-align:center;\"><img src=\"http://www.sharingany.com/data/upload/ueditor/20170120/5881df051ec9d.jpg\" alt=\"\" class=\"mycls\" style=\"box-sizing:border-box;border:0px;vertical-align:middle;\"/></p><p style=\"box-sizing:border-box;margin-top:0px;margin-bottom:25px;-webkit-margin-before:1em;-webkit-margin-after:1em;color:rgba(0, 0, 0, 0.760784);font-family:&#39;hiragino sans gb&#39;, &#39;open sans&#39;, arial, &#39;microsoft yahei&#39;, 微软雅黑, stheiti, &#39;wenquanyi micro hei&#39;, simsun, sans-serif;font-size:16px;line-height:30px;text-align:center;\"><span style=\"font-size:16px;\">微信小程序推广海报</span></p><p style=\"box-sizing:border-box;margin-top:0px;margin-bottom:25px;-webkit-margin-before:1em;-webkit-margin-after:1em;color:rgba(0, 0, 0, 0.760784);font-family:&#39;hiragino sans gb&#39;, &#39;open sans&#39;, arial, &#39;microsoft yahei&#39;, 微软雅黑, stheiti, &#39;wenquanyi micro hei&#39;, simsun, sans-serif;font-size:16px;line-height:30px;\"><span style=\"font-size:16px;\">随着小程序正式上线，用户现在可以通过二维码、搜索等方式体验到开发者们开发的小程序了。</span></p><p style=\"box-sizing:border-box;margin-top:0px;margin-bottom:25px;-webkit-margin-before:1em;-webkit-margin-after:1em;color:rgba(0, 0, 0, 0.760784);font-family:&#39;hiragino sans gb&#39;, &#39;open sans&#39;, arial, &#39;microsoft yahei&#39;, 微软雅黑, stheiti, &#39;wenquanyi micro hei&#39;, simsun, sans-serif;font-size:16px;line-height:30px;\"><span style=\"font-size:16px;\">用户只要将微信更新至最新版本，体验过小程序后，便可在发现页面看到小程序TAB，但微信并不会通过这个地方向用户推荐小程序。</span></p><p style=\"box-sizing:border-box;margin-top:0px;margin-bottom:25px;-webkit-margin-before:1em;-webkit-margin-after:1em;color:rgba(0, 0, 0, 0.760784);font-family:&#39;hiragino sans gb&#39;, &#39;open sans&#39;, arial, &#39;microsoft yahei&#39;, 微软雅黑, stheiti, &#39;wenquanyi micro hei&#39;, simsun, sans-serif;font-size:16px;line-height:30px;\"><span style=\"font-size:16px;\">值得一提的是，小程序提供了显示在聊天顶部的功能，这意味着用户在使用小程序的过程中可以快速返回至聊天界面，而在聊天界面也可快速进入小程序，实现小程序与聊天之间的便捷切换。</span></p><p style=\"box-sizing:border-box;margin-top:0px;margin-bottom:25px;-webkit-margin-before:1em;-webkit-margin-after:1em;color:rgba(0, 0, 0, 0.760784);font-family:&#39;hiragino sans gb&#39;, &#39;open sans&#39;, arial, &#39;microsoft yahei&#39;, 微软雅黑, stheiti, &#39;wenquanyi micro hei&#39;, simsun, sans-serif;font-size:16px;line-height:30px;text-align:center;\"><img src=\"http://www.sharingany.com/data/upload/ueditor/20170120/5881df051ec9d.jpg\" alt=\"\" class=\"mycls\" style=\"box-sizing:border-box;border:0px;vertical-align:middle;\"/></p><p style=\"box-sizing:border-box;margin-top:0px;margin-bottom:25px;-webkit-margin-before:1em;-webkit-margin-after:1em;color:rgba(0, 0, 0, 0.760784);font-family:&#39;hiragino sans gb&#39;, &#39;open sans&#39;, arial, &#39;microsoft yahei&#39;, 微软雅黑, stheiti, &#39;wenquanyi micro hei&#39;, simsun, sans-serif;font-size:16px;line-height:30px;text-align:center;\"><span style=\"font-size:16px;\">微信小程序展示的位置</span></p><p style=\"box-sizing:border-box;margin-top:0px;margin-bottom:25px;-webkit-margin-before:1em;-webkit-margin-after:1em;color:rgba(0, 0, 0, 0.760784);font-family:&#39;hiragino sans gb&#39;, &#39;open sans&#39;, arial, &#39;microsoft yahei&#39;, 微软雅黑, stheiti, &#39;wenquanyi micro hei&#39;, simsun, sans-serif;font-size:16px;line-height:30px;\"><span style=\"font-size:16px;\">用户使用过的小程序，将以列表的方式呈现在小程序TAB中。</span></p><p style=\"box-sizing:border-box;margin-top:0px;margin-bottom:25px;-webkit-margin-before:1em;-webkit-margin-after:1em;color:rgba(0, 0, 0, 0.760784);font-family:&#39;hiragino sans gb&#39;, &#39;open sans&#39;, arial, &#39;microsoft yahei&#39;, 微软雅黑, stheiti, &#39;wenquanyi micro hei&#39;, simsun, sans-serif;font-size:16px;line-height:30px;text-align:center;\"><img src=\"http://www.sharingany.com/data/upload/ueditor/20170120/5881df051ec9d.jpg\" alt=\"\" class=\"mycls\" style=\"box-sizing:border-box;border:0px;vertical-align:middle;\"/></p><p style=\"box-sizing:border-box;margin-top:0px;margin-bottom:25px;-webkit-margin-before:1em;-webkit-margin-after:1em;color:rgba(0, 0, 0, 0.760784);font-family:&#39;hiragino sans gb&#39;, &#39;open sans&#39;, arial, &#39;microsoft yahei&#39;, 微软雅黑, stheiti, &#39;wenquanyi micro hei&#39;, simsun, sans-serif;font-size:16px;line-height:30px;text-align:center;\"><span style=\"font-size:16px;\">小程序列表</span></p><p style=\"box-sizing:border-box;margin-top:0px;margin-bottom:25px;-webkit-margin-before:1em;-webkit-margin-after:1em;color:rgba(0, 0, 0, 0.760784);font-family:&#39;hiragino sans gb&#39;, &#39;open sans&#39;, arial, &#39;microsoft yahei&#39;, 微软雅黑, stheiti, &#39;wenquanyi micro hei&#39;, simsun, sans-serif;font-size:16px;line-height:30px;\"><span style=\"font-size:16px;\">如此前微信团队介绍的一样，小程序可以分享至对话。</span></p><p style=\"box-sizing:border-box;margin-top:0px;margin-bottom:25px;-webkit-margin-before:1em;-webkit-margin-after:1em;color:rgba(0, 0, 0, 0.760784);font-family:&#39;hiragino sans gb&#39;, &#39;open sans&#39;, arial, &#39;microsoft yahei&#39;, 微软雅黑, stheiti, &#39;wenquanyi micro hei&#39;, simsun, sans-serif;font-size:16px;line-height:30px;text-align:center;\"><img src=\"http://www.sharingany.com/data/upload/ueditor/20170120/5881df051ec9d.jpg\" alt=\"\" class=\"mycls\" style=\"box-sizing:border-box;border:0px;vertical-align:middle;\"/></p><p style=\"box-sizing:border-box;margin-top:0px;margin-bottom:25px;-webkit-margin-before:1em;-webkit-margin-after:1em;color:rgba(0, 0, 0, 0.760784);font-family:&#39;hiragino sans gb&#39;, &#39;open sans&#39;, arial, &#39;microsoft yahei&#39;, 微软雅黑, stheiti, &#39;wenquanyi micro hei&#39;, simsun, sans-serif;font-size:16px;line-height:30px;text-align:center;\"><span style=\"font-size:16px;\">“自选股”小程序分享展示</span></p><p style=\"box-sizing:border-box;margin-top:0px;margin-bottom:25px;-webkit-margin-before:1em;-webkit-margin-after:1em;color:rgba(0, 0, 0, 0.760784);font-family:&#39;hiragino sans gb&#39;, &#39;open sans&#39;, arial, &#39;microsoft yahei&#39;, 微软雅黑, stheiti, &#39;wenquanyi micro hei&#39;, simsun, sans-serif;font-size:16px;line-height:30px;\"><span style=\"font-size:16px;\">安卓版用户还可将小程序添加快捷方式至桌面。</span></p><p style=\"box-sizing:border-box;margin-top:0px;margin-bottom:25px;-webkit-margin-before:1em;-webkit-margin-after:1em;color:rgba(0, 0, 0, 0.760784);font-family:&#39;hiragino sans gb&#39;, &#39;open sans&#39;, arial, &#39;microsoft yahei&#39;, 微软雅黑, stheiti, &#39;wenquanyi micro hei&#39;, simsun, sans-serif;font-size:16px;line-height:30px;\"><span style=\"font-size:16px;\">从试用结果来看，小程序整体运行顺畅，而开发者也对小程序抱以很大热情，例如猫眼电影提供了小程序体验礼包。</span></p><p style=\"box-sizing:border-box;margin-top:0px;margin-bottom:25px;-webkit-margin-before:1em;-webkit-margin-after:1em;color:rgba(0, 0, 0, 0.760784);font-family:&#39;hiragino sans gb&#39;, &#39;open sans&#39;, arial, &#39;microsoft yahei&#39;, 微软雅黑, stheiti, &#39;wenquanyi micro hei&#39;, simsun, sans-serif;font-size:16px;line-height:30px;\"><span style=\"font-size:16px;\">在体验了自选股、美团外卖、猫眼电影、滴滴公交查询几个小程序后，可以感受出，开发者将APP中最核心的功能在小程序中做了保留，对一些功能则进行了舍弃。</span></p><p style=\"box-sizing:border-box;margin-top:0px;margin-bottom:25px;-webkit-margin-before:1em;-webkit-margin-after:1em;color:rgba(0, 0, 0, 0.760784);font-family:&#39;hiragino sans gb&#39;, &#39;open sans&#39;, arial, &#39;microsoft yahei&#39;, 微软雅黑, stheiti, &#39;wenquanyi micro hei&#39;, simsun, sans-serif;font-size:16px;line-height:30px;\"><span style=\"font-size:16px;\">比如滴滴出行小程序，仅保留了叫车功能，而APP中的地图、出行方式选择、用户界面、商城等功能都被舍弃掉了。</span></p><p style=\"box-sizing:border-box;margin-top:0px;margin-bottom:25px;-webkit-margin-before:1em;-webkit-margin-after:1em;color:rgba(0, 0, 0, 0.760784);font-family:&#39;hiragino sans gb&#39;, &#39;open sans&#39;, arial, &#39;microsoft yahei&#39;, 微软雅黑, stheiti, &#39;wenquanyi micro hei&#39;, simsun, sans-serif;font-size:16px;line-height:30px;text-align:center;\"><img src=\"http://www.sharingany.com/data/upload/ueditor/20170120/5881df051ec9d.jpg\" alt=\"\" class=\"mycls\" style=\"box-sizing:border-box;border:0px;vertical-align:middle;\"/></p><p style=\"box-sizing:border-box;margin-top:0px;margin-bottom:25px;-webkit-margin-before:1em;-webkit-margin-after:1em;color:rgba(0, 0, 0, 0.760784);font-family:&#39;hiragino sans gb&#39;, &#39;open sans&#39;, arial, &#39;microsoft yahei&#39;, 微软雅黑, stheiti, &#39;wenquanyi micro hei&#39;, simsun, sans-serif;font-size:16px;line-height:30px;text-align:center;\"><span style=\"font-size:16px;\">滴滴出行小程序界面</span></p><p style=\"box-sizing:border-box;margin-top:0px;margin-bottom:25px;-webkit-margin-before:1em;-webkit-margin-after:1em;color:rgba(0, 0, 0, 0.760784);font-family:&#39;hiragino sans gb&#39;, &#39;open sans&#39;, arial, &#39;microsoft yahei&#39;, 微软雅黑, stheiti, &#39;wenquanyi micro hei&#39;, simsun, sans-serif;font-size:16px;line-height:30px;\"><span style=\"font-size:16px;\">自选股小程序对APP功能做了相对更多的保留，仅舍弃了“资讯”作为独立板块，而保留了自选、行情、设置三个主要功能板块。并且提供了与APP中一致的股价提醒等功能，分享具体股票页面，好友点击查看到的是实时股价信息，体验非常完整。</span></p><p style=\"box-sizing:border-box;margin-top:0px;margin-bottom:25px;-webkit-margin-before:1em;-webkit-margin-after:1em;color:rgba(0, 0, 0, 0.760784);font-family:&#39;hiragino sans gb&#39;, &#39;open sans&#39;, arial, &#39;microsoft yahei&#39;, 微软雅黑, stheiti, &#39;wenquanyi micro hei&#39;, simsun, sans-serif;font-size:16px;line-height:30px;text-align:center;\"><img src=\"http://www.sharingany.com/data/upload/ueditor/20170120/5881df051ec9d.jpg\" alt=\"\" class=\"mycls\" style=\"box-sizing:border-box;border:0px;vertical-align:middle;\"/></p><p style=\"box-sizing:border-box;margin-top:0px;margin-bottom:25px;-webkit-margin-before:1em;-webkit-margin-after:1em;color:rgba(0, 0, 0, 0.760784);font-family:&#39;hiragino sans gb&#39;, &#39;open sans&#39;, arial, &#39;microsoft yahei&#39;, 微软雅黑, stheiti, &#39;wenquanyi micro hei&#39;, simsun, sans-serif;font-size:16px;line-height:30px;text-align:center;\"><span style=\"font-size:16px;\">左为自选股小程序界面，右为自选股APP界面</span></p><p style=\"box-sizing:border-box;margin-top:0px;margin-bottom:25px;-webkit-margin-before:1em;-webkit-margin-after:1em;color:rgba(0, 0, 0, 0.760784);font-family:&#39;hiragino sans gb&#39;, &#39;open sans&#39;, arial, &#39;microsoft yahei&#39;, 微软雅黑, stheiti, &#39;wenquanyi micro hei&#39;, simsun, sans-serif;font-size:16px;line-height:30px;\"><span style=\"font-size:16px;\">微信团队此前提到的公众号关联功能在当前的公众号主页已经能够体现。</span></p><p style=\"box-sizing:border-box;margin-top:0px;margin-bottom:25px;-webkit-margin-before:1em;-webkit-margin-after:1em;color:rgba(0, 0, 0, 0.760784);font-family:&#39;hiragino sans gb&#39;, &#39;open sans&#39;, arial, &#39;microsoft yahei&#39;, 微软雅黑, stheiti, &#39;wenquanyi micro hei&#39;, simsun, sans-serif;font-size:16px;line-height:30px;\"><span style=\"font-size:16px;\">在开发了小程序的公众号主页上，能够看到该主体开发的小程序，点击即可进入相应小程序。由于处于同一账号体系下，公众号关注者可以更低的成本转化为小程序的用户。</span></p><p style=\"box-sizing:border-box;margin-top:0px;margin-bottom:25px;-webkit-margin-before:1em;-webkit-margin-after:1em;color:rgba(0, 0, 0, 0.760784);font-family:&#39;hiragino sans gb&#39;, &#39;open sans&#39;, arial, &#39;microsoft yahei&#39;, 微软雅黑, stheiti, &#39;wenquanyi micro hei&#39;, simsun, sans-serif;font-size:16px;line-height:30px;text-align:center;\"><img src=\"http://www.sharingany.com/data/upload/ueditor/20170120/5881df051ec9d.jpg\" alt=\"\" class=\"mycls\" style=\"box-sizing:border-box;border:0px;vertical-align:middle;\"/></p><p style=\"box-sizing:border-box;margin-top:0px;margin-bottom:25px;-webkit-margin-before:1em;-webkit-margin-after:1em;color:rgba(0, 0, 0, 0.760784);font-family:&#39;hiragino sans gb&#39;, &#39;open sans&#39;, arial, &#39;microsoft yahei&#39;, 微软雅黑, stheiti, &#39;wenquanyi micro hei&#39;, simsun, sans-serif;font-size:16px;line-height:30px;text-align:center;\"><span style=\"font-size:16px;\">左为公众号介绍页；右为公众号主体开发的小程序</span></p><p style=\"box-sizing:border-box;margin-top:0px;margin-bottom:25px;-webkit-margin-before:1em;-webkit-margin-after:1em;color:rgba(0, 0, 0, 0.760784);font-family:&#39;hiragino sans gb&#39;, &#39;open sans&#39;, arial, &#39;microsoft yahei&#39;, 微软雅黑, stheiti, &#39;wenquanyi micro hei&#39;, simsun, sans-serif;font-size:16px;line-height:30px;\"><span style=\"font-size:16px;\">对于一些有意将公众号进行产品化的团队而言，小程序及其与公众号之间的关联将大大节省开发成本及导流成本。对于内容创业者而言也提供了不错的内容产品化工具。</span></p><p style=\"box-sizing:border-box;margin-top:0px;margin-bottom:25px;-webkit-margin-before:1em;-webkit-margin-after:1em;color:rgba(0, 0, 0, 0.760784);font-family:&#39;hiragino sans gb&#39;, &#39;open sans&#39;, arial, &#39;microsoft yahei&#39;, 微软雅黑, stheiti, &#39;wenquanyi micro hei&#39;, simsun, sans-serif;font-size:16px;line-height:30px;\"><span style=\"font-size:16px;\">结合体验及此前微信团队的介绍，小程序规则已经清晰。</span></p><p style=\"box-sizing:border-box;margin-top:0px;margin-bottom:25px;-webkit-margin-before:1em;-webkit-margin-after:1em;color:rgba(0, 0, 0, 0.760784);font-family:&#39;hiragino sans gb&#39;, &#39;open sans&#39;, arial, &#39;microsoft yahei&#39;, 微软雅黑, stheiti, &#39;wenquanyi micro hei&#39;, simsun, sans-serif;font-size:16px;line-height:30px;\"><span style=\"box-sizing:border-box;font-weight:700;font-size:16px;\">微信小程序不提供的功能</span></p><p style=\"box-sizing:border-box;margin-top:0px;margin-bottom:25px;-webkit-margin-before:1em;-webkit-margin-after:1em;color:rgba(0, 0, 0, 0.760784);font-family:&#39;hiragino sans gb&#39;, &#39;open sans&#39;, arial, &#39;microsoft yahei&#39;, 微软雅黑, stheiti, &#39;wenquanyi micro hei&#39;, simsun, sans-serif;font-size:16px;line-height:30px;\"><span style=\"font-size:16px;\">1. 小程序在微信没有集中入口。</span></p><p style=\"box-sizing:border-box;margin-top:0px;margin-bottom:25px;-webkit-margin-before:1em;-webkit-margin-after:1em;color:rgba(0, 0, 0, 0.760784);font-family:&#39;hiragino sans gb&#39;, &#39;open sans&#39;, arial, &#39;microsoft yahei&#39;, 微软雅黑, stheiti, &#39;wenquanyi micro hei&#39;, simsun, sans-serif;font-size:16px;line-height:30px;\"><span style=\"font-size:16px;\">2. 微信不会推出小程序商店，也不会向用户推荐小程序。</span></p><p style=\"box-sizing:border-box;margin-top:0px;margin-bottom:25px;-webkit-margin-before:1em;-webkit-margin-after:1em;color:rgba(0, 0, 0, 0.760784);font-family:&#39;hiragino sans gb&#39;, &#39;open sans&#39;, arial, &#39;microsoft yahei&#39;, 微软雅黑, stheiti, &#39;wenquanyi micro hei&#39;, simsun, sans-serif;font-size:16px;line-height:30px;\"><span style=\"font-size:16px;\">3. 小程序没有订阅关系，没有粉丝，只有访问，只有访问量。</span></p><p style=\"box-sizing:border-box;margin-top:0px;margin-bottom:25px;-webkit-margin-before:1em;-webkit-margin-after:1em;color:rgba(0, 0, 0, 0.760784);font-family:&#39;hiragino sans gb&#39;, &#39;open sans&#39;, arial, &#39;microsoft yahei&#39;, 微软雅黑, stheiti, &#39;wenquanyi micro hei&#39;, simsun, sans-serif;font-size:16px;line-height:30px;\"><span style=\"font-size:16px;\">4. 小程序不能推送消息。</span></p><p style=\"box-sizing:border-box;margin-top:0px;margin-bottom:25px;-webkit-margin-before:1em;-webkit-margin-after:1em;color:rgba(0, 0, 0, 0.760784);font-family:&#39;hiragino sans gb&#39;, &#39;open sans&#39;, arial, &#39;microsoft yahei&#39;, 微软雅黑, stheiti, &#39;wenquanyi micro hei&#39;, simsun, sans-serif;font-size:16px;line-height:30px;\"><span style=\"font-size:16px;\">5. 小程序不能做游戏。</span></p><p style=\"box-sizing:border-box;margin-top:0px;margin-bottom:25px;-webkit-margin-before:1em;-webkit-margin-after:1em;color:rgba(0, 0, 0, 0.760784);font-family:&#39;hiragino sans gb&#39;, &#39;open sans&#39;, arial, &#39;microsoft yahei&#39;, 微软雅黑, stheiti, &#39;wenquanyi micro hei&#39;, simsun, sans-serif;font-size:16px;line-height:30px;\"><span style=\"box-sizing:border-box;font-weight:700;font-size:16px;\">微信小程序提供的功能</span></p><p style=\"box-sizing:border-box;margin-top:0px;margin-bottom:25px;-webkit-margin-before:1em;-webkit-margin-after:1em;color:rgba(0, 0, 0, 0.760784);font-family:&#39;hiragino sans gb&#39;, &#39;open sans&#39;, arial, &#39;microsoft yahei&#39;, 微软雅黑, stheiti, &#39;wenquanyi micro hei&#39;, simsun, sans-serif;font-size:16px;line-height:30px;\"><span style=\"font-size:16px;\">1. 提供小程序页概念：支持分享当前信息，例如分享00700股票页面，好友打开时看到的是00700股票的实时信息，而无需再次启动小程序。</span></p><p style=\"box-sizing:border-box;margin-top:0px;margin-bottom:25px;-webkit-margin-before:1em;-webkit-margin-after:1em;color:rgba(0, 0, 0, 0.760784);font-family:&#39;hiragino sans gb&#39;, &#39;open sans&#39;, arial, &#39;microsoft yahei&#39;, 微软雅黑, stheiti, &#39;wenquanyi micro hei&#39;, simsun, sans-serif;font-size:16px;line-height:30px;\"><span style=\"font-size:16px;\">2. 对话分享：可以分享到对话，支持分享给单个好友及微信群。</span></p><p style=\"box-sizing:border-box;margin-top:0px;margin-bottom:25px;-webkit-margin-before:1em;-webkit-margin-after:1em;color:rgba(0, 0, 0, 0.760784);font-family:&#39;hiragino sans gb&#39;, &#39;open sans&#39;, arial, &#39;microsoft yahei&#39;, 微软雅黑, stheiti, &#39;wenquanyi micro hei&#39;, simsun, sans-serif;font-size:16px;line-height:30px;\"><span style=\"font-size:16px;\">3. 搜索查找：小程序可以被搜索，但微信会极力限制搜索能力，目前提供的搜索功能是用户可直接根据名称或品牌搜索小程序。。</span></p><p style=\"box-sizing:border-box;margin-top:0px;margin-bottom:25px;-webkit-margin-before:1em;-webkit-margin-after:1em;color:rgba(0, 0, 0, 0.760784);font-family:&#39;hiragino sans gb&#39;, &#39;open sans&#39;, arial, &#39;microsoft yahei&#39;, 微软雅黑, stheiti, &#39;wenquanyi micro hei&#39;, simsun, sans-serif;font-size:16px;line-height:30px;\"><span style=\"font-size:16px;\">4. 公众号关联：在小程序与公众号为同一开发主体的前提下，提供小程序与微信公众号之间的关联。</span></p><p style=\"box-sizing:border-box;margin-top:0px;margin-bottom:25px;-webkit-margin-before:1em;-webkit-margin-after:1em;color:rgba(0, 0, 0, 0.760784);font-family:&#39;hiragino sans gb&#39;, &#39;open sans&#39;, arial, &#39;microsoft yahei&#39;, 微软雅黑, stheiti, &#39;wenquanyi micro hei&#39;, simsun, sans-serif;font-size:16px;line-height:30px;\"><span style=\"font-size:16px;\">5. 线下扫码：提供线下提示用户附近有哪些小程序存在的功能。用户可以通过线下扫码使用，这也是微信提倡的接入方式。</span></p><p style=\"box-sizing:border-box;margin-top:0px;margin-bottom:25px;-webkit-margin-before:1em;-webkit-margin-after:1em;color:rgba(0, 0, 0, 0.760784);font-family:&#39;hiragino sans gb&#39;, &#39;open sans&#39;, arial, &#39;microsoft yahei&#39;, 微软雅黑, stheiti, &#39;wenquanyi micro hei&#39;, simsun, sans-serif;font-size:16px;line-height:30px;\"><span style=\"font-size:16px;\">6. 小程序切换：小程序支持挂起状态，即多窗口概念，用户可以把小程序先挂起，然后做别的事情，在需要这个小程序的时候可以快速调用，回到最开始的状态。</span></p><p style=\"box-sizing:border-box;margin-top:0px;margin-bottom:25px;-webkit-margin-before:1em;-webkit-margin-after:1em;color:rgba(0, 0, 0, 0.760784);font-family:&#39;hiragino sans gb&#39;, &#39;open sans&#39;, arial, &#39;microsoft yahei&#39;, 微软雅黑, stheiti, &#39;wenquanyi micro hei&#39;, simsun, sans-serif;font-size:16px;line-height:30px;\"><span style=\"font-size:16px;\">7. 消息通知：商户可以发送模板消息给接受过服务的用户，用户可以在小程序内联系客服，支持文字和图片，解决用户与小程序的沟通问题。</span></p><p style=\"box-sizing:border-box;margin-top:0px;margin-bottom:25px;-webkit-margin-before:1em;-webkit-margin-after:1em;color:rgba(0, 0, 0, 0.760784);font-family:&#39;hiragino sans gb&#39;, &#39;open sans&#39;, arial, &#39;microsoft yahei&#39;, 微软雅黑, stheiti, &#39;wenquanyi micro hei&#39;, simsun, sans-serif;font-size:16px;line-height:30px;\"><span style=\"font-size:16px;\">8. 历史列表：用户使用过的小程序会被放入列表，方便下次使用。</span></p><p style=\"box-sizing:border-box;margin-top:0px;margin-bottom:25px;-webkit-margin-before:1em;-webkit-margin-after:1em;color:rgba(0, 0, 0, 0.760784);font-family:&#39;hiragino sans gb&#39;, &#39;open sans&#39;, arial, &#39;microsoft yahei&#39;, 微软雅黑, stheiti, &#39;wenquanyi micro hei&#39;, simsun, sans-serif;font-size:16px;line-height:30px;\"><span style=\"box-sizing:border-box;font-weight:700;font-size:16px;\">小程序会带来什么</span></p><p style=\"box-sizing:border-box;margin-top:0px;margin-bottom:25px;-webkit-margin-before:1em;-webkit-margin-after:1em;color:rgba(0, 0, 0, 0.760784);font-family:&#39;hiragino sans gb&#39;, &#39;open sans&#39;, arial, &#39;microsoft yahei&#39;, 微软雅黑, stheiti, &#39;wenquanyi micro hei&#39;, simsun, sans-serif;font-size:16px;line-height:30px;\"><span style=\"font-size:16px;\">出于获得初期流量红利的想法，外界对于小程序抱以热切期待。但在2016年12月28日微信公开课的公开演讲中，张小龙却给出了一个可能会让部分人失望的答案。</span></p><p style=\"box-sizing:border-box;margin-top:0px;margin-bottom:25px;-webkit-margin-before:1em;-webkit-margin-after:1em;color:rgba(0, 0, 0, 0.760784);font-family:&#39;hiragino sans gb&#39;, &#39;open sans&#39;, arial, &#39;microsoft yahei&#39;, 微软雅黑, stheiti, &#39;wenquanyi micro hei&#39;, simsun, sans-serif;font-size:16px;line-height:30px;\"><span style=\"font-size:16px;\">“很多人看到微信开始内测小程序，说应该去获得一些流量上的红利，但是那就非常遗憾，公众号在微信里面其实也没有入口，小程序也是一样的。”</span></p><p style=\"box-sizing:border-box;margin-top:0px;margin-bottom:25px;-webkit-margin-before:1em;-webkit-margin-after:1em;color:rgba(0, 0, 0, 0.760784);font-family:&#39;hiragino sans gb&#39;, &#39;open sans&#39;, arial, &#39;microsoft yahei&#39;, 微软雅黑, stheiti, &#39;wenquanyi micro hei&#39;, simsun, sans-serif;font-size:16px;line-height:30px;\"><span style=\"font-size:16px;\">做出这样的安排，与张小龙对小程序要承担的能力有关，而小程序要承担哪些能力，又基于张小龙对未来网络世界的思考。</span></p><p style=\"box-sizing:border-box;margin-top:0px;margin-bottom:25px;-webkit-margin-before:1em;-webkit-margin-after:1em;color:rgba(0, 0, 0, 0.760784);font-family:&#39;hiragino sans gb&#39;, &#39;open sans&#39;, arial, &#39;microsoft yahei&#39;, 微软雅黑, stheiti, &#39;wenquanyi micro hei&#39;, simsun, sans-serif;font-size:16px;line-height:30px;\"><span style=\"font-size:16px;\">在微信公开课PRO版一个半小时的演讲中，张小龙把大部分时间都用在阐述移动互联网的下一站是什么、小程序的特性与定位以及开发小程序的原因上，而非简单的告诉大家：小程序的规则是什么，你们应该怎样做小程序。</span></p><p style=\"box-sizing:border-box;margin-top:0px;margin-bottom:25px;-webkit-margin-before:1em;-webkit-margin-after:1em;color:rgba(0, 0, 0, 0.760784);font-family:&#39;hiragino sans gb&#39;, &#39;open sans&#39;, arial, &#39;microsoft yahei&#39;, 微软雅黑, stheiti, &#39;wenquanyi micro hei&#39;, simsun, sans-serif;font-size:16px;line-height:30px;\"><span style=\"font-size:16px;\">在张小龙看来，移动互联网的下一站是“唾手可得”。</span></p><p style=\"box-sizing:border-box;margin-top:0px;margin-bottom:25px;-webkit-margin-before:1em;-webkit-margin-after:1em;color:rgba(0, 0, 0, 0.760784);font-family:&#39;hiragino sans gb&#39;, &#39;open sans&#39;, arial, &#39;microsoft yahei&#39;, 微软雅黑, stheiti, &#39;wenquanyi micro hei&#39;, simsun, sans-serif;font-size:16px;line-height:30px;\"><span style=\"font-size:16px;\">“我们想象在这样一个虚拟未来的智能眼镜里面，你会发现应用程序已经是完全不同的形态，跟现在手机里面的应用形态是不一样的，它是一种真正的所见即所得的形态，我说的所见即所得不同于在PC时代，我们在画图或者UI上面的所见即所得，而是说我们看到的任何具体的一些事物，它就包含了它的信息，包含了对信息的处理在里面。”</span></p><p style=\"box-sizing:border-box;margin-top:0px;margin-bottom:25px;-webkit-margin-before:1em;-webkit-margin-after:1em;color:rgba(0, 0, 0, 0.760784);font-family:&#39;hiragino sans gb&#39;, &#39;open sans&#39;, arial, &#39;microsoft yahei&#39;, 微软雅黑, stheiti, &#39;wenquanyi micro hei&#39;, simsun, sans-serif;font-size:16px;line-height:30px;\"><span style=\"font-size:16px;\">张小龙表示，这就是他对于未来应用程序形态的希望：无处不在，随时访问。</span></p><p style=\"box-sizing:border-box;margin-top:0px;margin-bottom:25px;-webkit-margin-before:1em;-webkit-margin-after:1em;color:rgba(0, 0, 0, 0.760784);font-family:&#39;hiragino sans gb&#39;, &#39;open sans&#39;, arial, &#39;microsoft yahei&#39;, 微软雅黑, stheiti, &#39;wenquanyi micro hei&#39;, simsun, sans-serif;font-size:16px;line-height:30px;\"><span style=\"font-size:16px;\">事实上，从微信小程序的功能设置上也能体现出这一理念，比如支持提供线下提示用户附近有哪些小程序存在的功能，通过二维码这一入口，打通小程序与线下服务之间的界限。通过线下的二维码，实现应用程序无处不在的愿景。</span></p><p style=\"box-sizing:border-box;margin-top:0px;margin-bottom:25px;-webkit-margin-before:1em;-webkit-margin-after:1em;color:rgba(0, 0, 0, 0.760784);font-family:&#39;hiragino sans gb&#39;, &#39;open sans&#39;, arial, &#39;microsoft yahei&#39;, 微软雅黑, stheiti, &#39;wenquanyi micro hei&#39;, simsun, sans-serif;font-size:16px;line-height:30px;\"><span style=\"font-size:16px;\">知名IT评论人洪波便认为，小程序的入口不是在微信，而是在现实生活中，比如医院的挂号小程序就在医院。微信将真正实现“一个生活方式”的目标，把不同的入口分散到不同的生活场景中，拓展微信母程序的边界，让微信的想象空间更大更广。</span></p><p style=\"box-sizing:border-box;margin-top:0px;margin-bottom:25px;-webkit-margin-before:1em;-webkit-margin-after:1em;color:rgba(0, 0, 0, 0.760784);font-family:&#39;hiragino sans gb&#39;, &#39;open sans&#39;, arial, &#39;microsoft yahei&#39;, 微软雅黑, stheiti, &#39;wenquanyi micro hei&#39;, simsun, sans-serif;font-size:16px;line-height:30px;\"><span style=\"box-sizing:border-box;font-weight:700;font-size:16px;\">微信小程序诞生时间轴</span></p><p style=\"box-sizing:border-box;margin-top:0px;margin-bottom:25px;-webkit-margin-before:1em;-webkit-margin-after:1em;color:rgba(0, 0, 0, 0.760784);font-family:&#39;hiragino sans gb&#39;, &#39;open sans&#39;, arial, &#39;microsoft yahei&#39;, 微软雅黑, stheiti, &#39;wenquanyi micro hei&#39;, simsun, sans-serif;font-size:16px;line-height:30px;\"><span style=\"font-size:16px;\">1. 2016年1月9日，在微信团队的一次内部会议上，微信团队首次提出“应用号”这一设想。</span></p><p style=\"box-sizing:border-box;margin-top:0px;margin-bottom:25px;-webkit-margin-before:1em;-webkit-margin-after:1em;color:rgba(0, 0, 0, 0.760784);font-family:&#39;hiragino sans gb&#39;, &#39;open sans&#39;, arial, &#39;microsoft yahei&#39;, 微软雅黑, stheiti, &#39;wenquanyi micro hei&#39;, simsun, sans-serif;font-size:16px;line-height:30px;text-align:center;\"><img src=\"http://www.sharingany.com/data/upload/ueditor/20170120/5881df051ec9d.jpg\" alt=\"\" class=\"mycls\" style=\"box-sizing:border-box;border:0px;vertical-align:middle;\"/></p><p style=\"box-sizing:border-box;margin-top:0px;margin-bottom:25px;-webkit-margin-before:1em;-webkit-margin-after:1em;color:rgba(0, 0, 0, 0.760784);font-family:&#39;hiragino sans gb&#39;, &#39;open sans&#39;, arial, &#39;microsoft yahei&#39;, 微软雅黑, stheiti, &#39;wenquanyi micro hei&#39;, simsun, sans-serif;font-size:16px;line-height:30px;text-align:center;\"><span style=\"font-size:16px;\">微信团队内部讨论“应用号”时的合影</span></p><p style=\"box-sizing:border-box;margin-top:0px;margin-bottom:25px;-webkit-margin-before:1em;-webkit-margin-after:1em;color:rgba(0, 0, 0, 0.760784);font-family:&#39;hiragino sans gb&#39;, &#39;open sans&#39;, arial, &#39;microsoft yahei&#39;, 微软雅黑, stheiti, &#39;wenquanyi micro hei&#39;, simsun, sans-serif;font-size:16px;line-height:30px;\"><span style=\"font-size:16px;\">2. 2016年1月11日，在2016年微信公开课PRO版上，张小龙意外现身并发表演讲，表示微信的本意是做一个提供服务的平台，所以微信团队专门拆出了服务号，但服务号以提供服务为主，基于一个诉求，效果并不理想，因此“我们将开发一个新的形态，叫做应用号。”</span></p><p style=\"box-sizing:border-box;margin-top:0px;margin-bottom:25px;-webkit-margin-before:1em;-webkit-margin-after:1em;color:rgba(0, 0, 0, 0.760784);font-family:&#39;hiragino sans gb&#39;, &#39;open sans&#39;, arial, &#39;microsoft yahei&#39;, 微软雅黑, stheiti, &#39;wenquanyi micro hei&#39;, simsun, sans-serif;font-size:16px;line-height:30px;text-align:center;\"><img src=\"http://www.sharingany.com/data/upload/ueditor/20170120/5881df051ec9d.jpg\" alt=\"\" class=\"mycls\" style=\"box-sizing:border-box;border:0px;vertical-align:middle;\"/></p><p style=\"box-sizing:border-box;margin-top:0px;margin-bottom:25px;-webkit-margin-before:1em;-webkit-margin-after:1em;color:rgba(0, 0, 0, 0.760784);font-family:&#39;hiragino sans gb&#39;, &#39;open sans&#39;, arial, &#39;microsoft yahei&#39;, 微软雅黑, stheiti, &#39;wenquanyi micro hei&#39;, simsun, sans-serif;font-size:16px;line-height:30px;text-align:center;\"><span style=\"font-size:16px;\">张小龙在2016年微信公开课PRO版上意外现身并首次对外宣布将开发应用号</span></p><p style=\"box-sizing:border-box;margin-top:0px;margin-bottom:25px;-webkit-margin-before:1em;-webkit-margin-after:1em;color:rgba(0, 0, 0, 0.760784);font-family:&#39;hiragino sans gb&#39;, &#39;open sans&#39;, arial, &#39;microsoft yahei&#39;, 微软雅黑, stheiti, &#39;wenquanyi micro hei&#39;, simsun, sans-serif;font-size:16px;line-height:30px;\"><span style=\"font-size:16px;\">3. 2016年9月22日凌晨，微信公众平台开始陆续对外发送小程序内测邀请。小程序即被外界广为关注的微信“应用号”。首批内测名额在200个左右。</span></p><p style=\"box-sizing:border-box;margin-top:0px;margin-bottom:25px;-webkit-margin-before:1em;-webkit-margin-after:1em;color:rgba(0, 0, 0, 0.760784);font-family:&#39;hiragino sans gb&#39;, &#39;open sans&#39;, arial, &#39;microsoft yahei&#39;, 微软雅黑, stheiti, &#39;wenquanyi micro hei&#39;, simsun, sans-serif;font-size:16px;line-height:30px;text-align:center;\"><img src=\"http://www.sharingany.com/data/upload/ueditor/20170120/5881df051ec9d.jpg\" alt=\"\" class=\"mycls\" style=\"box-sizing:border-box;border:0px;vertical-align:middle;\"/></p><p style=\"box-sizing:border-box;margin-top:0px;margin-bottom:25px;-webkit-margin-before:1em;-webkit-margin-after:1em;color:rgba(0, 0, 0, 0.760784);font-family:&#39;hiragino sans gb&#39;, &#39;open sans&#39;, arial, &#39;microsoft yahei&#39;, 微软雅黑, stheiti, &#39;wenquanyi micro hei&#39;, simsun, sans-serif;font-size:16px;line-height:30px;text-align:center;\"><span style=\"font-size:16px;\">微信小程序内测邀请函</span></p><p style=\"box-sizing:border-box;margin-top:0px;margin-bottom:25px;-webkit-margin-before:1em;-webkit-margin-after:1em;color:rgba(0, 0, 0, 0.760784);font-family:&#39;hiragino sans gb&#39;, &#39;open sans&#39;, arial, &#39;microsoft yahei&#39;, 微软雅黑, stheiti, &#39;wenquanyi micro hei&#39;, simsun, sans-serif;font-size:16px;line-height:30px;\"><span style=\"font-size:16px;\">4. 同时张小龙在朋友圈披露其对小程序的定义：小程序是一个不需要下载安装就可使用的应用，它实现了应用触手可及的梦想，用户扫一扫或者搜一下即可打开应用。也体现了用完即走的理念，用户不用关心是否安装太多应用的问题。应用将无处不在，随时可用，但又无需安装卸载。”</span></p><p style=\"box-sizing:border-box;margin-top:0px;margin-bottom:25px;-webkit-margin-before:1em;-webkit-margin-after:1em;color:rgba(0, 0, 0, 0.760784);font-family:&#39;hiragino sans gb&#39;, &#39;open sans&#39;, arial, &#39;microsoft yahei&#39;, 微软雅黑, stheiti, &#39;wenquanyi micro hei&#39;, simsun, sans-serif;font-size:16px;line-height:30px;text-align:center;\"><img src=\"http://www.sharingany.com/data/upload/ueditor/20170120/5881df05229a6.jpg\" alt=\"\" class=\"mycls\" style=\"box-sizing:border-box;border:0px;vertical-align:middle;\"/></p><p style=\"box-sizing:border-box;margin-top:0px;margin-bottom:25px;-webkit-margin-before:1em;-webkit-margin-after:1em;color:rgba(0, 0, 0, 0.760784);font-family:&#39;hiragino sans gb&#39;, &#39;open sans&#39;, arial, &#39;microsoft yahei&#39;, 微软雅黑, stheiti, &#39;wenquanyi micro hei&#39;, simsun, sans-serif;font-size:16px;line-height:30px;text-align:center;\"><span style=\"font-size:16px;\">张小龙朋友圈截图</span></p><p style=\"box-sizing:border-box;margin-top:0px;margin-bottom:25px;-webkit-margin-before:1em;-webkit-margin-after:1em;color:rgba(0, 0, 0, 0.760784);font-family:&#39;hiragino sans gb&#39;, &#39;open sans&#39;, arial, &#39;microsoft yahei&#39;, 微软雅黑, stheiti, &#39;wenquanyi micro hei&#39;, simsun, sans-serif;font-size:16px;line-height:30px;\"><span style=\"font-size:16px;\">5. 2016年11月3日晚间，微信团队对外宣布，微信小程序开放公测，开发者可登陆微信公众平台申请，开发完成后可以提交审核，公测期间暂不能发布。</span></p><p style=\"box-sizing:border-box;margin-top:0px;margin-bottom:25px;-webkit-margin-before:1em;-webkit-margin-after:1em;color:rgba(0, 0, 0, 0.760784);font-family:&#39;hiragino sans gb&#39;, &#39;open sans&#39;, arial, &#39;microsoft yahei&#39;, 微软雅黑, stheiti, &#39;wenquanyi micro hei&#39;, simsun, sans-serif;font-size:16px;line-height:30px;text-align:center;\"><img src=\"http://www.sharingany.com/data/upload/ueditor/20170120/5881df05229a6.jpg\" alt=\"\" class=\"mycls\" style=\"box-sizing:border-box;border:0px;vertical-align:middle;\"/></p><p style=\"box-sizing:border-box;margin-top:0px;margin-bottom:25px;-webkit-margin-before:1em;-webkit-margin-after:1em;color:rgba(0, 0, 0, 0.760784);font-family:&#39;hiragino sans gb&#39;, &#39;open sans&#39;, arial, &#39;microsoft yahei&#39;, 微软雅黑, stheiti, &#39;wenquanyi micro hei&#39;, simsun, sans-serif;font-size:16px;line-height:30px;text-align:center;\"><span style=\"font-size:16px;\">小程序开放公测页面</span></p><p style=\"box-sizing:border-box;margin-top:0px;margin-bottom:25px;-webkit-margin-before:1em;-webkit-margin-after:1em;color:rgba(0, 0, 0, 0.760784);font-family:&#39;hiragino sans gb&#39;, &#39;open sans&#39;, arial, &#39;microsoft yahei&#39;, 微软雅黑, stheiti, &#39;wenquanyi micro hei&#39;, simsun, sans-serif;font-size:16px;line-height:30px;\"><span style=\"font-size:16px;\">6. 2016年12月28日，广州亚运城，在2017年微信公开课上，张小龙再次现身演讲，解答了外界关于小程序的几大疑惑，包括没有商店、没有微信入口、无法推送消息等，张小龙同时透露，希望小程序“在2017年1月9号能被用户使用”。</span></p><p style=\"box-sizing:border-box;margin-top:0px;margin-bottom:25px;-webkit-margin-before:1em;-webkit-margin-after:1em;color:rgba(0, 0, 0, 0.760784);font-family:&#39;hiragino sans gb&#39;, &#39;open sans&#39;, arial, &#39;microsoft yahei&#39;, 微软雅黑, stheiti, &#39;wenquanyi micro hei&#39;, simsun, sans-serif;font-size:16px;line-height:30px;text-align:center;\"><img src=\"http://www.sharingany.com/data/upload/ueditor/20170120/5881df05229a6.jpg\" alt=\"\" class=\"mycls\" style=\"box-sizing:border-box;border:0px;vertical-align:middle;\"/></p><p style=\"box-sizing:border-box;margin-top:0px;margin-bottom:25px;-webkit-margin-before:1em;-webkit-margin-after:1em;color:rgba(0, 0, 0, 0.760784);font-family:&#39;hiragino sans gb&#39;, &#39;open sans&#39;, arial, &#39;microsoft yahei&#39;, 微软雅黑, stheiti, &#39;wenquanyi micro hei&#39;, simsun, sans-serif;font-size:16px;line-height:30px;text-align:center;\"><span style=\"font-size:16px;\">张小龙在2017微信公开课PRO版上对外介绍小程序规则</span></p><p style=\"box-sizing:border-box;margin-top:0px;margin-bottom:25px;-webkit-margin-before:1em;-webkit-margin-after:1em;color:rgba(0, 0, 0, 0.760784);font-family:&#39;hiragino sans gb&#39;, &#39;open sans&#39;, arial, &#39;microsoft yahei&#39;, 微软雅黑, stheiti, &#39;wenquanyi micro hei&#39;, simsun, sans-serif;font-size:16px;line-height:30px;\"><span style=\"font-size:16px;\">7. 2016年12月30日，微信公众平台发布公告称，为便于商户线下推广，上线小程序二维码，最多可生成带参数二维码10000个。</span></p><p style=\"box-sizing:border-box;margin-top:0px;margin-bottom:25px;-webkit-margin-before:1em;-webkit-margin-after:1em;color:rgba(0, 0, 0, 0.760784);font-family:&#39;hiragino sans gb&#39;, &#39;open sans&#39;, arial, &#39;microsoft yahei&#39;, 微软雅黑, stheiti, &#39;wenquanyi micro hei&#39;, simsun, sans-serif;font-size:16px;line-height:30px;\"><span style=\"font-size:16px;\">8. 2017年1月9日凌晨，微信小程序正式上线。</span></p><p style=\"box-sizing:border-box;margin-top:0px;margin-bottom:25px;-webkit-margin-before:1em;-webkit-margin-after:1em;color:rgba(0, 0, 0, 0.760784);font-family:&#39;hiragino sans gb&#39;, &#39;open sans&#39;, arial, &#39;microsoft yahei&#39;, 微软雅黑, stheiti, &#39;wenquanyi micro hei&#39;, simsun, sans-serif;font-size:16px;line-height:30px;text-align:center;\"><span style=\"box-sizing:border-box;font-size:16px;\">·END· <br/></span></p><p><br/></p>', '【微信小程序】小程序怎么玩？你需要知道的都在这里了', '小程序怎么玩？', '1', '1', '2017-01-16 00:00:00', '', '0', '0', '', '0', '{\"thumb\":\"5881f3f444ef7.png\",\"photo\":[{\"url\":\"5881e0257686c.png\",\"alt\":\"111\"}]}', '226', '0', '1', '1', '', '', '', '', '1', '0000-00-00', '', '', '', '', '', '');
INSERT INTO `com_posts` VALUES ('8', '1', '互联网+  传统行业', '财经网  新华网', '2016-07-22 23:08:31', '<p style=\"text-align: center; text-indent: 0;\"><img src=\"http://www.sharingany.com/data/upload/ueditor/20170120/5881f66b9cac6.jpeg\" alt=\"李克强\" border=\"0\"/></p><p>3月5日消息，第十二届全国人民代表大会第三次会议在人民大会堂举行开幕会。李克强总理提出制定“互联网+”行动计划。</p><p>李克强在政府工作报告中提出，“制定‘互联网+’行动计划，推动移动互联网、云计算、大数据、物联网等与现代制造业结合，促进电子商务、工业互联网和互联网金融健康发展，引导互联网企业拓展国际市场。”</p><p><strong>那么，什么是“互联网+”？</strong></p><p>“互联网+”战略是全国人大代表、腾讯董事会主席兼CEO马化腾今年向人大提出的四个建议之一，马化腾解释说，“互联网+”战略就是利用互联网的平台，利用信息通信技术，把互联网和包括传统行业在内的各行各业结合起来，在新的领域创造一种新的生态。</p><p>简单地说就是“互联网+XX传统行业=互联网XX行业”，虽然实际的效果绝不是简单的相加。</p><p>这样的“互联网+”的例子绝不是什么新鲜事物，比如，传统集市+互联网有了淘宝，传统百货卖场+互联网有了京东，传统银行+互联网有了支付宝，传统的红娘+互联网有了世纪佳缘，传统交通+互联网有了快的滴滴，而传统新闻+互联网有了柴静《穹顶之下》病毒式的传播。</p><p><strong>“互联网+”：是对传统产业不是颠覆，而是换代升级</strong></p><p>在通信领域，互联网+通信有了即时通信，现在几乎人人都在用即时通信App进行语音、文字甚至视频交流。然而传统运营商在面对微信这类即时通信App诞生时简直如临大敌，因为语音和短信收入大幅下滑，但现在随着互联网的发展，来自数据流量业务的收入已经大大超过语音收入的下滑，可以看出，互联网的出现并没有彻底颠覆通信行业，反而是促进了运营商进行相关业务的变革升级。</p><p>在交通领域，过去没有移动互联网，车辆运输、运营市场不敢完全放开，有了移动互联网以后，过去的交通监管方法受到很大的挑战。从国外的Uber、Lyft到国内的滴滴、快的，移动互联网催生了一批打车拼车专车软件，虽然它们在全世界不同的地方仍存在不同的争议，但它们通过把移动互联网和传统的交通出行相结合，改善了人们出行的方式，增加了车辆的使用率，推动了互联网共享经济的发展，提高了效率、减少了排放，对环境保护也做出了贡献。</p><p>在金融领域，余额宝横空出世的时候，银行觉得不可控，也有人怀疑二维码支付存在安全隐患，但随着国家对互联网金融的研究也越来越透彻，银联对二维码支付也出了标准，互联网金融得到了较为有序的发展，也得到了国家相关政策的支持和鼓励。</p><p>在零售、电子商务等领域，过去这几年都可以看到和互联网的结合，正如马化腾所言，“它是对传统行业的升级换代，不是颠覆掉传统行业。”在其中，又可以看到“特别是移动互联网对原有的传统行业起到了很大的升级换代的作用。”</p><p>事实上，“互联网+”不仅正在全面应用到第三产业，形成了诸如互联网金融、互联网交通、互联网医疗、互联网教育等新生态，而且正在向第一和第二产业渗透。马化腾表示，工业互联网正在从消费品工业向装备制造和能源、新材料等工业领域渗透，全面推动传统工业生产方式的转变；农业互联网也在从电子商务等网络销售环节向生产领域渗透，为农业带来新的机遇，提供广阔发展空间。</p><p><strong>“互联网＋”推动新兴产业地位升级</strong></p><p>中关村下一代互联网产业联盟秘书长张建宁在接受采访时表示，“互联网+”的提法是一个前所未有的高度，而“把一批新兴产业培育成主导产业”出现在总理政府工作报告中也是第一次。</p><p>张建宁表示，进入“十二五”收官之年，政府此前已经明确提出几大战略性新兴产业，但更多的提法是“培育”，是一个从无到有的过程。但近两年，特别是随着移动互联网的加速发展，云计算、大数据、物联网等新技术更快融入到传统产业、包括金融理财、打车等民生领域；以及家电等传统制造业等等，PC互联网时代升级到移动互联网时代，互联网技术与两化融合相结合会有更多看点。</p><p>在他看来，经过“十二五”信息技术的基础打造，此次总理政府工作报告对于“互联网＋”战略的提出，正是站在这个新的战略高度，来看待信息技术和传统产业的“生态融合”的全新定位。</p><p><br/></p>', '总理报告中的“互联网+”是什么？', '“互联网+”的提法是一个前所未有的高度，而“把一批新兴产业培育成主导产业”出现在总理政府工作报告中也是第一次。', '1', '1', '2017-01-18 00:00:00', '', '0', '0', '', '0', '{\"thumb\":\"5881f89db38fc.png\",\"photo\":[{\"url\":\"5881f734e5271.png\",\"alt\":\"333\"}]}', '165', '0', '1', '1', '', '', '', '', '1', '0000-00-00', '', '', '', '', '', '');
INSERT INTO `com_posts` VALUES ('9', '1', '彩票在线销售系统', '彩票在线销售系统', '2016-07-23 09:42:16', '<p><img src=\"http://www.sharingany.com/data/upload/ueditor/20170821/599a8d68a1d5b.png\" title=\"图片.png\" alt=\"图片.png\"/></p><p><img src=\"http://www.sharingany.com/data/upload/ueditor/20170821/599a8d98740ef.png\" title=\"图片.png\" alt=\"图片.png\"/></p><p><img src=\"http://www.sharingany.com/data/upload/ueditor/20170821/599a8dae689d4.png\" title=\"图片.png\" alt=\"图片.png\"/></p><p><img src=\"http://www.sharingany.com/data/upload/ueditor/20170821/599a8dcddedeb.png\" title=\"图片.png\" alt=\"图片.png\"/></p><p><img src=\"http://www.sharingany.com/data/upload/ueditor/20170821/599a8e0cad476.png\" title=\"图片.png\" alt=\"图片.png\"/></p>', '彩票在线销售系统', '技术驱动商业创新|研发符合企业需求的产品', '0', '1', '2016-07-23 09:40:01', '', '0', '0', '', '0', '{\"thumb\":\"599676a70b926.jpg\"}', '84', '0', '0', '0', '', '', '', '', '1', '0000-00-00', '', '', '', '', '', '');
INSERT INTO `com_posts` VALUES ('10', '1', ' B2C商城 B2B2C O2O商城', '众享网络科技', '2016-07-23 09:42:57', '<p><span style=\"font-size: 36px;\">&nbsp; &nbsp;&nbsp;<img src=\"http://www.sharingany.com/data/upload/ueditor/20170829/59a52f9738f0a.jpg\" title=\"1_02.jpg\" alt=\"1_02.jpg\"/></span></p><p><img style=\"margin-top:88px;\" src=\"http://www.sharingany.com/data/upload/ueditor/20170829/59a5318a947e2.jpg\" title=\"1_05.jpg\" alt=\"1_05.jpg\"/></p><p><img style=\"margin-top:88px;\" src=\"http://www.sharingany.com/data/upload/ueditor/20170829/59a5302038f0a.jpg\" title=\"1_07.jpg\" alt=\"1_07.jpg\"/></p><p><img style=\"margin-top:88px;\" src=\"http://www.sharingany.com/data/upload/ueditor/20170829/59a5303790ad9.jpg\" title=\"1_09.jpg\" alt=\"1_09.jpg\"/></p><p><img style=\"margin-top:88px;\" src=\"http://www.sharingany.com/data/upload/ueditor/20170829/59a530419fefd.jpg\" title=\"1_11.jpg\" alt=\"1_11.jpg\"/></p><p><img style=\"margin-top:88px;\" src=\"http://www.sharingany.com/data/upload/ueditor/20170829/59a530a13cc13.jpg\" title=\"1_22.jpg\" alt=\"1_22.jpg\"/></p><p><br/> &nbsp;<br/> &nbsp;<br/></p>', '微电商解决方案', '小程序商城，微信商城，app商城', '1', '1', '2016-07-23 09:42:18', '', '0', '0', '', '0', '{\"thumb\":\"59967629bb0c4.png\"}', '140', '0', '0', '1', '', '', '', '', '1', '0000-00-00', '', '', '', '', '', '');
INSERT INTO `com_posts` VALUES ('11', '1', '办公租赁 O2O', '', '2016-07-23 09:43:48', '<p style=\"text-align: center;\"><span style=\"color: rgb(0, 176, 240); font-size: 36px;\">众享房产中介O2O平台</span></p><p><span style=\"color: rgb(0, 176, 240); font-size: 36px;\"></span><span style=\"color: rgb(0, 176, 240); font-size: 20px;\"><br/></span></p><p style=\"text-align: center;\"><span style=\"color: rgb(0, 176, 240); font-size: 20px;\"><span style=\"color: rgb(0, 176, 240); font-size: 20px;\">助力传统房产中介企业产业升级，</span>帮助房产中介企业快速互联网+</span></p><p><span style=\"color: rgb(0, 176, 240); font-size: 20px;\"><br/></span></p><p><span style=\"color: rgb(0, 176, 240); font-size: 20px;\"><img src=\"http://www.sharingany.com/data/upload/ueditor/20170821/599ad262db0e2.jpg\" title=\"1213123副本.jpg\" alt=\"1213123副本.jpg\"/></span></p><p><br/></p><p><img src=\"http://www.sharingany.com/data/upload/ueditor/20170821/599ad270a976d.png\" title=\"599a94c38ec2e.png\" alt=\"599a94c38ec2e.png\"/></p><p style=\"text-align: center;\"><span style=\"font-size: 24px; color: rgb(0, 176, 240);\">720度全方位全景房源，足不出户，选房源！<br/><br/></span></p><p style=\"text-align: left;\"><span style=\"color: rgb(0, 176, 240);\">（点击查看全景效果）</span> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href=\"http://wepano.hicivitas.com/598fdd76d0529f08f259513d/?from=timeline&isappinstalled=1\" target=\"_self\" title=\"查看全景效果\"><img src=\"http://www.sharingany.com/data/upload/ueditor/20170821/599add4e0d0fc.PNG\" title=\"IMG_5147.PNG\" alt=\"IMG_5147.PNG\"/></a></p><p>&nbsp;&nbsp; <br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p style=\"text-align: center;\"><span style=\"color: rgb(0, 176, 240); font-size: 20px;\">全自动全景机器人一键采集全景图，同步上传到云端</span><br/></p><p style=\"text-align: center;\"><br/></p><p><br/></p><p><img src=\"http://www.sharingany.com/data/upload/ueditor/20170821/599ad6244a18c.JPG\" title=\"IMG_4978.JPG\" alt=\"IMG_4978.JPG\"/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p>', '房产租赁O2O服务平台', '助力传统房产中介企业产业升级|帮助房产中介企业快速互联网+', '1', '1', '2016-07-23 09:42:59', '', '0', '0', '', '0', '{\"thumb\":\"5884a1c63a3a4.png\"}', '110', '0', '0', '0', '', '', '', '', '1', '0000-00-00', '', '', '', '', '', '');
INSERT INTO `com_posts` VALUES ('12', '1', '', '', '2016-07-23 15:06:15', '<p>欧尚洋品-智能养殖花盆</p>', '欧尚洋品-智能养殖花盆', '欧尚洋品-智能养殖花盆', '1', '1', '2016-07-23 15:05:51', '', '0', '0', '', '0', '{\"thumb\":\"5889e3a996d16.png\"}', '60', '0', '0', '0', '', '', '', '', '1', '0000-00-00', '', '', '', '', '', '');
INSERT INTO `com_posts` VALUES ('13', '1', '互联网+产品', '', '2016-07-24 16:24:08', '<p>互联网+产品的服务介绍</p>', '互联网+产品的服务介绍', 'B2B2C商城系统，O2O上门服务系统，众筹系统', '1', '1', '2016-07-24 16:23:31', '', '0', '2', '', '0', '{\"template\":\"successdetail\",\"thumb\":\"\"}', '0', '0', '0', '0', '', '', '', '', '1', '0000-00-00', '', '', '', '', '', '');
INSERT INTO `com_posts` VALUES ('15', '1', '上门服务O2O解决方案', '众享网络科技有限公司', '2016-12-19 16:41:59', '<p><img src=\"http://www.sharingany.com/data/upload/ueditor/20170821/599a8f513ea71.png\" title=\"图片.png\" alt=\"图片.png\"/></p><p><br/></p><p><br/></p><p style=\"text-align: center;\"><span style=\"color: rgb(0, 176, 240); font-size: 24px;\">众享O2O系统功能齐全，兼顾不同使用人群</span></p><p><span style=\"color: rgb(0, 176, 240); font-size: 24px;\"><img src=\"http://www.sharingany.com/data/upload/ueditor/20170821/599a909b019e1.png\" title=\"图片.png\" alt=\"图片.png\"/><br/></span></p><p style=\"text-align: center;\"><span style=\"color: rgb(0, 176, 240); font-size: 36px;\">系统功能说明</span><span style=\"color: rgb(0, 176, 240); font-size: 24px;\"><br/></span></p><p style=\"text-align: center;\"><span style=\"color: rgb(0, 176, 240); font-size: 24px;\"><img src=\"http://www.sharingany.com/data/upload/ueditor/20170821/599a92d35d2b9.png\" title=\"图片.png\" alt=\"图片.png\"/></span></p><p style=\"text-align: center;\"><span style=\"color: rgb(0, 176, 240); font-size: 24px;\"><img src=\"http://www.sharingany.com/data/upload/ueditor/20170821/599a92b683513.png\" title=\"图片.png\" alt=\"图片.png\"/></span></p><p style=\"text-align: center;\"><span style=\"color: rgb(0, 176, 240); font-size: 24px;\"><br/></span></p><p><span style=\"color: rgb(0, 176, 240); font-size: 24px;\"><br/></span></p><p><span style=\"color: rgb(0, 176, 240); font-size: 24px;\"><br/></span></p><p></p><p></p><p><span style=\"color: rgb(0, 176, 240); font-size: 24px;\"></span></p><p><br/></p>', '上门服务O2O解决方案', '上门服务O2O解决方案', '1', '1', '2016-12-19 16:41:37', '', '0', '', '', '0', '{\"thumb\":\"594bbfe837289.png\"}', '41', '0', '0', '0', '', '', '', '', '1', '0000-00-00', '', '', '', '', '', '');
INSERT INTO `com_posts` VALUES ('16', '1', '兴业期货财富产品管理与销售系统', '兴业期货财富产品管理与销售系统', '2016-12-19 20:59:08', '<p>期货财富产品管理与销售系统</p>', '期货产品销售管理系统', '兴业期货财富产品管理与销售系统', '1', '1', '2016-12-19 20:58:18', '', '0', '', '', '0', '{\"thumb\":\"594cd09f0d326.png\"}', '36', '0', '0', '0', '', '', '', '', '1', '0000-00-00', '', '', '', '', '', '');
INSERT INTO `com_posts` VALUES ('17', '1', ' 智能3d成像系统', '', '2016-12-19 21:33:15', '<p><img src=\"http://www.sharingany.com/data/upload/ueditor/20170210/589d767c8d903.jpeg\" style=\"\" title=\"1.jpeg\"/></p><p><img src=\"http://www.sharingany.com/data/upload/ueditor/20170210/589d767d7e4df.jpeg\" style=\"\" title=\"2.jpeg\"/></p><p><img src=\"http://www.sharingany.com/data/upload/ueditor/20170210/589d767e080c8.jpeg\" style=\"\" title=\"3.jpeg\"/></p><p><img src=\"http://www.sharingany.com/data/upload/ueditor/20170210/589d767e9160c.jpeg\" style=\"\" title=\"5.jpeg\"/></p><p><img src=\"http://www.sharingany.com/data/upload/ueditor/20170210/589d767ff0bed.jpeg\" style=\"\" title=\"7.jpeg\"/></p><p><img src=\"http://www.sharingany.com/data/upload/ueditor/20170210/589d7680137e3.jpeg\" style=\"\" title=\"6.jpeg\"/></p><p><img src=\"http://www.sharingany.com/data/upload/ueditor/20170210/589d768076acd.jpeg\" style=\"\" title=\"4.jpeg\"/></p><p><img src=\"http://www.sharingany.com/data/upload/ueditor/20170210/589d7680afe54.jpeg\" style=\"\" title=\"8.jpeg\"/></p><p><br/></p>', ' 智能3d成像系统', ' 智能3d成像系统', '1', '1', '2016-12-19 21:32:43', '', '0', '', '', '0', '{\"thumb\":\"589d76553202b.png\"}', '11', '0', '0', '0', '', '<p>&nbsp;<span style=\"font-family:&#39;Helvetica Neue&#39;;font-size:14px;\">智能3d成像系统</span></p>', '<p>&nbsp;<span style=\"font-family:&#39;Helvetica Neue&#39;;font-size:14px;\">智能3d成像系统</span></p>', '<p>&nbsp;<span style=\"font-family:&#39;Helvetica Neue&#39;;font-size:14px;\">智能3d成像系统</span></p>', '1', '0000-00-00', '', '', '', '', '', '');
INSERT INTO `com_posts` VALUES ('18', '1', '智能体温计采集系统', '智能体温计采集系统', '2016-12-19 21:34:01', '', '智能体温计采集系统', '智能体温计采集系统', '1', '1', '2016-12-19 21:33:17', '', '0', '', '', '0', '{\"thumb\":\"\"}', '16', '0', '0', '0', '', '', '', '', '1', '0000-00-00', '', '', '', '', '', '');
INSERT INTO `com_posts` VALUES ('19', '1', '智能电表抄表解决方案', '智能电表抄表解决方案', '2016-12-19 21:35:04', '', '智能电表抄表解决方案', '智能电表抄表解决方案', '1', '1', '2016-12-19 21:34:03', '', '0', '', '', '0', '{\"thumb\":\"\"}', '14', '0', '0', '0', '', '', '', '', '1', '0000-00-00', '', '', '', '', '', '');
INSERT INTO `com_posts` VALUES ('20', '1', '水利监测行业解决方案', '水利监测行业解决方案', '2016-12-19 21:36:18', '', '水利监测行业解决方案', '水利监测行业解决方案', '1', '1', '2016-12-19 21:35:06', '', '0', '', '', '0', '{\"thumb\":\"598da653041fa.png\"}', '20', '0', '0', '0', '', '', '', '', '1', '0000-00-00', '', '', '', '', '', '');
INSERT INTO `com_posts` VALUES ('21', '1', ' 数码防伪溯源解决方案', ' 数码防伪溯源解决方案', '2016-12-19 21:37:05', '<p><img src=\"http://www.sharingany.com/data/upload/ueditor/20170811/598d840a6b1ed.png\" style=\"\" title=\"hg2_b1.png\"/></p><p><span style=\"font-size: 36px;\"><br/></span></p><p style=\"text-align: center;\"><span style=\"font-size: 36px;\">他们都在用，<span style=\"font-size: 36px; color: rgb(255, 0, 0);\">你还在等什么呢？</span></span></p><p><span style=\"font-size: 36px;\"><span style=\"font-size: 36px; color: rgb(255, 0, 0);\"><br/></span></span></p><p><img src=\"http://www.sharingany.com/data/upload/ueditor/20170811/598d840a76908.png\" style=\"\" title=\"hg3_b1.png\"/></p><p><img src=\"http://www.sharingany.com/data/upload/ueditor/20170811/598d840a89a35.jpg\" style=\"\" title=\"1445516887976024992.jpg\"/></p><p></p><p><br/></p>', '数码防伪技术解决方案', ' 数码防伪溯源解决方案', '1', '1', '2016-12-19 21:36:20', '', '0', '', '', '0', '{\"thumb\":\"598d82c7a827d.png\"}', '44', '0', '0', '0', '', '', '', '', '1', '0000-00-00', '', '', '', '', '', '');
INSERT INTO `com_posts` VALUES ('22', '1', '跨境电商系统解决方案', '跨境电商系统解决方案', '2016-12-19 22:06:07', '<p>内容。。。<br/></p>', '跨境电商系统解决方案', '跨境电商系统解决方案', '1', '1', '2016-12-19 22:05:47', '', '0', '', '', '0', '{\"thumb\":\"5881ff911af94.png\"}', '47', '0', '0', '0', '<p><img src=\"http://www.sharingany.com/data/upload/ueditor/20170120/58820472dd85f.png\" title=\"111221.png\" alt=\"111221.png\"/></p>', '<p><img src=\"http://www.sharingany.com/data/upload/ueditor/20170120/58820b69bb30e.png\" title=\"31231.png\" alt=\"31231.png\"/></p>', '<p>功能模块细分<br/></p>', '<p>个性化定制合作流程<br/></p>', '1', '0000-00-00', '', '', '', '', '', '');
INSERT INTO `com_posts` VALUES ('23', '1', '校园本地化生活服务平台', '校园本地化生活服务门户平台', '2016-12-19 22:09:50', '', '本地化校园生活服务平台', '校园本地化生活服务门户平台', '1', '1', '2016-12-19 22:06:09', '', '0', '', '', '0', '{\"thumb\":\"589d806a26910.png\"}', '37', '0', '0', '0', '', '', '', '', '1', '0000-00-00', '', '', '', '', '', '');
INSERT INTO `com_posts` VALUES ('24', '1', '新零售商超O2O平台', '众享智联网络科技有限公司', '2016-12-19 22:12:33', '<p style=\"text-align: center;\"><span style=\"font-size: 36px; color: rgb(0, 176, 240); font-family: 微软雅黑, &#39;Microsoft YaHei&#39;;\">新零售商超O2O平台</span><br/></p><p><img src=\"http://sharingany.com/data/upload/ueditor/20170830/59a639f4c6157.jpg\" title=\"未标题-1_02.jpg\"/><br/></p><p><img src=\"http://sharingany.com/data/upload/ueditor/20170830/59a63a42c9e60.jpg\" title=\"未标题-1_04.jpg\" alt=\"未标题-1_04.jpg\"/></p><p><img src=\"http://sharingany.com/data/upload/ueditor/20170830/59a63a506e588.jpg\" title=\"未标题-1_06.jpg\" alt=\"未标题-1_06.jpg\"/></p><p><img src=\"http://sharingany.com/data/upload/ueditor/20170830/59a63a621e3cb.jpg\" title=\"未标题-1_08.jpg\" alt=\"未标题-1_08.jpg\"/></p><p><img src=\"http://sharingany.com/data/upload/ueditor/20170830/59a63a86a790f.jpg\" title=\"未标题-1_09.jpg\" alt=\"未标题-1_09.jpg\"/></p><p><span style=\"font-size: 24px;\"><span style=\"font-size: 24px; color: rgb(0, 176, 240);\"></span></span></p>', '新零售商超O2O平台', '新零售商超O2O平台，类似朴朴超市', '1', '1', '2016-12-19 22:09:51', '', '0', '', '', '0', '{\"thumb\":\"59969bcd5f41b.png\"}', '68', '0', '0', '1', '', '', '', '', '1', '0000-00-00', '', '', '', '', '', '');
INSERT INTO `com_posts` VALUES ('25', '1', '社区O2O生活服务平台', '社区O2O生活服务平台', '2016-12-19 22:16:58', '<p>本地化城市生活服务平台</p>', '本地化生活服务平台', '社区O2O生活服务平台', '1', '1', '2016-12-19 22:16:07', '', '0', '', '', '0', '{\"thumb\":\"594bc141cfbf1.png\"}', '30', '0', '0', '0', '<p>城市本地化生活服务门户平台</p>', '<p>城市本地化生活服务门户平台</p>', '<p>城市本地化生活服务门户平台v城市本地化生活服务门户平台</p>', '<p>城市本地化生活服务门户平台</p>', '1', '0000-00-00', '', '', '', '', '', '');
INSERT INTO `com_posts` VALUES ('26', '1', '连锁门店O2O服务系统', '连锁门店O2O服务系统', '2016-12-19 22:19:51', '<p>连锁门店O2O服务系统</p>', '连锁门店O2O服务系统', '连锁门店O2O服务系统,案例：甜心美甲', '1', '1', '2016-12-19 22:19:15', '', '0', '', '', '0', '{\"thumb\":\"5896d74995315.png\"}', '83', '0', '0', '0', '<p>连锁门店O2O服务系统</p>', '<p>连锁门店O2O服务系统</p>', '<p>连锁门店O2O服务系统</p>', '<p>连锁门店O2O服务系统</p>', '1', '0000-00-00', '', '', '', '', '', '');
INSERT INTO `com_posts` VALUES ('27', '1', '直销系统', '直销系统', '2016-12-19 22:22:31', '<h1 style=\"text-align: center;\"><span style=\"color: rgb(0, 176, 240);\">众享直销系统 一个灵活的销售管理体系</span></h1><p><br/></p><p><img src=\"http://www.sharingany.com/data/upload/ueditor/20170821/599a8574595b0.png\" title=\"图片.png\" alt=\"图片.png\"/></p><p><br/></p><p><br/></p><p style=\"text-align: center;\"><span style=\"color: rgb(0, 176, 240); font-size: 24px;\">他们都在用，你还在等什么呢？</span></p><p><br/></p><p><span style=\"color: rgb(0, 176, 240); font-size: 24px;\"><img src=\"http://www.sharingany.com/data/upload/ueditor/20170821/599a865fc05a3.png\" title=\"图片.png\" alt=\"图片.png\"/><br/></span></p><p style=\"text-align: center;\"><span style=\"font-size: 24px; color: rgb(0, 176, 240);\">直销系统功能预览<br/></span></p><p><span style=\"color: rgb(0, 176, 240); font-size: 20px;\"><br/></span></p><p style=\"text-align: center;\"><span style=\"color: rgb(0, 176, 240); font-size: 20px;\">系统后台：</span></p><p style=\"text-align: center;\"><span style=\"color: rgb(0, 176, 240); font-size: 20px;\"></span><img src=\"http://www.sharingany.com/data/upload/ueditor/20170821/599a88b9703e6.png\" title=\"图片.png\" alt=\"图片.png\"/></p><p style=\"text-align: center;\"><br/></p><p style=\"text-align: center;\"><span style=\"font-size: 20px; color: rgb(0, 176, 240);\">会员后台：</span></p><p><br/></p><p><img src=\"http://www.sharingany.com/data/upload/ueditor/20170821/599a892677df8.png\" title=\"图片.png\" alt=\"图片.png\"/><span style=\"color: rgb(0, 176, 240); font-size: 24px;\"></span></p>', '直销系统', '创新的直销模式，灵活的销售管理体系，快速搭建全网直销体系', '1', '1', '2016-12-19 22:19:53', '', '0', '', '', '0', '{\"thumb\":\"598d7fb0674e4.png\"}', '51', '0', '0', '0', '', '', '', '', '1', '0000-00-00', '', '', '', '', '', '');
INSERT INTO `com_posts` VALUES ('28', '1', '智能全景解决方案', '', '2016-12-28 16:14:34', '', '智能全景解决方案', '智能全景解决方案，提供便捷的全景采集，全景云端存储，云端service接口', '1', '1', '2016-12-28 16:03:55', '', '0', '', '', '0', '{\"thumb\":\"5966f1a125060.png\"}', '47', '0', '0', '0', '', '', '', '', '1', '0000-00-00', '', '', '', '', '', '');
INSERT INTO `com_posts` VALUES ('29', '1', '', '', '2016-12-28 16:23:18', '', 'ISO9000移动办公系统方案', '移动化，无纸化办公，遵循ISO9000质量管理标准', '1', '1', '2016-12-28 16:22:45', '', '0', '', '', '0', '{\"thumb\":\"\"}', '3', '0', '0', '0', '', '', '', '', '1', '0000-00-00', '', '', '', '', '', '');
INSERT INTO `com_posts` VALUES ('30', '1', '', '', '2016-12-28 16:30:22', '', '鞋业ERP系统', '使整个生产过程全方位自动化，远程监控化。提高生产管理水平，降低管理成本。', '1', '1', '2016-12-28 16:26:23', '', '0', '', '', '0', '{\"thumb\":\"\"}', '15', '0', '0', '0', '', '', '', '', '1', '0000-00-00', '', '', '', '', '', '');
INSERT INTO `com_posts` VALUES ('31', '1', '', '', '2016-12-28 16:37:45', '', '在线会议系统', '在线会议系统', '1', '1', '2016-12-28 16:30:27', '', '0', '', '', '0', '{\"thumb\":\"\"}', '1', '0', '0', '0', '', '', '', '', '1', '0000-00-00', '', '', '', '', '', '');
INSERT INTO `com_posts` VALUES ('32', '1', '', '', '2016-12-28 16:39:08', '', '农村电商解决方案', '电商系统，冷链运输，检验检疫，物流运输，大数据分析等全方位解决方案', '1', '1', '2016-12-28 16:37:48', '', '0', '', '', '0', '{\"thumb\":\"\"}', '26', '0', '0', '0', '', '', '', '', '1', '0000-00-00', '', '', '', '', '', '');
INSERT INTO `com_posts` VALUES ('33', '1', '', '', '2017-01-20 11:55:14', '', 'Web前端开发实习生', '', '1', '1', '2017-01-20 11:50:21', '', '0', '', '', '0', '{\"thumb\":\"\"}', '0', '0', '0', '0', '', '', '', '', '4', '2017-03-31', '', '<p>1.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 熟悉HTML/CSS/Javascript等前端技术；</p><p>2.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 一定的沟通能力、灵活应变能力、学习能力；</p><p>3.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 较好的团队协作精神；</p><p>4.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 大专以上学历，计算机专业，专业基础扎实，较强的自学能力；<br/></p>', '', '<br/><p>1.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 参与公司产品webapp和pcweb前端的编码开发；</p><p>2.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 页面维护和前端性能做相应的优化；&nbsp;</p><p>3.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 很好的与交互及视觉设计师协作；</p><p>4.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 按照需求完成指定模块编码工作；</p><p>5.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 公司现运行项目的问题修订及功能升级。</p><p><br/></p>', '福州', '');
INSERT INTO `com_posts` VALUES ('34', '1', '', '', '2017-01-20 12:06:58', '', 'java开发工程师', '', '1', '1', '2017-01-20 11:57:14', '', '0', '', '', '0', '{\"thumb\":\"\"}', '0', '0', '0', '1', '', '', '', '', '5', '2017-05-01', '推荐奖500红包', '<p>1、计算机软件或相关专业，大专或以上学历；</p><p>2、具有良好的面向对象编程思想，熟悉设计模式及UML建模；</p><p>3、1年以上相关经验，熟练掌握Java编程，熟悉J2EE架构，熟练使用spring,springmvc,mybatis等框架；</p><p>4、熟悉Apache Tomcat应用服务器，能在Linux下搭建J2EE开发环境；</p><p>5、使用Mysql或Oracle数据库1年以上；</p><p>6、掌握HTML+DIV+CSS的web页面布局，具有AJAX、XML、Javascript等客户端编写经验；</p><p>7、熟悉分布式系统架构设计，熟悉java、Linux、前端技能、移动开发，开源项目者优先；<br/>8、有优秀的学习能力，能快速的掌握各种新知识，并能积极的分享知识带动团队成长。</p>', '<p>职位月薪：<strong>6000-12000元/月 &nbsp; &nbsp; 项目奖金与抽成<br/></strong></p>', '<p>1、负责完成应用系统软件产品服务端框架代码开发、技术选型、架构设计、编码开发、重构；</p><p>2、参与系统安全性、可用性、扩展性、稳定性等方面提出解决方案；<br/>3、对软件需求进行分析，细化系统相关的接口或协议的定义。</p><p>4、参与公司产品webapp和pcweb前端的技术选型、架构设计、编码开发、重构；<br/>5、负责前端团队的组建和培养，与其他端沟通协调；<br/>6、根据产品开发进度和任务分配，能够独立按时且高质量地完成编码和单元测试工作；<br/>7、坚持把自己当成产品经理，参与每个sprint工作任务的制定，轮流做master。</p>', '福州', '');
INSERT INTO `com_posts` VALUES ('35', '1', '', '', '2017-01-20 15:21:43', '', 'java开发实习生', '', '1', '1', '2017-01-20 15:11:02', '', '0', '', '', '0', '{\"thumb\":\"\"}', '0', '0', '0', '0', '', '', '', '', '5', '2017-07-01', '', '<p>1.协助项目部开发人员完成互联网软件开发任务，工作积极主动，有责任心；</p><p>2.在工开发人员的帮助下完成架构和模块设计、编码、开发新功能，单元测试，集成测试；</p><p>3.负责相关技术文档的编写，完成领导安排的其他工作；</p><p><br/></p><p><br/></p>', '<p>职位月薪：<strong>1000-2500元/月</strong></p><p><strong><br/></strong></p>', '<p>1、计算机相关专业，有JAVA开发实际项目开发经验2017年毕业实习生；</p><p>2、具有扎实的Java编程基础，熟练使用ssh框架，具备一定针对这些框架的调优能力；</p><p>3、有基于数据库开发高性能，高可用数据应用的经验（有参与缓存、nosql经验者优先），能够使用linux操作系统；</p><p>4、具备独立完成模块的系统分析，详细设计和编码任务，确保项目的进度和质量；</p><p>5、具备良好的识别和设计通用模块的能力；</p><p>6、热爱技术工作，工作严谨细致，对系统质量有近乎苛刻的要求意识，善于沟通与团队协作。</p><p><br/></p>', '福州', '');
INSERT INTO `com_posts` VALUES ('36', '1', '', '', '2017-01-20 16:23:26', '', '产品策划实习生', '', '1', '1', '2017-01-20 16:19:07', '', '0', '', '', '0', '{\"thumb\":\"\"}', '0', '0', '0', '0', '', '', '', '', '2', '2017-06-01', '', '<p>1、对互联网产品有浓厚兴趣，计算机相关专业毕业，大专以上学历。</p><p>2、能较熟练操作Axure，Viso，&nbsp;MindManager，Photoshop和office办公软件；</p><p>3、良好的沟通协调技巧和团队合作意识。</p><p>4、能够清楚、有效传递和表达自己的想法及产品需求，有与研发、设计人员合作的经验者优先。</p><p>5、思路清晰、逻辑思维能力强、积极、有责任感、性格外向、有耐心，有团队合作精神。</p><p><br/></p>', '', '<p>1、&nbsp;负责产品售前支持工作，包括与客户沟通，了解客户需求，进行市场调研及竞品分析。</p><p>2、&nbsp;参与客户产品规划，为客户的产品制定初步的版本计划。</p><p>3、&nbsp;按版本计划制定产品前后台功能脑图。</p><p>4、&nbsp;制作产品流程图及原形。</p><p>5、&nbsp;管理产品开发进程，协同团队其他成员全程产品全生命周期相关工作；</p><p>6、制作前后台操作手册、用户使用手册等，协助市场部人员完成产品验收工作。</p><p>7、协助产品经理处理以上工作。<br/></p>', '福州', '');
INSERT INTO `com_posts` VALUES ('37', '1', '', '', '2017-01-20 18:06:18', '<p>一路上城市生活O2O平台</p>', '一路上城市生活O2O平台', '一路上城市生活O2O平台', '1', '1', '2017-01-20 18:06:11', '', '0', '', '', '0', '{\"thumb\":\"5889e6dc52274.png\"}', '56', '0', '0', '1', '', '', '', '', '1', '0000-00-00', '', '', '', '', '', '');
INSERT INTO `com_posts` VALUES ('38', '1', '', '', '2017-01-20 19:13:13', '<p>21212<br/></p>', '007电商案例', '007彩票在线销售系统', '1', '1', '2017-01-20 19:12:50', '', '0', '', '', '0', '{\"thumb\":\"5889e499020b7.png\"}', '26', '0', '0', '0', '', '', '', '', '1', '0000-00-00', '', '', '', '', '', '');
INSERT INTO `com_posts` VALUES ('39', '1', '微信小程序 ', '梅花网', '2017-01-20 19:56:18', '<p style=\"margin-top:32px;margin-bottom:0px;padding:0px;font-size:18px;text-indent:2em;font-stretch:normal;line-height:32px;font-family:&#39;microsoft yahei&#39;;color:#404040;text-align:justify;\"><span style=\"font-size:16px;\">1月9日，微信小程序正式上线。区别于传统的手机APP，微信小程序是一种无须安装即可使用的手机应用，不同的小程序实现不同的功能，比如：买电影票、餐厅排号、餐馆点菜、公交查询、股票信息查询、天气查询、酒店预订等。用户在微信中使用这些功能，触手可及，用完即走、无须卸载。</span></p><center style=\"color:#404040;font-family:&#39;microsoft yahei&#39;;font-size:18px;line-height:32px;\"></center><p style=\"margin-top:32px;margin-bottom:0px;padding:0px;font-size:18px;text-indent:2em;font-stretch:normal;line-height:32px;font-family:&#39;microsoft yahei&#39;;color:#404040;text-align:justify;\"><span style=\"font-size:16px;\">“删繁就简、开示来学”，实现服务流程和内容的集成和整合，虽然这只是微信迈出的一小步，但这或许将开启移动互联网内容形态的新时代。用户从此可以和那些使用频率很低，“安装即死”的鸡肋型手机APP说再见了。</span></p><center style=\"color:#404040;font-family:&#39;microsoft yahei&#39;;font-size:18px;line-height:32px;\"></center><p style=\"margin-top:32px;margin-bottom:0px;padding:0px;font-size:18px;text-indent:2em;font-stretch:normal;line-height:32px;font-family:&#39;microsoft yahei&#39;;color:#404040;text-align:justify;\"><span style=\"font-size:16px;\">不过或许是因为推出伊始，各种小程序还处在抢位阶段，很多功能并不完善，笔者对微信小程序试用后，总体感觉难言满意。</span></p><center style=\"color:#404040;font-family:&#39;microsoft yahei&#39;;font-size:18px;line-height:32px;\"></center><center style=\"color:#404040;font-family:&#39;microsoft yahei&#39;;font-size:18px;line-height:32px;\"><img alt=\"\" src=\"http://cms-bucket.nosdn.127.net/catchpic/e/e1/e1bd50950d925f39fd0c01165dbd33df.jpg?imageView&thumbnail=550x0\" style=\"vertical-align:top;border:0px;\" width=\"222\" height=\"350\"/></center><center style=\"color:#404040;font-family:&#39;microsoft yahei&#39;;font-size:18px;line-height:32px;\"><p style=\"margin-top:26px;margin-bottom:26px;padding:0px;font-size:16px;text-indent:2em;\"><span style=\"font-size:16px;\">图1：目前的今日头条小程序功能相对简陋</span></p></center><p style=\"margin-top:32px;margin-bottom:0px;padding:0px;font-size:18px;text-indent:2em;font-stretch:normal;line-height:32px;font-family:&#39;microsoft yahei&#39;;color:#404040;text-align:justify;\"><span style=\"font-size:16px;\">以今日头条小程序为例，呈现在笔者面前的界面相对简陋了许多，笔者最看重的分类资讯不见了踪影，虽然下拉界面，新闻资讯会刷新，但是刷新出来的内容大多为笔者没兴趣注目观看的，笔者看重的评论功能也尚未开放，这和笔者使用今日头条APP的体验相去甚远。</span></p><center style=\"color:#404040;font-family:&#39;microsoft yahei&#39;;font-size:18px;line-height:32px;\"></center><center style=\"color:#404040;font-family:&#39;microsoft yahei&#39;;font-size:18px;line-height:32px;\"><img alt=\"\" src=\"http://cms-bucket.nosdn.127.net/catchpic/c/cd/cdc44b2858b6c64ebadbd25014285818.jpg?imageView&thumbnail=550x0\" style=\"vertical-align:top;border:0px;\" width=\"219\" height=\"352\"/></center><center style=\"color:#404040;font-family:&#39;microsoft yahei&#39;;font-size:18px;line-height:32px;\"><p style=\"margin-top:26px;margin-bottom:26px;padding:0px;font-size:16px;text-indent:2em;\"><span style=\"font-size:16px;\">图2：目前滴滴出行小程序还不能提供实时车辆位置</span></p></center><p style=\"margin-top:32px;margin-bottom:0px;padding:0px;font-size:18px;text-indent:2em;font-stretch:normal;line-height:32px;font-family:&#39;microsoft yahei&#39;;color:#404040;text-align:justify;\"><span style=\"font-size:16px;\">再以滴滴出行小程序为例，虽然说简约为美，但小程序版的滴滴出行没有地图和车辆位置，用户难免心生不安全感。此外，小程序版滴滴依然需要登录滴滴自有账号体系，不支持微信登录。</span></p><center style=\"color:#404040;font-family:&#39;microsoft yahei&#39;;font-size:18px;line-height:32px;\"></center><center style=\"color:#404040;font-family:&#39;microsoft yahei&#39;;font-size:18px;line-height:32px;\"><img alt=\"\" src=\"http://cms-bucket.nosdn.127.net/catchpic/b/b8/b80c45130fad3649cf2b6a7102a13c51.jpg?imageView&thumbnail=550x0\" style=\"vertical-align:top;border:0px;\" width=\"199\" height=\"319\"/></center><center style=\"color:#404040;font-family:&#39;microsoft yahei&#39;;font-size:18px;line-height:32px;\"><p style=\"margin-top:26px;margin-bottom:26px;padding:0px;font-size:16px;text-indent:2em;\"><span style=\"font-size:16px;\">图3：一些小程序还无法通过模糊搜索找到</span></p></center><p style=\"margin-top:32px;margin-bottom:0px;padding:0px;font-size:18px;text-indent:2em;font-stretch:normal;line-height:32px;font-family:&#39;microsoft yahei&#39;;color:#404040;text-align:justify;\"><span style=\"font-size:16px;\">此外，由于上线之初，模糊搜索功能尚不完备，很多相关小程序还是无法通过搜索来找到。</span></p><center style=\"color:#404040;font-family:&#39;microsoft yahei&#39;;font-size:18px;line-height:32px;\"></center><p style=\"margin-top:32px;margin-bottom:0px;padding:0px;font-size:18px;text-indent:2em;font-stretch:normal;line-height:32px;font-family:&#39;microsoft yahei&#39;;color:#404040;text-align:justify;\"><span style=\"font-size:16px;\">总体来说，看过了几个小程序，笔者并没有太大的使用欲望，那些抱着把功能从移动版复制到小程序的人，或许错会了小程序的初衷。对于开发者而言，淡化入口的设计对他们并不友好，对于用户而言，现在的小程序远未到可谈体验的地步，并不能给用户带来“眼前一亮”的惊艳感觉。</span></p><center style=\"color:#404040;font-family:&#39;microsoft yahei&#39;;font-size:18px;line-height:32px;\"></center><p style=\"margin-top:32px;margin-bottom:0px;padding:0px;font-size:18px;text-indent:2em;font-stretch:normal;line-height:32px;font-family:&#39;microsoft yahei&#39;;color:#404040;text-align:justify;\"><span style=\"font-size:16px;\">无独有偶，就在微信小程序内测函放出两周之前，360手机浏览器的“轻应用”项目就已经启动。最新版本的360手机浏览器8.0版提供了包括生活、娱乐、社交、购物、理财在内的各类常用的轻应用，基础SDK仅800Kb，无需下载、即开即用，使用体验与原生应用几乎一致。</span></p><center style=\"color:#404040;font-family:&#39;microsoft yahei&#39;;font-size:18px;line-height:32px;\"></center><center style=\"color:#404040;font-family:&#39;microsoft yahei&#39;;font-size:18px;line-height:32px;\"><img alt=\"\" src=\"http://cms-bucket.nosdn.127.net/catchpic/8/8d/8d757c8fddd6b4fe20478229df5f71a5.jpg?imageView&thumbnail=550x0\" style=\"vertical-align:top;border:0px;\" width=\"209\" height=\"331\"/></center><center style=\"color:#404040;font-family:&#39;microsoft yahei&#39;;font-size:18px;line-height:32px;\"><p style=\"margin-top:26px;margin-bottom:26px;padding:0px;font-size:16px;text-indent:2em;\"><span style=\"font-size:16px;\">图4:360手机浏览器8.0采用轻桌面设计</span></p></center><p style=\"margin-top:32px;margin-bottom:0px;padding:0px;font-size:18px;text-indent:2em;font-stretch:normal;line-height:32px;font-family:&#39;microsoft yahei&#39;;color:#404040;text-align:justify;\"><span style=\"font-size:16px;\">笔者打开360手机浏览器8.0版，呈现在眼前的是一个轻桌面，除了顶栏的搜索/网址输入框，笔者可以随意添加门户站点、社交、生活工具、视频、游戏等等多个导航站点，与其它第三方浏览器不同，这些站点应用是全部可删的，你可以把它们全部清空，也可以放满你的轻桌面。</span></p><center style=\"color:#404040;font-family:&#39;microsoft yahei&#39;;font-size:18px;line-height:32px;\"></center><center style=\"color:#404040;font-family:&#39;microsoft yahei&#39;;font-size:18px;line-height:32px;\"><img alt=\"\" src=\"http://cms-bucket.nosdn.127.net/catchpic/0/05/05b22f9ed1ce3142873c50e1de6996a5.jpg?imageView&thumbnail=550x0\" style=\"vertical-align:top;border:0px;\" width=\"245\" height=\"332\"/></center><center style=\"color:#404040;font-family:&#39;microsoft yahei&#39;;font-size:18px;line-height:32px;\"><p style=\"margin-top:26px;margin-bottom:26px;padding:0px;font-size:16px;text-indent:2em;\"><span style=\"font-size:16px;\">图5:360手机浏览器轻应用可以为手机“瘦身”</span></p></center><p style=\"margin-top:32px;margin-bottom:0px;padding:0px;font-size:18px;text-indent:2em;font-stretch:normal;line-height:32px;font-family:&#39;microsoft yahei&#39;;color:#404040;text-align:justify;\"><span style=\"font-size:16px;\">在实际使用过程中，笔者发现，小程序成为了介于网页端和App端之间的工具，解决了用户低频刚需的应用不必下载的麻烦。设想一个场景，当你在餐厅吃饭，恰好发现这家餐厅在大众点评上有活动，可以优惠买单，如果让你当时下载app会不会觉得麻烦而放弃?而打开360手机浏览器8.0，点击应用中的“点评外卖”，就可以直接免登陆购买优惠券，是不是就会方便许多?类似地，如果是其他平台的优惠，都可以通过360手机浏览器8.0快速获得，而不必下载满屏的app，这可能就是这些轻应用小程序存在的价值吧。</span></p><center style=\"color:#404040;font-family:&#39;microsoft yahei&#39;;font-size:18px;line-height:32px;\"></center><p style=\"margin-top:32px;margin-bottom:0px;padding:0px;font-size:18px;text-indent:2em;font-stretch:normal;line-height:32px;font-family:&#39;microsoft yahei&#39;;color:#404040;text-align:justify;\"><span style=\"font-size:16px;\">轻应用虽然不能完全取代App端，但对于一些平时不常用的app而言，的确免掉了统统都要下载的麻烦，从而节省了手机空间，也节省了在紧急时刻获取内容的时间。而选择什么样的轻应用，其实也最能体现用户的个人习惯。</span></p><center style=\"color:#404040;font-family:&#39;microsoft yahei&#39;;font-size:18px;line-height:32px;\"></center><center style=\"color:#404040;font-family:&#39;microsoft yahei&#39;;font-size:18px;line-height:32px;\"><img alt=\"\" src=\"http://cms-bucket.nosdn.127.net/catchpic/c/c7/c7f1faa7bdfdc815f1fa76b2bd565d8e.jpg?imageView&thumbnail=550x0\" style=\"vertical-align:top;border:0px;\" width=\"211\" height=\"315\"/></center><p style=\"margin-top:26px;margin-bottom:26px;padding:0px;font-size:16px;text-indent:2em;\"><span style=\"font-size:16px;\">图6：360手机浏览器海量轻应用</span></p><p style=\"margin-top:32px;margin-bottom:0px;padding:0px;text-indent:2em;font-stretch:normal;text-align:justify;\"><span style=\"font-size:16px;\">笔者还发现，目前360手机浏览器轻应用库中，已经涵盖了主流常用的手机应用，可以满足大多数用户日常使用。</span></p><center></center><p style=\"margin-top:32px;margin-bottom:0px;padding:0px;text-indent:2em;font-stretch:normal;text-align:justify;\"><span style=\"font-size:16px;\">因此，笔者认为：移动互联网时代信息泛滥，用户往往被海量信息资讯迷惑，繁杂的手机应用非但不能给用户带来更多方便，反而成了用户手机中臃肿的负担。无论是微信小程序还是360手机浏览器轻应用，他们秉承的“简约为美，删繁就简”的理念将为后续互联网产品开发者提供指导方向。</span></p><p><br/></p>', '移动互联网行业要变天？微信和360竟然都悄然上线了小程序', '移动互联网行业要变天？微信和360竟然都悄然上线了小程序', '1', '1', '2017-01-20 19:54:25', '', '0', '', '', '0', '{\"thumb\":\"5881fa8cb7605.png\"}', '45', '0', '0', '0', '', '', '', '', '1', '0000-00-00', '', '', '', '', '', '');
INSERT INTO `com_posts` VALUES ('40', '1', '微信小程序  机会', '众享科技', '2017-01-20 20:04:45', '<p style=\"box-sizing:border-box;border:0px;font-family:&#39;pingfang sc&#39;, &#39;hiragino sans gb&#39;, &#39;microsoft yahei&#39;, stheiti, &#39;wenquanyi micro hei&#39;, helvetica, arial, sans-serif;font-size:16px;margin-top:0px;margin-bottom:15px;outline:0px;padding:0px;vertical-align:baseline;color:#666666;line-height:28.8px;\"><img data-action=\"zoom\" class=\"size-full wp-image-574246 aligncenter\" src=\"http://www.sharingany.com/data/upload/ueditor/20170120/5881fcd33d4e5.jpg\" alt=\"\" style=\"box-sizing:border-box;max-width:100%;height:auto;outline:none;border:none;margin-left:auto;margin-right:auto;display:block;cursor:pointer;\" width=\"680\" height=\"320\"/></p><p style=\"box-sizing:border-box;border:0px;font-family:&#39;pingfang sc&#39;, &#39;hiragino sans gb&#39;, &#39;microsoft yahei&#39;, stheiti, &#39;wenquanyi micro hei&#39;, helvetica, arial, sans-serif;font-size:16px;margin-top:0px;margin-bottom:15px;outline:0px;padding:0px;vertical-align:baseline;color:#666666;line-height:28.8px;\"><span style=\"font-size:16px;\">微信近两年来除了发力微信红包和支付外，在产品功能层面一直没做太多的更新。按照产品正常的生命周期来分析，大家都认为微信基本只剩下维护和衰退的可能，所以很多产品社区网站都在探讨颠覆微信的下一代产品是什么。</span></p><p style=\"box-sizing:border-box;border:0px;font-family:&#39;pingfang sc&#39;, &#39;hiragino sans gb&#39;, &#39;microsoft yahei&#39;, stheiti, &#39;wenquanyi micro hei&#39;, helvetica, arial, sans-serif;font-size:16px;margin-top:0px;margin-bottom:15px;outline:0px;padding:0px;vertical-align:baseline;color:#666666;line-height:28.8px;\"><span style=\"font-size:16px;\">但其实了解微信的人都知道，他们花了很长时间在布一个大局，你肯定会说这个局就是小程序，但其实远不止于此。微信的未来肯定会打造一个更宏观的战略生态，不单只是入口，这也得益于腾讯的战略观和生态布局。各位看官，具体听我慢慢道来…</span></p><p style=\"box-sizing:border-box;border:0px;font-family:&#39;pingfang sc&#39;, &#39;hiragino sans gb&#39;, &#39;microsoft yahei&#39;, stheiti, &#39;wenquanyi micro hei&#39;, helvetica, arial, sans-serif;font-size:16px;margin-top:0px;margin-bottom:15px;outline:0px;padding:0px;vertical-align:baseline;color:#666666;line-height:28.8px;\"><span style=\"font-size:16px;\">小程序作为微信这个自带聚光灯平台下的产品，一经发布曝光，受到了极大的关注和讨论，掀起了全行业性波澜。</span></p><p style=\"box-sizing:border-box;border:0px;font-family:&#39;pingfang sc&#39;, &#39;hiragino sans gb&#39;, &#39;microsoft yahei&#39;, stheiti, &#39;wenquanyi micro hei&#39;, helvetica, arial, sans-serif;font-size:16px;margin-top:0px;margin-bottom:15px;outline:0px;padding:0px;vertical-align:baseline;color:#666666;line-height:28.8px;\"><span style=\"font-size:16px;\">那腾讯为什么要做个小程序呢？他的出发点和战略目的是什么呢？</span></p><h2 style=\"box-sizing:border-box;border-width:0px 0px 1px;border-bottom-style:solid;border-bottom-color:#eeeeee;font-family:&#39;pingfang sc&#39;, &#39;hiragino sans gb&#39;, &#39;microsoft yahei&#39;, stheiti, &#39;wenquanyi micro hei&#39;, helvetica, arial, sans-serif;font-size:18px;margin:30px 0px 20px;outline:0px;padding:0px 0px 8px;vertical-align:baseline;color:#333333;\"><span style=\"font-size:16px;color:#000000;\">一、小程序的缘起</span></h2><p style=\"box-sizing:border-box;border:0px;font-family:&#39;pingfang sc&#39;, &#39;hiragino sans gb&#39;, &#39;microsoft yahei&#39;, stheiti, &#39;wenquanyi micro hei&#39;, helvetica, arial, sans-serif;font-size:16px;margin-top:0px;margin-bottom:15px;outline:0px;padding:0px;vertical-align:baseline;color:#666666;line-height:28.8px;\"><span style=\"box-sizing:border-box;font-weight:700;font-size:16px;\">1.在信息繁杂的时代让信息获取的唾手可得</span></p><p style=\"box-sizing:border-box;border:0px;font-family:&#39;pingfang sc&#39;, &#39;hiragino sans gb&#39;, &#39;microsoft yahei&#39;, stheiti, &#39;wenquanyi micro hei&#39;, helvetica, arial, sans-serif;font-size:16px;margin-top:0px;margin-bottom:15px;outline:0px;padding:0px;vertical-align:baseline;color:#666666;line-height:28.8px;\"><span style=\"font-size:16px;\">在谈到做小程序的初衷时候，张小龙谈到了PC时代的信息，他认为在电脑浏览器上用户可以快速切换网站获取信息，根本不需要下载东西。而对比手机，用户切换的成本很高，普通用户最长用的就是那么几个应用（对应的是获取信息入口）。微信考虑的其实就是如何在单一入口内给用户提供更多信息和服务，这一点一旦做好就会把用户很好留在自己闭环的生态APP里。</span></p><p style=\"box-sizing:border-box;border:0px;font-family:&#39;pingfang sc&#39;, &#39;hiragino sans gb&#39;, &#39;microsoft yahei&#39;, stheiti, &#39;wenquanyi micro hei&#39;, helvetica, arial, sans-serif;font-size:16px;margin-top:0px;margin-bottom:15px;outline:0px;padding:0px;vertical-align:baseline;color:#666666;line-height:28.8px;\"><span style=\"font-size:16px;\">如果仅考虑到这一点还不算什么，最多只能做个百度的直达号。微信想要的远非如此。</span></p><p style=\"box-sizing:border-box;border:0px;font-family:&#39;pingfang sc&#39;, &#39;hiragino sans gb&#39;, &#39;microsoft yahei&#39;, stheiti, &#39;wenquanyi micro hei&#39;, helvetica, arial, sans-serif;font-size:16px;margin-top:0px;margin-bottom:15px;outline:0px;padding:0px;vertical-align:baseline;color:#666666;line-height:28.8px;\"><span style=\"font-size:16px;\">另外张小龙认为在移动互联时代的下一站——智能时代，我们访问网络的形态可能是类似眼镜式的智能端，我们获取信息最重要的一点就是所见即所得——看到的事物自然就包含了它的信息，和它的处理程序。到那时的网络环境下，信息是唾手可得的。他举了两个例子，比如我想开关一个灯，戴着这个眼镜看到灯，它上面就会出现一个开关的小程序，你可以用眼镜去控制它。而当你走到公园门口，你可能会看到一个公园售票的小程序。</span></p><p style=\"box-sizing:border-box;border:0px;font-family:&#39;pingfang sc&#39;, &#39;hiragino sans gb&#39;, &#39;microsoft yahei&#39;, stheiti, &#39;wenquanyi micro hei&#39;, helvetica, arial, sans-serif;font-size:16px;margin-top:0px;margin-bottom:15px;outline:0px;padding:0px;vertical-align:baseline;color:#666666;line-height:28.8px;\"><span style=\"font-size:16px;\">可见，作为微信小程序要探索实现的就是一方面就是像在浏览器切换网站一样快速地把不同的信息在用户需要时呈现给他们，另一方面怎么样更直接把你和所见的事物关联起来。用户无需下载就自动出现该场景下的信息和小程序。</span></p><p style=\"box-sizing:border-box;border:0px;font-family:&#39;pingfang sc&#39;, &#39;hiragino sans gb&#39;, &#39;microsoft yahei&#39;, stheiti, &#39;wenquanyi micro hei&#39;, helvetica, arial, sans-serif;font-size:16px;margin-top:0px;margin-bottom:15px;outline:0px;padding:0px;vertical-align:baseline;color:#666666;line-height:28.8px;\"><span style=\"box-sizing:border-box;font-weight:700;font-size:16px;\">2.设立线下入口，通过二维码连接线上和线下</span></p><p style=\"box-sizing:border-box;border:0px;font-family:&#39;pingfang sc&#39;, &#39;hiragino sans gb&#39;, &#39;microsoft yahei&#39;, stheiti, &#39;wenquanyi micro hei&#39;, helvetica, arial, sans-serif;font-size:16px;margin-top:0px;margin-bottom:15px;outline:0px;padding:0px;vertical-align:baseline;color:#666666;line-height:28.8px;\"><span style=\"font-size:16px;\">说到人和到事物的直接连接，就很好地介入到了线下场景。张小龙还曾谈到了餐馆吃饭的例子，用户在餐馆排队点菜，根本不需要下载这个餐馆的应用程序，而是直接扫描一个二维码就可以点菜，吃完之后也不需要卸载。</span></p><p style=\"box-sizing:border-box;border:0px;font-family:&#39;pingfang sc&#39;, &#39;hiragino sans gb&#39;, &#39;microsoft yahei&#39;, stheiti, &#39;wenquanyi micro hei&#39;, helvetica, arial, sans-serif;font-size:16px;margin-top:0px;margin-bottom:15px;outline:0px;padding:0px;vertical-align:baseline;color:#666666;line-height:28.8px;\"><span style=\"font-size:16px;\">想到线下一方面是连接人和物的必然。另外线上用户的时间都已经被微信占据很多，而线下还是一片蓝海，这个时候和用户分享线下时间是一种极具战略眼光的选择。用户时间和注意力依然是都在抢占的焦点。</span></p><p style=\"box-sizing:border-box;border:0px;font-family:&#39;pingfang sc&#39;, &#39;hiragino sans gb&#39;, &#39;microsoft yahei&#39;, stheiti, &#39;wenquanyi micro hei&#39;, helvetica, arial, sans-serif;font-size:16px;margin-top:0px;margin-bottom:15px;outline:0px;padding:0px;vertical-align:baseline;color:#666666;line-height:28.8px;\"><span style=\"font-size:16px;\">从这两点可以看出，微信的出发点就是想做一个能够让用户短路径低成本获取信息，切同时便捷连接线上和线下的工具，通过这个工具让信息让获取更智能化。</span></p><p style=\"box-sizing:border-box;border:0px;font-family:&#39;pingfang sc&#39;, &#39;hiragino sans gb&#39;, &#39;microsoft yahei&#39;, stheiti, &#39;wenquanyi micro hei&#39;, helvetica, arial, sans-serif;font-size:16px;margin-top:0px;margin-bottom:15px;outline:0px;padding:0px;vertical-align:baseline;color:#666666;line-height:28.8px;\"><span style=\"font-size:16px;\">这是做小程序的初衷，那在略层面应该怎么考虑呢？其实微信远不至于做一个（获取信息的）工具。</span></p><h2 style=\"box-sizing:border-box;border-width:0px 0px 1px;border-bottom-style:solid;border-bottom-color:#eeeeee;font-family:&#39;pingfang sc&#39;, &#39;hiragino sans gb&#39;, &#39;microsoft yahei&#39;, stheiti, &#39;wenquanyi micro hei&#39;, helvetica, arial, sans-serif;font-size:18px;margin:30px 0px 20px;outline:0px;padding:0px 0px 8px;vertical-align:baseline;color:#333333;\"><span style=\"font-size:16px;color:#000000;\">二、从连接商业服务到连接一切的战略</span></h2><p style=\"box-sizing:border-box;border:0px;font-family:&#39;pingfang sc&#39;, &#39;hiragino sans gb&#39;, &#39;microsoft yahei&#39;, stheiti, &#39;wenquanyi micro hei&#39;, helvetica, arial, sans-serif;font-size:16px;margin-top:0px;margin-bottom:15px;outline:0px;padding:0px;vertical-align:baseline;color:#666666;line-height:28.8px;\"><span style=\"box-sizing:border-box;border:0px;font-family:inherit;font-style:inherit;font-weight:700;margin:0px;outline:0px;padding:0px;vertical-align:baseline;font-size:16px;\">1.从链接人与人、人与服务到连接商业</span></p><p style=\"box-sizing:border-box;border:0px;font-family:&#39;pingfang sc&#39;, &#39;hiragino sans gb&#39;, &#39;microsoft yahei&#39;, stheiti, &#39;wenquanyi micro hei&#39;, helvetica, arial, sans-serif;font-size:16px;margin-top:0px;margin-bottom:15px;outline:0px;padding:0px;vertical-align:baseline;color:#666666;line-height:28.8px;\"><span style=\"font-size:16px;\">马化腾在14年乌镇互联网大会上就提出了“连接一切”的战略口号，大家当时的理解是微信作为超级APP会做各种服务和应用APP的入口，其他的靠未来智能设备来做，当时腾讯做的车联网投入很多，现在也不知道具体做到什么地步了。其实这个局远没有这么简单，如阿禅在小程序想要什么里分析的那样，连接一切分为以下几个阶段：</span></p><ol style=\"box-sizing:border-box;border:0px;font-family:&#39;pingfang sc&#39;, &#39;hiragino sans gb&#39;, &#39;microsoft yahei&#39;, stheiti, &#39;wenquanyi micro hei&#39;, helvetica, arial, sans-serif;font-size:16px;margin:0px 0px 28px;outline:0px;padding:0px;vertical-align:baseline;list-style-position:inside;color:rgba(0, 0, 0, 0.8);line-height:28.8px;\"><li style=\"\"><p><span style=\"font-size:16px;\">连接人与人</span></p></li><li style=\"\"><p><span style=\"font-size:16px;\">连接人与服务</span></p></li><li style=\"\"><p><span style=\"font-size:16px;\">连接人与商业</span></p></li><li style=\"\"><p><span style=\"font-size:16px;\">连接人与物</span></p></li></ol><p style=\"box-sizing:border-box;border:0px;font-family:&#39;pingfang sc&#39;, &#39;hiragino sans gb&#39;, &#39;microsoft yahei&#39;, stheiti, &#39;wenquanyi micro hei&#39;, helvetica, arial, sans-serif;font-size:16px;margin-top:0px;margin-bottom:15px;outline:0px;padding:0px;vertical-align:baseline;color:#666666;line-height:28.8px;\"><span style=\"font-size:16px;\">其实连接人与人是微信的基础功能——即时通讯（IM）＋朋友圈（社交）来实现的，目前日活用户已经有超过\r\n 8 \r\n亿的微信几乎每个有手机的中国人，可见这个目标已经实现。连接任何服务靠众多的服务号来实现的，同时微信还为几个战略合作伙伴提供了入口，用户可以在这里获取一些社交、娱乐、购物、本地生活等服务。</span></p><p style=\"box-sizing:border-box;border:0px;font-family:&#39;pingfang sc&#39;, &#39;hiragino sans gb&#39;, &#39;microsoft yahei&#39;, stheiti, &#39;wenquanyi micro hei&#39;, helvetica, arial, sans-serif;font-size:16px;margin-top:0px;margin-bottom:15px;outline:0px;padding:0px;vertical-align:baseline;color:#666666;line-height:28.8px;\"><span style=\"font-size:16px;\">而连接人与商业的连接就靠小程序了。比如每个商家都在微信建一个属于自己的小程序，那就这么说，连接线上和线下就可以解读为连接人与商业。</span></p><p style=\"box-sizing:border-box;border:0px;font-family:&#39;pingfang sc&#39;, &#39;hiragino sans gb&#39;, &#39;microsoft yahei&#39;, stheiti, &#39;wenquanyi micro hei&#39;, helvetica, arial, sans-serif;font-size:16px;margin-top:0px;margin-bottom:15px;outline:0px;padding:0px;vertical-align:baseline;color:#666666;line-height:28.8px;\"><span style=\"font-size:16px;\">这一点你通过小程序的图标样式都能看出来——“连接”的含义，甚至还有点无穷大的意味。</span></p><p style=\"box-sizing:border-box;border:0px;font-family:&#39;pingfang sc&#39;, &#39;hiragino sans gb&#39;, &#39;microsoft yahei&#39;, stheiti, &#39;wenquanyi micro hei&#39;, helvetica, arial, sans-serif;font-size:16px;margin-top:0px;margin-bottom:15px;outline:0px;padding:0px;vertical-align:baseline;color:#666666;line-height:28.8px;\"><span style=\"box-sizing:border-box;font-weight:700;font-size:16px;\">2.不久，微信和支付宝必有一战</span></p><p style=\"box-sizing:border-box;border:0px;font-family:&#39;pingfang sc&#39;, &#39;hiragino sans gb&#39;, &#39;microsoft yahei&#39;, stheiti, &#39;wenquanyi micro hei&#39;, helvetica, arial, sans-serif;font-size:16px;margin-top:0px;margin-bottom:15px;outline:0px;padding:0px;vertical-align:baseline;color:#666666;line-height:28.8px;\"><span style=\"font-size:16px;\">我可以再延伸解读（纯属臆测）一下，微信如果成了万千商家小程序的入驻平台和入口，也就会是一个成为了一个真正意义的商业平台，那对谁的威胁最大呢？在中国提到商业，这块版图你最先会想到那家互联网公司呢？</span></p><p style=\"box-sizing:border-box;border:0px;font-family:&#39;pingfang sc&#39;, &#39;hiragino sans gb&#39;, &#39;microsoft yahei&#39;, stheiti, &#39;wenquanyi micro hei&#39;, helvetica, arial, sans-serif;font-size:16px;margin-top:0px;margin-bottom:15px;outline:0px;padding:0px;vertical-align:baseline;color:#666666;line-height:28.8px;\"><span style=\"font-size:16px;\">对，那肯定是阿里巴巴。阿里巴巴旗下有2C的电子商务：淘宝，有本地生活：口碑网，还有以支付宝为首的蚂蚁金服。</span></p><p style=\"box-sizing:border-box;border:0px;font-family:&#39;pingfang sc&#39;, &#39;hiragino sans gb&#39;, &#39;microsoft yahei&#39;, stheiti, &#39;wenquanyi micro hei&#39;, helvetica, arial, sans-serif;font-size:16px;margin-top:0px;margin-bottom:15px;outline:0px;padding:0px;vertical-align:baseline;color:#666666;line-height:28.8px;\"><span style=\"font-size:16px;\">再想想微信有什么：小程序、微信支付、微信理财通。</span></p><p style=\"box-sizing:border-box;border:0px;font-family:&#39;pingfang sc&#39;, &#39;hiragino sans gb&#39;, &#39;microsoft yahei&#39;, stheiti, &#39;wenquanyi micro hei&#39;, helvetica, arial, sans-serif;font-size:16px;margin-top:0px;margin-bottom:15px;outline:0px;padding:0px;vertical-align:baseline;color:#666666;line-height:28.8px;\"><span style=\"font-size:16px;\">商业服务＋支付，这个时候一定会是微信干过支付宝，支付的一条腿已经迈开，下面就看商业服务了</span></p><p style=\"box-sizing:border-box;border:0px;font-family:&#39;pingfang sc&#39;, &#39;hiragino sans gb&#39;, &#39;microsoft yahei&#39;, stheiti, &#39;wenquanyi micro hei&#39;, helvetica, arial, sans-serif;font-size:16px;margin-top:0px;margin-bottom:15px;outline:0px;padding:0px;vertical-align:baseline;color:#666666;line-height:28.8px;\"><span style=\"font-size:16px;\">所以这个局的第一层就是接下来一两年微信和支付宝必有一战。当然这个战争的力度和范围，完全取决于微信小程序的推广和普及程度</span></p><p style=\"box-sizing:border-box;border:0px;font-family:&#39;pingfang sc&#39;, &#39;hiragino sans gb&#39;, &#39;microsoft yahei&#39;, stheiti, &#39;wenquanyi micro hei&#39;, helvetica, arial, sans-serif;font-size:16px;margin-top:0px;margin-bottom:15px;outline:0px;padding:0px;vertical-align:baseline;color:#666666;line-height:28.8px;\"><span style=\"box-sizing:border-box;font-weight:700;font-size:16px;\">3.围剿与反围剿——两强相遇勇者胜</span></p><p style=\"box-sizing:border-box;border:0px;font-family:&#39;pingfang sc&#39;, &#39;hiragino sans gb&#39;, &#39;microsoft yahei&#39;, stheiti, &#39;wenquanyi micro hei&#39;, helvetica, arial, sans-serif;font-size:16px;margin-top:0px;margin-bottom:15px;outline:0px;padding:0px;vertical-align:baseline;color:#666666;line-height:28.8px;\"><span style=\"font-size:16px;\">明年支付宝依然会在社交上有大动作，你可以想想，现在你都在什么情况下会用到支付宝？应用频率是怎样？一天几次？一周几次还是一个月几次？每次使用多长时间？主要做些什么？</span></p><p style=\"box-sizing:border-box;border:0px;font-family:&#39;pingfang sc&#39;, &#39;hiragino sans gb&#39;, &#39;microsoft yahei&#39;, stheiti, &#39;wenquanyi micro hei&#39;, helvetica, arial, sans-serif;font-size:16px;margin-top:0px;margin-bottom:15px;outline:0px;padding:0px;vertical-align:baseline;color:#666666;line-height:28.8px;\"><span style=\"font-size:16px;\">以我个人为例，我每个月平均就使用四五次，多数用来还信用卡或者大额转账，从淘宝或天猫购物直接调用支付宝支付，根本不会手动打开。</span></p><p style=\"box-sizing:border-box;border:0px;font-family:&#39;pingfang sc&#39;, &#39;hiragino sans gb&#39;, &#39;microsoft yahei&#39;, stheiti, &#39;wenquanyi micro hei&#39;, helvetica, arial, sans-serif;font-size:16px;margin-top:0px;margin-bottom:15px;outline:0px;padding:0px;vertical-align:baseline;color:#666666;line-height:28.8px;\"><span style=\"font-size:16px;\">再回到微信，生活中更多的线下支付都会选择微信，比如生活中买点零食或者和同事之间吃饭钱转账都是在微信完成的。想想近一年多微信线下支付的推广，不仅能够对抗支付宝，更有超越的趋势。一个微信二维码夺走了支付宝巨大的生意，而此时又诞生的小程序会残忍到让你遗忘支付宝。</span></p><p style=\"box-sizing:border-box;border:0px;font-family:&#39;pingfang sc&#39;, &#39;hiragino sans gb&#39;, &#39;microsoft yahei&#39;, stheiti, &#39;wenquanyi micro hei&#39;, helvetica, arial, sans-serif;font-size:16px;margin-top:0px;margin-bottom:15px;outline:0px;padding:0px;vertical-align:baseline;color:#666666;line-height:28.8px;\"><span style=\"font-size:16px;\">下面看两组数据：</span></p><p style=\"box-sizing:border-box;border:0px;font-family:&#39;pingfang sc&#39;, &#39;hiragino sans gb&#39;, &#39;microsoft yahei&#39;, stheiti, &#39;wenquanyi micro hei&#39;, helvetica, arial, sans-serif;font-size:16px;margin-top:0px;margin-bottom:15px;outline:0px;padding:0px;vertical-align:baseline;color:#666666;line-height:28.8px;\"><img data-action=\"zoom\" class=\"aligncenter\" src=\"http://www.sharingany.com/data/upload/ueditor/20170120/5881fcd36373f.png\" alt=\"\" style=\"box-sizing:border-box;max-width:100%;height:auto;outline:none;border:none;margin-left:auto;margin-right:auto;display:block;cursor:pointer;\" width=\"799\" height=\"1192\"/></p><p style=\"box-sizing:border-box;border:0px;font-family:&#39;pingfang sc&#39;, &#39;hiragino sans gb&#39;, &#39;microsoft yahei&#39;, stheiti, &#39;wenquanyi micro hei&#39;, helvetica, arial, sans-serif;font-size:16px;margin-top:0px;margin-bottom:15px;outline:0px;padding:0px;vertical-align:baseline;color:#666666;line-height:28.8px;text-align:center;\"><span style=\"font-size:16px;\">从2016年行业APP活跃度排名来看：微信第1，支付宝第46，前者活跃度是后者的3倍多</span></p><p style=\"box-sizing:border-box;border:0px;font-family:&#39;pingfang sc&#39;, &#39;hiragino sans gb&#39;, &#39;microsoft yahei&#39;, stheiti, &#39;wenquanyi micro hei&#39;, helvetica, arial, sans-serif;font-size:16px;margin-top:0px;margin-bottom:15px;outline:0px;padding:0px;vertical-align:baseline;color:#666666;line-height:28.8px;\"><img data-action=\"zoom\" class=\"aligncenter\" src=\"http://www.sharingany.com/data/upload/ueditor/20170120/5881fcd38d6a2.png\" alt=\"\" style=\"text-align:center;box-sizing:border-box;max-width:100%;height:auto;outline:none;border:none;margin-left:auto;margin-right:auto;display:block;cursor:pointer;\" width=\"802\" height=\"1195\"/></p><p style=\"box-sizing:border-box;border:0px;font-family:&#39;pingfang sc&#39;, &#39;hiragino sans gb&#39;, &#39;microsoft yahei&#39;, stheiti, &#39;wenquanyi micro hei&#39;, helvetica, arial, sans-serif;font-size:16px;margin-top:0px;margin-bottom:15px;outline:0px;padding:0px;vertical-align:baseline;color:#666666;line-height:28.8px;text-align:center;\"><span style=\"font-size:16px;\">从使用时长上看微信是支付宝的近46倍</span></p><p style=\"box-sizing:border-box;border:0px;font-family:&#39;pingfang sc&#39;, &#39;hiragino sans gb&#39;, &#39;microsoft yahei&#39;, stheiti, &#39;wenquanyi micro hei&#39;, helvetica, arial, sans-serif;font-size:16px;margin-top:0px;margin-bottom:15px;outline:0px;padding:0px;vertical-align:baseline;color:#666666;line-height:28.8px;\"><span style=\"font-size:16px;\">从这些数据你就能明显看出在抢占用户时间上，微信遥遥领先支付宝。另外，毕竟很多用户也被支付宝频繁发布版本戏耍过，你肯定也对于他没有节制的粗暴社交做法苦笑不的，作为用户使用产品出发点就是用户满意度。此时微信敬业、克制的产品态度完胜了，微信的社交完胜了。再加上最近支付宝安全漏洞丑闻事件，虽然靠手段避免了事情的扩散，并及时做了处理，但用户对其形象认知也会多少发生改变。</span></p><p style=\"box-sizing:border-box;border:0px;font-family:&#39;pingfang sc&#39;, &#39;hiragino sans gb&#39;, &#39;microsoft yahei&#39;, stheiti, &#39;wenquanyi micro hei&#39;, helvetica, arial, sans-serif;font-size:16px;margin-top:0px;margin-bottom:15px;outline:0px;padding:0px;vertical-align:baseline;color:#666666;line-height:28.8px;\"><span style=\"font-size:16px;\">有人曾说过微信和支付宝是分别现在社交和金融的两端往中间跑，谁朝对方跑得快，并且能把对方挤在对方的区间里谁就是赢家，当然两强相遇必有短兵相接的一战。这一站恐怕就出现在接下来的一两年。</span></p><p style=\"box-sizing:border-box;border:0px;font-family:&#39;pingfang sc&#39;, &#39;hiragino sans gb&#39;, &#39;microsoft yahei&#39;, stheiti, &#39;wenquanyi micro hei&#39;, helvetica, arial, sans-serif;font-size:16px;margin-top:0px;margin-bottom:15px;outline:0px;padding:0px;vertical-align:baseline;color:#666666;line-height:28.8px;\"><img data-action=\"zoom\" class=\" wp-image-574242 aligncenter\" src=\"http://www.sharingany.com/data/upload/ueditor/20170120/5881fcd39cac6.png\" alt=\"\" style=\"box-sizing:border-box;max-width:100%;height:auto;outline:none;border:none;margin-left:auto;margin-right:auto;display:block;cursor:pointer;\" width=\"750\" height=\"302\"/></p><p style=\"box-sizing:border-box;border:0px;font-family:&#39;pingfang sc&#39;, &#39;hiragino sans gb&#39;, &#39;microsoft yahei&#39;, stheiti, &#39;wenquanyi micro hei&#39;, helvetica, arial, sans-serif;font-size:16px;margin-top:0px;margin-bottom:15px;outline:0px;padding:0px;vertical-align:baseline;color:#666666;line-height:28.8px;text-align:center;\"><span style=\"font-size:16px;\">微信和支付宝的对战</span></p><p style=\"box-sizing:border-box;border:0px;font-family:&#39;pingfang sc&#39;, &#39;hiragino sans gb&#39;, &#39;microsoft yahei&#39;, stheiti, &#39;wenquanyi micro hei&#39;, helvetica, arial, sans-serif;font-size:16px;margin-top:0px;margin-bottom:15px;outline:0px;padding:0px;vertical-align:baseline;color:#666666;line-height:28.8px;\"><span style=\"box-sizing:border-box;border:0px;font-family:inherit;font-style:inherit;font-weight:700;margin:0px;outline:0px;padding:0px;vertical-align:baseline;font-size:16px;\">4.通过连接一切甩掉对手</span></p><p style=\"box-sizing:border-box;border:0px;font-family:&#39;pingfang sc&#39;, &#39;hiragino sans gb&#39;, &#39;microsoft yahei&#39;, stheiti, &#39;wenquanyi micro hei&#39;, helvetica, arial, sans-serif;font-size:16px;margin-top:0px;margin-bottom:15px;outline:0px;padding:0px;vertical-align:baseline;color:#666666;line-height:28.8px;\"><span style=\"font-size:16px;\">微信小程序发展到后面可以根据地理位置或者其他智能方式，实现自动判断用户使用场景进行小程序推荐，让用户真正实现对信息的触手可得。</span></p><p style=\"box-sizing:border-box;border:0px;font-family:&#39;pingfang sc&#39;, &#39;hiragino sans gb&#39;, &#39;microsoft yahei&#39;, stheiti, &#39;wenquanyi micro hei&#39;, helvetica, arial, sans-serif;font-size:16px;margin-top:0px;margin-bottom:15px;outline:0px;padding:0px;vertical-align:baseline;color:#666666;line-height:28.8px;\"><span style=\"font-size:16px;\">当然微信（可能不限于小程序）的最高级阶段就是通过连接人与物，这个时候人和物能够直接对话，真正从手机时代步入微智能时代（微智能：作者认为未脱离手机实现的智能生活方式）。</span></p><p style=\"box-sizing:border-box;border:0px;font-family:&#39;pingfang sc&#39;, &#39;hiragino sans gb&#39;, &#39;microsoft yahei&#39;, stheiti, &#39;wenquanyi micro hei&#39;, helvetica, arial, sans-serif;font-size:16px;margin-top:0px;margin-bottom:15px;outline:0px;padding:0px;vertical-align:baseline;color:#666666;line-height:28.8px;\"><span style=\"font-size:16px;\">这时候微信就会甩掉现在在线服务、O2O以及人工智能初级阶段开展业务的所有对手。</span></p><p style=\"box-sizing:border-box;border:0px;font-family:&#39;pingfang sc&#39;, &#39;hiragino sans gb&#39;, &#39;microsoft yahei&#39;, stheiti, &#39;wenquanyi micro hei&#39;, helvetica, arial, sans-serif;font-size:16px;margin-top:0px;margin-bottom:15px;outline:0px;padding:0px;vertical-align:baseline;color:#666666;line-height:28.8px;\"><span style=\"font-size:16px;\">说说微信如何推进和改变现在的APP局面</span></p><h2 style=\"box-sizing:border-box;border-width:0px 0px 1px;border-bottom-style:solid;border-bottom-color:#eeeeee;font-family:&#39;pingfang sc&#39;, &#39;hiragino sans gb&#39;, &#39;microsoft yahei&#39;, stheiti, &#39;wenquanyi micro hei&#39;, helvetica, arial, sans-serif;font-size:18px;margin:30px 0px 20px;outline:0px;padding:0px 0px 8px;vertical-align:baseline;color:#333333;\"><span style=\"font-size:16px;color:#000000;\">三、作为操作系统——打造一个后APP时代</span></h2><p style=\"box-sizing:border-box;border:0px;font-family:&#39;pingfang sc&#39;, &#39;hiragino sans gb&#39;, &#39;microsoft yahei&#39;, stheiti, &#39;wenquanyi micro hei&#39;, helvetica, arial, sans-serif;font-size:16px;margin-top:0px;margin-bottom:15px;outline:0px;padding:0px;vertical-align:baseline;color:#666666;line-height:28.8px;\"><span style=\"font-size:16px;\">谈到小程序，绕不开张小龙对于小程序的定义：</span></p><blockquote style=\"box-sizing:border-box;border-width:1px 1px 1px 8px;border-style:solid;border-color:#eeeeee;font-family:&#39;pingfang sc&#39;, &#39;hiragino sans gb&#39;, &#39;microsoft yahei&#39;, stheiti, &#39;wenquanyi micro hei&#39;, helvetica, arial, sans-serif;font-size:16px;margin:30px 0px 20px;outline:0px;padding:10px 20px;vertical-align:baseline;quotes:none;letter-spacing:0.01rem;color:#333333;line-height:28.8px;background-color:#fafafa;\"><p style=\"box-sizing:border-box;border:0px;font-family:inherit;font-style:inherit;font-weight:inherit;margin-top:0px;margin-bottom:0px;outline:0px;padding:0px;vertical-align:baseline;color:#666666;\"><span style=\"font-size:16px;\">小程序是一种不需要下载、安装即可使用的应用，它实现了触手可及的梦想，用户扫一扫或者搜一下就能打开应用，也实现了用完即走的理念，用户不用安装太多应用，应用随处可用，但又无须安装卸载。</span></p></blockquote><p style=\"box-sizing:border-box;border:0px;font-family:&#39;pingfang sc&#39;, &#39;hiragino sans gb&#39;, &#39;microsoft yahei&#39;, stheiti, &#39;wenquanyi micro hei&#39;, helvetica, arial, sans-serif;font-size:16px;margin-top:0px;margin-bottom:15px;outline:0px;padding:0px;vertical-align:baseline;color:#666666;line-height:28.8px;\"><span style=\"font-size:16px;\">怎么理解小程序这个定义呢？</span></p><p style=\"box-sizing:border-box;border:0px;font-family:&#39;pingfang sc&#39;, &#39;hiragino sans gb&#39;, &#39;microsoft yahei&#39;, stheiti, &#39;wenquanyi micro hei&#39;, helvetica, arial, sans-serif;font-size:16px;margin-top:0px;margin-bottom:15px;outline:0px;padding:0px;vertical-align:baseline;color:#666666;line-height:28.8px;\"><span style=\"font-size:16px;\">不需要下载安装就可以使用是建立最短的连接路径，尤其是单一的目的和行为根本没必要注册，这样小程序就在线上就帮用户争取了时间，</span></p><p style=\"box-sizing:border-box;border:0px;font-family:&#39;pingfang sc&#39;, &#39;hiragino sans gb&#39;, &#39;microsoft yahei&#39;, stheiti, &#39;wenquanyi micro hei&#39;, helvetica, arial, sans-serif;font-size:16px;margin-top:0px;margin-bottom:15px;outline:0px;padding:0px;vertical-align:baseline;color:#666666;line-height:28.8px;\"><span style=\"font-size:16px;\">小程序强调线下和用户触达，扫一扫就能用是因为二维码在成本和普及率（8亿手机安装了微信）上，相比于NFC和AR有着极大的优势，所以目前阶段“二维码是现实世界和电子世界的超链接”。</span></p><p style=\"box-sizing:border-box;border:0px;font-family:&#39;pingfang sc&#39;, &#39;hiragino sans gb&#39;, &#39;microsoft yahei&#39;, stheiti, &#39;wenquanyi micro hei&#39;, helvetica, arial, sans-serif;font-size:16px;margin-top:0px;margin-bottom:15px;outline:0px;padding:0px;vertical-align:baseline;color:#666666;line-height:28.8px;\"><span style=\"font-size:16px;\">是到线下把时间还给用户，让用户把更多的时间放在线下体验上，分享用户线下时间。</span></p><p style=\"box-sizing:border-box;border:0px;font-family:&#39;pingfang sc&#39;, &#39;hiragino sans gb&#39;, &#39;microsoft yahei&#39;, stheiti, &#39;wenquanyi micro hei&#39;, helvetica, arial, sans-serif;font-size:16px;margin-top:0px;margin-bottom:15px;outline:0px;padding:0px;vertical-align:baseline;color:#666666;line-height:28.8px;\"><span style=\"box-sizing:border-box;font-weight:700;font-size:16px;\">“可以运行程序的程序，通常意味着是一个操作系统”，</span><span style=\"font-size:16px;\">所以你肯定说微信依然变成了一个操作系统或者管理平台，那作为操作系统的微信会给用户和行业带来什么变化呢？</span></p><p style=\"box-sizing:border-box;border:0px;font-family:&#39;pingfang sc&#39;, &#39;hiragino sans gb&#39;, &#39;microsoft yahei&#39;, stheiti, &#39;wenquanyi micro hei&#39;, helvetica, arial, sans-serif;font-size:16px;margin-top:0px;margin-bottom:15px;outline:0px;padding:0px;vertical-align:baseline;color:#666666;line-height:28.8px;\"><span style=\"font-size:16px;\">对于普通用户生活方式的改变：</span></p><p style=\"box-sizing:border-box;border:0px;font-family:&#39;pingfang sc&#39;, &#39;hiragino sans gb&#39;, &#39;microsoft yahei&#39;, stheiti, &#39;wenquanyi micro hei&#39;, helvetica, arial, sans-serif;font-size:16px;margin-top:0px;margin-bottom:15px;outline:0px;padding:0px;vertical-align:baseline;color:#666666;line-height:28.8px;\"><span style=\"box-sizing:border-box;font-weight:700;font-size:16px;\">1.首先是卸载低频APP</span></p><p style=\"box-sizing:border-box;border:0px;font-family:&#39;pingfang sc&#39;, &#39;hiragino sans gb&#39;, &#39;microsoft yahei&#39;, stheiti, &#39;wenquanyi micro hei&#39;, helvetica, arial, sans-serif;font-size:16px;margin-top:0px;margin-bottom:15px;outline:0px;padding:0px;vertical-align:baseline;color:#666666;line-height:28.8px;\"><span style=\"font-size:16px;\">对于像旅游、租房等低频的APP，普通用户可能更倾向于卸掉本地APP而选择小程序来使用，这能够节省一部分手机空间。</span></p><p style=\"box-sizing:border-box;border:0px;font-family:&#39;pingfang sc&#39;, &#39;hiragino sans gb&#39;, &#39;microsoft yahei&#39;, stheiti, &#39;wenquanyi micro hei&#39;, helvetica, arial, sans-serif;font-size:16px;margin-top:0px;margin-bottom:15px;outline:0px;padding:0px;vertical-align:baseline;color:#666666;line-height:28.8px;\"><span style=\"box-sizing:border-box;font-weight:700;font-size:16px;\">2.微信变成巨无霸应用，用户停留时间更长：通讯（IM）+社交+工具和服务。</span></p><p style=\"box-sizing:border-box;border:0px;font-family:&#39;pingfang sc&#39;, &#39;hiragino sans gb&#39;, &#39;microsoft yahei&#39;, stheiti, &#39;wenquanyi micro hei&#39;, helvetica, arial, sans-serif;font-size:16px;margin-top:0px;margin-bottom:15px;outline:0px;padding:0px;vertical-align:baseline;color:#666666;line-height:28.8px;\"><span style=\"font-size:16px;\">用户把省下来的一部分空间，留给微信使用。原本已经很长的使用时间，因为所提供的工具和服务的多样化而变得更长。</span></p><p style=\"box-sizing:border-box;border:0px;font-family:&#39;pingfang sc&#39;, &#39;hiragino sans gb&#39;, &#39;microsoft yahei&#39;, stheiti, &#39;wenquanyi micro hei&#39;, helvetica, arial, sans-serif;font-size:16px;margin-top:0px;margin-bottom:15px;outline:0px;padding:0px;vertical-align:baseline;color:#666666;line-height:28.8px;\"><img data-action=\"zoom\" class=\" wp-image-574243 aligncenter\" src=\"http://www.sharingany.com/data/upload/ueditor/20170120/5881fcd3b38fc.png\" alt=\"\" style=\"box-sizing:border-box;max-width:100%;height:auto;outline:none;border:none;margin-left:auto;margin-right:auto;display:block;cursor:pointer;\" width=\"751\" height=\"660\"/></p><p style=\"box-sizing:border-box;border:0px;font-family:&#39;pingfang sc&#39;, &#39;hiragino sans gb&#39;, &#39;microsoft yahei&#39;, stheiti, &#39;wenquanyi micro hei&#39;, helvetica, arial, sans-serif;font-size:16px;margin-top:0px;margin-bottom:15px;outline:0px;padding:0px;vertical-align:baseline;color:#666666;line-height:28.8px;text-align:center;\"><span style=\"font-size:16px;\">微信小程序服务领域</span></p><p style=\"box-sizing:border-box;border:0px;font-family:&#39;pingfang sc&#39;, &#39;hiragino sans gb&#39;, &#39;microsoft yahei&#39;, stheiti, &#39;wenquanyi micro hei&#39;, helvetica, arial, sans-serif;font-size:16px;margin-top:0px;margin-bottom:15px;outline:0px;padding:0px;vertical-align:baseline;color:#666666;line-height:28.8px;\"><span style=\"font-size:16px;\">由上图可知，微信小程序涵盖的服务类别非常多，涉及的面很广泛，可见微信在起初设计的时候就想圈起来更大的生态圈。</span></p><p style=\"box-sizing:border-box;border:0px;font-family:&#39;pingfang sc&#39;, &#39;hiragino sans gb&#39;, &#39;microsoft yahei&#39;, stheiti, &#39;wenquanyi micro hei&#39;, helvetica, arial, sans-serif;font-size:16px;margin-top:0px;margin-bottom:15px;outline:0px;padding:0px;vertical-align:baseline;color:#666666;line-height:28.8px;\"><span style=\"font-size:16px;\">这时，对于行业应用和服务提供者而言：</span></p><ol style=\"box-sizing:border-box;border:0px;font-family:&#39;pingfang sc&#39;, &#39;hiragino sans gb&#39;, &#39;microsoft yahei&#39;, stheiti, &#39;wenquanyi micro hei&#39;, helvetica, arial, sans-serif;font-size:16px;margin:0px 0px 28px;outline:0px;padding:0px;vertical-align:baseline;list-style-position:inside;color:rgba(0, 0, 0, 0.8);line-height:28.8px;\"><li style=\"\"><p><span style=\"font-size:16px;\">不仅体验不佳的服务号会快速转移阵地</span></p></li><li style=\"\"><p><span style=\"font-size:16px;\">先是给本地生活和电子商务的应用带来很大的便利，尤其是有战略很作关系的应用服务商，这些应用app的核心功能会得到进一步的强化，触及用户的面会更广，使用频率会更高，他们肯定会成为享有小程序的第一批红利者。</span></p></li><li style=\"\"><p><span style=\"font-size:16px;\">随着商家直接制作小程序的开始，微信会逐步变为商家入驻平台，就会给本地生活电子商务等应用带来巨大的冲击，到那个时候人们更习惯于在微信里完成闭环的任务，基本上不会再想起来用别的APP。</span></p></li></ol><p style=\"box-sizing:border-box;border:0px;font-family:&#39;pingfang sc&#39;, &#39;hiragino sans gb&#39;, &#39;microsoft yahei&#39;, stheiti, &#39;wenquanyi micro hei&#39;, helvetica, arial, sans-serif;font-size:16px;margin-top:0px;margin-bottom:15px;outline:0px;padding:0px;vertical-align:baseline;color:#666666;line-height:28.8px;\"><span style=\"box-sizing:border-box;font-weight:700;font-size:16px;\">所以微信小程序的出现，我们会进入后APP甚至无APP时代。</span></p><p style=\"box-sizing:border-box;border:0px;font-family:&#39;pingfang sc&#39;, &#39;hiragino sans gb&#39;, &#39;microsoft yahei&#39;, stheiti, &#39;wenquanyi micro hei&#39;, helvetica, arial, sans-serif;font-size:16px;margin-top:0px;margin-bottom:15px;outline:0px;padding:0px;vertical-align:baseline;color:#666666;line-height:28.8px;\"><span style=\"box-sizing:border-box;font-weight:700;font-size:16px;\">真不敢相信，到后面成千上万的服务提供者舍弃原生APP转向微信小程序，微信本身是否会遭受到苹果或谷歌的这种操作系统的绞杀。</span></p><h2 style=\"box-sizing:border-box;border-width:0px 0px 1px;border-bottom-style:solid;border-bottom-color:#eeeeee;font-family:&#39;pingfang sc&#39;, &#39;hiragino sans gb&#39;, &#39;microsoft yahei&#39;, stheiti, &#39;wenquanyi micro hei&#39;, helvetica, arial, sans-serif;font-size:18px;margin:30px 0px 20px;outline:0px;padding:0px 0px 8px;vertical-align:baseline;color:#333333;\"><span style=\"font-size:16px;color:#000000;\">四、场景化、AR式智能化工具——从所用即所得到所见即所得</span></h2><p style=\"box-sizing:border-box;border:0px;font-family:&#39;pingfang sc&#39;, &#39;hiragino sans gb&#39;, &#39;microsoft yahei&#39;, stheiti, &#39;wenquanyi micro hei&#39;, helvetica, arial, sans-serif;font-size:16px;margin-top:0px;margin-bottom:15px;outline:0px;padding:0px;vertical-align:baseline;color:#666666;line-height:28.8px;\"><span style=\"box-sizing:border-box;font-weight:700;font-size:16px;\">1.场景化智能推荐——所用即所得</span></p><p style=\"box-sizing:border-box;border:0px;font-family:&#39;pingfang sc&#39;, &#39;hiragino sans gb&#39;, &#39;microsoft yahei&#39;, stheiti, &#39;wenquanyi micro hei&#39;, helvetica, arial, sans-serif;font-size:16px;margin-top:0px;margin-bottom:15px;outline:0px;padding:0px;vertical-align:baseline;color:#666666;line-height:28.8px;\"><span style=\"font-size:16px;\">微信入口一直强调在线下，并且还说用户在某一位置就可以获取到附近的小程序。可以想象一下，不远的将来微信小程序有可能会实现围绕用户的行为、位置、时间和场景做智能化的推荐。比如用户在逛商场，时间是中午吃饭，微信可以根据用户的生活偏好、消费习惯、店家优惠信息等推荐最适合他的参观小程序。真正做到用户所用即所得。</span></p><p style=\"box-sizing:border-box;border:0px;font-family:&#39;pingfang sc&#39;, &#39;hiragino sans gb&#39;, &#39;microsoft yahei&#39;, stheiti, &#39;wenquanyi micro hei&#39;, helvetica, arial, sans-serif;font-size:16px;margin-top:0px;margin-bottom:15px;outline:0px;padding:0px;vertical-align:baseline;color:#666666;line-height:28.8px;\"><span style=\"box-sizing:border-box;font-weight:700;font-size:16px;\">2.AR式智能工具——所见即所得</span></p><p style=\"box-sizing:border-box;border:0px;font-family:&#39;pingfang sc&#39;, &#39;hiragino sans gb&#39;, &#39;microsoft yahei&#39;, stheiti, &#39;wenquanyi micro hei&#39;, helvetica, arial, sans-serif;font-size:16px;margin-top:0px;margin-bottom:15px;outline:0px;padding:0px;vertical-align:baseline;color:#666666;line-height:28.8px;\"><span style=\"font-size:16px;\">另外，人工智能（AI）是移动互联网的下一站趋势。长远来看，微信要实现的就是在用户未脱离手机这块屏幕时，就能够做到取代眼镜做些AR（Augmented\r\n \r\nReality增强现实）式连接人和场景，以及连接人和物的智能效果，直接让接触到的事物的相关信息和处理程序触手可及。比如我们在科幻电影里看到的画面一样。</span></p><p style=\"box-sizing:border-box;border:0px;font-family:&#39;pingfang sc&#39;, &#39;hiragino sans gb&#39;, &#39;microsoft yahei&#39;, stheiti, &#39;wenquanyi micro hei&#39;, helvetica, arial, sans-serif;font-size:16px;margin-top:0px;margin-bottom:15px;outline:0px;padding:0px;vertical-align:baseline;color:#666666;line-height:28.8px;\"><img data-action=\"zoom\" class=\"size-full wp-image-574244 aligncenter\" src=\"http://www.sharingany.com/data/upload/ueditor/20170120/5881fcd3c2d20.jpg\" alt=\"\" style=\"box-sizing:border-box;max-width:100%;height:auto;outline:none;border:none;margin-left:auto;margin-right:auto;display:block;cursor:pointer;\" width=\"500\" height=\"210\"/></p><p style=\"box-sizing:border-box;border:0px;font-family:&#39;pingfang sc&#39;, &#39;hiragino sans gb&#39;, &#39;microsoft yahei&#39;, stheiti, &#39;wenquanyi micro hei&#39;, helvetica, arial, sans-serif;font-size:16px;margin-top:0px;margin-bottom:15px;outline:0px;padding:0px;vertical-align:baseline;color:#666666;line-height:28.8px;text-align:center;\"><span style=\"font-size:16px;\">科幻电影中的AR效果</span></p><p style=\"box-sizing:border-box;border:0px;font-family:&#39;pingfang sc&#39;, &#39;hiragino sans gb&#39;, &#39;microsoft yahei&#39;, stheiti, &#39;wenquanyi micro hei&#39;, helvetica, arial, sans-serif;font-size:16px;margin-top:0px;margin-bottom:15px;outline:0px;padding:0px;vertical-align:baseline;color:#666666;line-height:28.8px;\"><span style=\"font-size:16px;\">再想想文章开头说的那个透过眼镜看到灯的例子，我们就能直接获取灯的信息如：品牌、产地、照明时长、寿命、亮度等，还可以看到与之相配的小程序，你可以调节灯光的亮度或者进行开关操作。</span></p><p style=\"box-sizing:border-box;border:0px;font-family:&#39;pingfang sc&#39;, &#39;hiragino sans gb&#39;, &#39;microsoft yahei&#39;, stheiti, &#39;wenquanyi micro hei&#39;, helvetica, arial, sans-serif;font-size:16px;margin-top:0px;margin-bottom:15px;outline:0px;padding:0px;vertical-align:baseline;color:#666666;line-height:28.8px;\"><span style=\"font-size:16px;\">可以说这些将会是微信面向未来的一种重要尝试，它探索的是离用户最近的智能化形态！</span></p><p style=\"box-sizing:border-box;border:0px;font-family:&#39;pingfang sc&#39;, &#39;hiragino sans gb&#39;, &#39;microsoft yahei&#39;, stheiti, &#39;wenquanyi micro hei&#39;, helvetica, arial, sans-serif;font-size:16px;margin-top:0px;margin-bottom:15px;outline:0px;padding:0px;vertical-align:baseline;color:#666666;line-height:28.8px;\"><span style=\"font-size:16px;\">对于这点我很期待。</span></p><h2 style=\"box-sizing:border-box;border-width:0px 0px 1px;border-bottom-style:solid;border-bottom-color:#eeeeee;font-family:&#39;pingfang sc&#39;, &#39;hiragino sans gb&#39;, &#39;microsoft yahei&#39;, stheiti, &#39;wenquanyi micro hei&#39;, helvetica, arial, sans-serif;font-size:18px;margin:30px 0px 20px;outline:0px;padding:0px 0px 8px;vertical-align:baseline;color:#333333;\"><span style=\"font-size:16px;\">五、总结</span></h2><p style=\"box-sizing:border-box;border:0px;font-family:&#39;pingfang sc&#39;, &#39;hiragino sans gb&#39;, &#39;microsoft yahei&#39;, stheiti, &#39;wenquanyi micro hei&#39;, helvetica, arial, sans-serif;font-size:16px;margin-top:0px;margin-bottom:15px;outline:0px;padding:0px;vertical-align:baseline;color:#666666;line-height:28.8px;\"><span style=\"font-size:16px;\">综上述分析我们可以看出微信做小程序是有很远见的战略眼光的。</span></p><p style=\"box-sizing:border-box;border:0px;font-family:&#39;pingfang sc&#39;, &#39;hiragino sans gb&#39;, &#39;microsoft yahei&#39;, stheiti, &#39;wenquanyi micro hei&#39;, helvetica, arial, sans-serif;font-size:16px;margin-top:0px;margin-bottom:15px;outline:0px;padding:0px;vertical-align:baseline;color:#666666;line-height:28.8px;\"><span style=\"font-size:16px;\">首先微信做小程序试图使用实现信息的唾手可得，并且连接线上和线下场景。</span></p><p style=\"box-sizing:border-box;border:0px;font-family:&#39;pingfang sc&#39;, &#39;hiragino sans gb&#39;, &#39;microsoft yahei&#39;, stheiti, &#39;wenquanyi micro hei&#39;, helvetica, arial, sans-serif;font-size:16px;margin-top:0px;margin-bottom:15px;outline:0px;padding:0px;vertical-align:baseline;color:#666666;line-height:28.8px;\"><span style=\"font-size:16px;\">其次从战略意图上他要逐步实现连接一切的梦想，而小程序就会实现连接服务和商业的层面，之后不久就会和支付宝这些商业应用进行短兵相接，必有一战。</span></p><p style=\"box-sizing:border-box;border:0px;font-family:&#39;pingfang sc&#39;, &#39;hiragino sans gb&#39;, &#39;microsoft yahei&#39;, stheiti, &#39;wenquanyi micro hei&#39;, helvetica, arial, sans-serif;font-size:16px;margin-top:0px;margin-bottom:15px;outline:0px;padding:0px;vertical-align:baseline;color:#666666;line-height:28.8px;\"><span style=\"font-size:16px;\">微信作为程序的运载体，会很快变成一个巨无霸应用，之后会对各种服务和工具提供商产生影响，更会逐步把我们推进后APP时代。</span></p><p style=\"box-sizing:border-box;border:0px;font-family:&#39;pingfang sc&#39;, &#39;hiragino sans gb&#39;, &#39;microsoft yahei&#39;, stheiti, &#39;wenquanyi micro hei&#39;, helvetica, arial, sans-serif;font-size:16px;margin-top:0px;margin-bottom:15px;outline:0px;padding:0px;vertical-align:baseline;color:#666666;line-height:28.8px;\"><span style=\"font-size:16px;\">微信是一种AR式的智能化工具，它没有脱离手机屏幕，是离用户最近的人工智能。</span></p><p style=\"box-sizing:border-box;border:0px;font-family:&#39;pingfang sc&#39;, &#39;hiragino sans gb&#39;, &#39;microsoft yahei&#39;, stheiti, &#39;wenquanyi micro hei&#39;, helvetica, arial, sans-serif;font-size:16px;margin-top:0px;margin-bottom:15px;outline:0px;padding:0px;vertical-align:baseline;color:#666666;line-height:28.8px;\"><span style=\"box-sizing:border-box;border:0px;font-family:inherit;font-style:inherit;font-weight:700;margin:0px;outline:0px;padding:0px;vertical-align:baseline;font-size:16px;\">不过，它也有一定的风险，如，用户是否买账（刚需）？应用场景是否足够的多（规模化）？它潜在的威力是否能够足够爆发（变革力）？作为操作系统微信是否能够很好地运营和维护（平衡商业服务和用户体验）？作为巨无霸APP的微信是更有魅力还是被用户嫌弃（用户满意度）？等等。</span></p><p style=\"box-sizing:border-box;border:0px;font-family:&#39;pingfang sc&#39;, &#39;hiragino sans gb&#39;, &#39;microsoft yahei&#39;, stheiti, &#39;wenquanyi micro hei&#39;, helvetica, arial, sans-serif;font-size:16px;margin-top:0px;margin-bottom:15px;outline:0px;padding:0px;vertical-align:baseline;color:#666666;line-height:28.8px;\"><span style=\"font-size:16px;\">但愿接下来小程序带来的价值能够变成用户必不可少的刚需，而不是介于服务号和APP之间的可有可无。</span></p><p style=\"box-sizing:border-box;border:0px;font-family:&#39;pingfang sc&#39;, &#39;hiragino sans gb&#39;, &#39;microsoft yahei&#39;, stheiti, &#39;wenquanyi micro hei&#39;, helvetica, arial, sans-serif;font-size:16px;margin-top:0px;margin-bottom:15px;outline:0px;padding:0px;vertical-align:baseline;color:#666666;line-height:28.8px;\"><span style=\"font-size:16px;\">面对小程序这种新事物，我总体上抱以赞赏的态度！</span></p><p style=\"box-sizing:border-box;border:0px;font-family:&#39;pingfang sc&#39;, &#39;hiragino sans gb&#39;, &#39;microsoft yahei&#39;, stheiti, &#39;wenquanyi micro hei&#39;, helvetica, arial, sans-serif;font-size:16px;margin-top:0px;margin-bottom:15px;outline:0px;padding:0px;vertical-align:baseline;color:#666666;line-height:28.8px;\"><span style=\"font-size:16px;\">我相信未来一段时间也是属于小程序的时代！让我们拭目以待！</span></p><p style=\"box-sizing:border-box;border:0px;font-family:&#39;pingfang sc&#39;, &#39;hiragino sans gb&#39;, &#39;microsoft yahei&#39;, stheiti, &#39;wenquanyi micro hei&#39;, helvetica, arial, sans-serif;font-size:16px;margin-top:0px;margin-bottom:15px;outline:0px;padding:0px;vertical-align:baseline;color:#666666;line-height:28.8px;\"><span style=\"font-size:16px;\"><br/></span></p><p style=\"margin:0px 3px 15px;text-align:center;font-size:13.3333px;padding:0px;text-indent:30px;font-stretch:normal;line-height:32px;\"><span style=\"font-family:SimHei;color:#fe2419\"><span style=\"font-size:16px;\"><span style=\"color:#ff483f;\"><span style=\"color:#fe2419;\"><span style=\"color:#ff483f;\"><a href=\"http://www.fanwe.com/xcx\" target=\"_blank\"><span style=\"color:#fe2419;\">点击【这里】了解方维小程序导航系统</span></a></span></span></span></span></span></p><p style=\"margin:0px 3px 15px;text-align:center;font-size:13.3333px;padding:0px;text-indent:30px;font-stretch:normal;line-height:32px;\"><span style=\"font-family:SimHei;color:#fe2419\"><span style=\"font-size:16px;\"><span style=\"color:#ff483f;\"><span style=\"color:#fe2419;\"><span style=\"color:#ff483f;\"><a href=\"http://www.fanwe.com/xcx\" target=\"_blank\"><span style=\"color:#fe2419;\">做你自己的小程序</span><span style=\"color:#fe2419;\">导航</span></a></span></span></span></span></span></p><p style=\"box-sizing:border-box;border:0px;font-family:&#39;pingfang sc&#39;, &#39;hiragino sans gb&#39;, &#39;microsoft yahei&#39;, stheiti, &#39;wenquanyi micro hei&#39;, helvetica, arial, sans-serif;font-size:16px;margin-top:0px;margin-bottom:15px;outline:0px;padding:0px;vertical-align:baseline;color:#666666;line-height:28.8px;\"><span style=\"font-size:16px;\"><br/></span></p><p><br/></p>', '微信小程序的风起来了，大家准备好了吗？', '微信小程序的风起来了，大家准备好了吗？', '1', '1', '2017-01-20 19:57:00', '', '0', '', '', '0', '{\"thumb\":\"588461dbed84b.jpg\"}', '94', '0', '1', '1', '', '', '', '', '1', '0000-00-00', '', '', '', '', '', '');
INSERT INTO `com_posts` VALUES ('41', '1', '', '', '2017-01-21 09:06:47', '<p>政务与行业软件产品</p>', '政务与行业软件产品', '政务与行业软件产品', '1', '1', '2017-01-21 09:05:24', '', '0', '2', '', '0', '{\"template\":\"successdetail\",\"thumb\":\"5882b42317e53.png\"}', '0', '0', '0', '0', '', '', '', '', '1', '0000-00-00', '', '', '', '', '', '');
INSERT INTO `com_posts` VALUES ('42', '1', '', '', '2017-01-21 09:07:24', '<p style=\"text-align:center\"><img src=\"http://www.sharingany.com/data/upload/ueditor/20170810/598c59bb95150.png\" title=\"image.png\" alt=\"\"/> </p><p><br/> </p><p><img src=\"http://www.sharingany.com/data/upload/ueditor/20170810/598c5424a827d.png\" title=\"image.png\" alt=\"\"/> </p><p style=\"text-align:center\"><img src=\"http://www.sharingany.com/data/upload/ueditor/20170810/598c5bd598e59.png\" title=\"image.png\" alt=\"image.png\"/><img src=\"http://www.sharingany.com/data/upload/ueditor/20170810/598c5c2198e59.png\" title=\"image.png\" alt=\"\"/> </p><p style=\"text-align: center;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p><h2 style=\"text-align: center;\"><span style=\"font-size: 24px;\">他们都在做，<span style=\"color: rgb(255, 0, 0);\"><strong>你还在等什么？</strong></span></span> </h2><p style=\"text-align: center;\"><img src=\"http://www.sharingany.com/data/upload/ueditor/20170810/598c54f1c6ac5.png\" title=\"image.png\" alt=\"\"/> </p>', '移动互联网营销服务', '移动互联网营销服务', '1', '1', '2017-01-21 09:06:48', '', '0', '2', '', '0', '{\"template\":\"successdetail\",\"thumb\":\"5882b44995c7c.png\"}', '0', '0', '0', '0', '', '', '', '', '1', '0000-00-00', '', '', '', '', '', '');
INSERT INTO `com_posts` VALUES ('43', '1', '众享商城系统2.0正式上线', '众享科技', '2017-01-22 18:08:49', '<p>众享商城系统2.0正式上线</p>', '众享商城系统2.0正式上线啦！', '众享商城系统2.0正式上线', '1', '1', '2017-01-22 17:34:52', '', '0', '', '', '0', '{\"thumb\":\"588484aca8da9.png\"}', '73', '0', '0', '1', '', '', '', '', '1', '0000-00-00', '', '', '', '', '', '');
INSERT INTO `com_posts` VALUES ('44', '1', '', '众享科技', '2017-01-22 20:19:24', '', '微广播直播平台', '微广播直播平台', '1', '1', '2017-01-22 20:17:39', '', '0', '', '', '0', '{\"thumb\":\"5884a33f1bb5c.png\"}', '21', '0', '0', '0', '', '', '', '', '1', '0000-00-00', '', '', '', '', '', '');
INSERT INTO `com_posts` VALUES ('45', '1', '', '', '2017-01-26 20:17:44', '<p>兴业期货销售系统</p>', '兴业期货销售系统', '兴业期货销售系统', '1', '1', '2017-01-26 20:15:52', '', '0', '', '', '0', '{\"thumb\":\"5889e8b1784ce.png\"}', '47', '0', '0', '1', '', '', '', '', '1', '0000-00-00', '', '', '', '', '', '');
INSERT INTO `com_posts` VALUES ('46', '1', '', '', '2017-01-26 20:21:49', '<p>武夷山职业学院-教务系统</p>', '武夷山职业学院-教务系统', '武夷山职业学院-教务系统', '1', '1', '2017-01-26 20:20:04', '', '0', '', '', '0', '{\"thumb\":\"5889e987e6ed3.png\"}', '3', '0', '0', '0', '', '', '', '', '1', '0000-00-00', '', '', '', '', '', '');
INSERT INTO `com_posts` VALUES ('47', '1', '', '', '2017-01-26 20:21:56', '<p>武夷山职业学院-教务系统</p>', '武夷山职业学院-教务系统', '武夷山职业学院-教务系统', '1', '1', '2017-01-26 20:20:04', '', '0', '', '', '0', '{\"thumb\":\"5897fedb4cb6a.png\"}', '46', '0', '0', '1', '', '', '', '', '1', '0000-00-00', '', '', '', '', '', '');
INSERT INTO `com_posts` VALUES ('48', '1', '', '', '2017-01-26 20:25:14', '<p>校园O2O交友平台</p>', '校园O2O交友平台', '校园O2O交友平台', '1', '1', '2017-01-26 20:23:51', '', '0', '', '', '0', '{\"thumb\":\"5889ea8d46b59.png\"}', '8', '0', '0', '0', '', '', '', '', '1', '0000-00-00', '', '', '', '', '', '');
INSERT INTO `com_posts` VALUES ('49', '1', '', '', '2017-01-26 20:26:27', '<p>未来者</p>', '未来者', '未来者', '1', '1', '2017-01-26 20:25:30', '', '0', '', '', '0', '{\"thumb\":\"5889ead933a2c.png\"}', '0', '0', '0', '0', '', '', '', '', '1', '0000-00-00', '', '', '', '', '', '');
INSERT INTO `com_posts` VALUES ('50', '1', '', '', '2017-01-26 20:26:40', '<p>未来者</p>', '未来者', '未来者', '1', '1', '2017-01-26 20:25:30', '', '0', '', '', '0', '{\"thumb\":\"5889ead933a2c.png\"}', '10', '0', '0', '0', '', '', '', '', '1', '0000-00-00', '', '', '', '', '', '');
INSERT INTO `com_posts` VALUES ('51', '1', '特工组促销系统', '', '2017-01-26 22:04:12', '<p>特工组促销系统</p>', '特工组促销系统', '特工组促销系统', '1', '1', '2017-01-26 22:03:04', '', '0', '', '', '0', '{\"thumb\":\"588a01bba9e43.png\"}', '2', '0', '0', '0', '', '', '', '', '1', '0000-00-00', '', '', '', '', '', '');
INSERT INTO `com_posts` VALUES ('52', '1', '', '', '2017-02-07 20:38:12', '', '中国华艺广播', '中国华艺广播', '1', '1', '2017-02-07 20:37:35', '', '0', '', '', '0', '{\"thumb\":\"5899bf9e1eefe.png\"}', '34', '0', '0', '1', '', '', '', '', '1', '0000-00-00', '', '', '', '', '', '');
INSERT INTO `com_posts` VALUES ('53', '1', '', '', '2017-02-07 20:38:54', '', '法国利鑫公司', '法国利鑫公司', '1', '1', '2017-02-07 20:38:16', '', '0', '', '', '0', '{\"thumb\":\"5899bfc4bb56f.png\"}', '3', '0', '0', '0', '', '', '', '', '1', '0000-00-00', '', '', '', '', '', 'http://www.sharingany.com');
INSERT INTO `com_posts` VALUES ('54', '1', '众筹系统', '众享智联网络科技有限公司', '2017-06-22 21:34:34', '<p>众筹系统</p>', '众筹系统', '众筹系统', '1', '1', '2017-06-22 21:31:10', '', '0', '', '', '0', '{\"thumb\":\"598d57e5674e4.png\"}', '15', '0', '0', '0', '', '', '', '', '1', '0000-00-00', '', '', '', '', '', '');
INSERT INTO `com_posts` VALUES ('55', '1', '知识付费平台  知识付费系统', '众享智联网络科技有限公司', '2017-06-22 21:35:38', '<div class=\"head-text\"><p style=\"text-align: center; line-height: 4em;\"><span style=\"font-size: 24px;\">知识作为商品<span style=\"font-size: 24px;\"></span>，<span style=\"color: rgb(79, 129, 189);\">多渠道变现</span></span></p><p style=\"text-align: center; line-height: normal;\"><span style=\"font-size: 14px;\">销售内容/课程，让知识价值最大化</span></p><p style=\"line-height: normal;\"><span style=\"font-size: 14px;\"><br/></span></p></div><p style=\"line-height: 3em;\"><img src=\"http://www.sharingany.com/data/upload/ueditor/20170811/598d8bab35b6f.png\" title=\"image.png\" alt=\"image.png\"/></p><blockquote></blockquote><p style=\"text-align: center;background:white; line-height: 2em; margin-bottom: 5px; text-indent: 0em;\" dir=\"ltr\"><span style=\"font-size: 24px;\">众享知识付费系统，<span style=\"color: rgb(79, 129, 189);\">特色功能</span></span></p><p style=\"text-align: center; line-height: 2em; margin-bottom: 5px; text-indent: 0em;\" dir=\"ltr\">一站式解决营销推广、付费转化、社群运营、用户管理四大痛点</p><blockquote><div class=\"head-text\"><p><img src=\"http://www.sharingany.com/data/upload/ueditor/20170811/598d8c6682023.png\" title=\"image.png\" alt=\"image.png\"/></p><p style=\"text-align: center;\"><span style=\"font-size: 24px;\">知识付费系统能<span style=\"color: rgb(79, 129, 189);\">为你做什么？</span></span></p><p><img src=\"http://www.sharingany.com/data/upload/ueditor/20170811/598d8eb5e9016.png\" title=\"image.png\" alt=\"image.png\"/></p><p><img src=\"http://www.sharingany.com/data/upload/ueditor/20170811/598d8f24580c0.png\" title=\"image.png\" alt=\"image.png\"/></p><p><img src=\"http://www.sharingany.com/data/upload/ueditor/20170811/598d8f42ce4d7.png\" title=\"image.png\" alt=\"image.png\"/></p><p style=\"margin-bottom: 10px; text-align: center;\"><span style=\"font-size: 24px;\">知识付费系统适合<span style=\"color: rgb(79, 129, 189);\">哪些行业/个人？</span></span></p><p style=\"margin-bottom: 10px;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;\r\n		&nbsp; &nbsp;</p><p style=\"text-align: center; margin-bottom: 10px;\">30秒快速拥有你的知识店铺，任意内容/技能均能实现</p><p><img src=\"http://www.sharingany.com/data/upload/ueditor/20170811/598d8f6e89a35.png\" title=\"image.png\" alt=\"image.png\"/></p></div></blockquote>', '众享知识付费系统', '多维度内容：图文问答，音视频，直播 | 知识作为商品，多渠道变现\r\n', '1', '1', '2017-06-22 21:34:43', '', '0', '', '', '0', '{\"thumb\":\"598d86a6abf86.png\"}', '46', '0', '0', '1', '', '', '', '', '1', '0000-00-00', '', '', '', '', '', '');
INSERT INTO `com_posts` VALUES ('56', '1', '棋牌游戏  互动直播系统', '众享智联网络科技有限公司', '2017-06-22 21:37:04', '<p>抱歉！内容近期维护中......请耐心等待......</p>', '棋牌游戏互动直播系统', '棋牌游戏， 互动直播系统', '1', '1', '2017-06-22 21:36:15', '', '0', '', '', '0', '{\"thumb\":\"598da334ca7ce.png\"}', '21', '0', '0', '0', '', '', '', '', '1', '0000-00-00', '', '', '', '', '', '');
INSERT INTO `com_posts` VALUES ('57', '1', '一元夺宝系统', '众享智联网络科技有限公司', '2017-06-22 21:44:57', '<p><img src=\"http://www.sharingany.com/data/upload/ueditor/20170818/59969ba73b046.jpg\" title=\"437_src.jpg\" alt=\"437_src.jpg\"/></p>', '一元夺宝系统', '一元夺宝系统', '1', '1', '2017-06-22 21:37:06', '', '0', '', '', '0', '{\"thumb\":\"599674ca27f19.png\"}', '41', '0', '0', '0', '', '', '', '', '1', '0000-00-00', '', '', '', '', '', '');
INSERT INTO `com_posts` VALUES ('58', '1', '电商购物直播系统', '众享智联网络科技有限公司', '2017-06-22 21:51:09', '<p>电商购物直播系统</p>', '电商购物直播系统', '电商购物直播系统', '1', '1', '2017-06-22 21:49:49', '', '0', '', '', '0', '{\"thumb\":\"598da3e122a42.png\"}', '19', '0', '0', '1', '', '', '', '', '1', '0000-00-00', '', '', '', '', '', '');
INSERT INTO `com_posts` VALUES ('59', '1', '商品拍卖系统', '商品拍卖系统', '2017-06-23 15:49:12', '', '商品拍卖系统', '收藏品拍卖系统，闲置物品拍卖系统', '1', '1', '2017-06-23 15:48:37', '', '0', '', '', '0', '{\"thumb\":\"\"}', '15', '0', '0', '0', '', '', '', '', '1', '0000-00-00', '', '', '', '', '', '');
INSERT INTO `com_posts` VALUES ('60', '1', '兴业金融理财产品系统', '兴业金融理财产品系统', '2017-06-23 16:16:09', '<p>兴业金融理财产品系统</p>', '兴业金融理财产品系统', '兴业金融理财产品系统', '1', '1', '2017-06-23 16:15:26', '', '0', '', '', '0', '{\"thumb\":\"598da8d6e9016.png\"}', '27', '0', '0', '0', '<p>兴业金融理财产品系统</p>', '<p>兴业金融理财产品系统</p>', '<p>兴业金融理财产品系统</p>', '<p>兴业金融理财产品系统</p>', '1', '0000-00-00', '', '', '', '', '', '');
INSERT INTO `com_posts` VALUES ('61', '1', '', '', '2017-06-23 17:06:34', '<p><img src=\"http://www.sharingany.com/data/upload/ueditor/20170811/598da985a086b.png\" title=\"image.png\" alt=\"image.png\"/></p><p><img src=\"http://www.sharingany.com/data/upload/ueditor/20170811/598da96b44f93.png\" title=\"image.png\" alt=\"image.png\"/></p>', '棋牌游戏', '麻将，德州扑克等等棋牌游戏', '1', '1', '2017-06-23 17:05:23', '', '0', '', '', '0', '{\"thumb\":\"594cda0cb8dbb.png\"}', '35', '0', '0', '1', '', '', '', '', '1', '0000-00-00', '', '', '', '', '', '');
INSERT INTO `com_posts` VALUES ('62', '1', '', '', '2017-07-08 16:01:25', '', '企业建站定制服务', '十几个行业，百余种模板，定制化企业网站开发', '1', '1', '2017-07-08 15:30:54', '', '0', '', '', '0', '{\"thumb\":\"5960b825dff19.png\"}', '61', '0', '0', '1', '<p style=\"text-align: center;\"><span style=\"font-size: 36px; color: rgb(0, 176, 240);\">企业建站定制服务</span><br/></p><p><img src=\"http://www.sharingany.com/data/upload/ueditor/20170818/5996a285d8229.png\" title=\"213124124.png\" alt=\"213124124.png\"/></p><p style=\"text-align: center;\"><span style=\"font-size: 36px; color: rgb(0, 176, 240);\">公司案例</span><br/></p><p><img src=\"http://www.sharingany.com/data/upload/ueditor/20170818/5996a9dd1c42d.png\" title=\"图片.png\" alt=\"图片.png\"/></p><p><img src=\"http://www.sharingany.com/data/upload/ueditor/20170818/5996b2fdc4d2b.png\" title=\"图片.png\" alt=\"图片.png\"/></p><p><br/></p><p><img src=\"http://www.sharingany.com/data/upload/ueditor/20170818/5996b3701464b.png\" title=\"图片.png\" alt=\"图片.png\"/></p><p><img src=\"http://www.sharingany.com/data/upload/ueditor/20170821/599a847e740ef.png\" title=\"图片.png\" alt=\"图片.png\"/></p>', '', '', '', '1', '0000-00-00', '', '', '', '', '', '');
INSERT INTO `com_posts` VALUES ('63', '1', '', '', '2017-07-08 17:57:41', '<p><img src=\"http://www.sharingany.com/data/upload/ueditor/20170821/599a84f3c42ac.png\" title=\"图片.png\" alt=\"图片.png\"/></p><p><img src=\"http://sharingany.com/data/upload/ueditor/20170824/599e986aa5a64.png\" title=\"图片.png\" alt=\"图片.png\"/></p><p><img src=\"http://www.sharingany.com/data/upload/ueditor/20170821/599a84f3c7fb5.png\" title=\"图片.png\" alt=\"图片.png\"/></p><p><img src=\"http://www.sharingany.com/data/upload/ueditor/20170821/599a84f3cbcbe.png\" title=\"图片.png\" alt=\"图片.png\"/></p><p><img src=\"http://www.sharingany.com/data/upload/ueditor/20170821/599a84f3cf9c7.png\" title=\"图片.png\" alt=\"图片.png\"/></p><p><br/></p><p><br/></p>', '微信小程序定制开发', '餐饮，上门O2O,商城，众筹，分销，掌上OA，营销工具，AR游戏，VR展厅', '1', '1', '2017-07-08 17:47:33', '', '0', '', '', '0', '{\"thumb\":\"5960b17b3818d.png\"}', '53', '0', '0', '1', '', '', '', '', '1', '0000-00-00', '', '', '', '', '', '');
INSERT INTO `com_posts` VALUES ('64', '1', '', '', '2017-07-28 15:53:32', '<p>范德萨发的发<br/></p>', '小程序使用的图片集合', '大是大非', '0', '1', '2017-07-28 15:45:54', '', '0', '', '', '0', '{\"thumb\":\"\",\"photo\":[{\"url\":\"597aed1beb605.png\",\"alt\":\"\\u7f8e\\u7532\\u5c0f\\u7a0b\\u5e8fbg-06\"},{\"url\":\"597aee67569a6.png\",\"alt\":\"\\u82b1\\u5e97\\u5c0f\\u7a0b\\u5e8fbg-06\"}]}', '2', '0', '0', '0', '', '', '', '', '1', '0000-00-00', '', '', '', '', '', '');

-- ----------------------------
-- Table structure for `com_role`
-- ----------------------------
DROP TABLE IF EXISTS `com_role`;
CREATE TABLE `com_role` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL COMMENT '角色名称',
  `pid` smallint(6) DEFAULT NULL COMMENT '父角色ID',
  `status` tinyint(1) unsigned DEFAULT NULL COMMENT '状态',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `listorder` int(3) NOT NULL DEFAULT '0' COMMENT '排序字段',
  PRIMARY KEY (`id`),
  KEY `parentId` (`pid`),
  KEY `status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of com_role
-- ----------------------------
INSERT INTO `com_role` VALUES ('1', '超级管理员', '0', '1', '拥有网站最高管理员权限！', '1329633709', '1329633709', '0');
INSERT INTO `com_role` VALUES ('2', '内容编辑', null, '1', '内容编辑', '1503892200', '0', '0');

-- ----------------------------
-- Table structure for `com_role_user`
-- ----------------------------
DROP TABLE IF EXISTS `com_role_user`;
CREATE TABLE `com_role_user` (
  `role_id` int(11) unsigned DEFAULT '0' COMMENT '角色 id',
  `user_id` int(11) DEFAULT '0' COMMENT '用户id',
  KEY `group_id` (`role_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of com_role_user
-- ----------------------------
INSERT INTO `com_role_user` VALUES ('2', '2');

-- ----------------------------
-- Table structure for `com_route`
-- ----------------------------
DROP TABLE IF EXISTS `com_route`;
CREATE TABLE `com_route` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '路由id',
  `full_url` varchar(255) DEFAULT NULL COMMENT '完整url， 如：portal/list/index?id=1',
  `url` varchar(255) DEFAULT NULL COMMENT '实际显示的url',
  `listorder` int(5) DEFAULT '0' COMMENT '排序，优先级，越小优先级越高',
  `status` tinyint(1) DEFAULT '1' COMMENT '状态，1：启用 ;0：不启用',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of com_route
-- ----------------------------
INSERT INTO `com_route` VALUES ('1', 'list/index/id/3', 'product', '0', '1');

-- ----------------------------
-- Table structure for `com_slide`
-- ----------------------------
DROP TABLE IF EXISTS `com_slide`;
CREATE TABLE `com_slide` (
  `slide_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `slide_cid` int(11) NOT NULL COMMENT '幻灯片分类 id',
  `slide_name` varchar(255) NOT NULL COMMENT '幻灯片名称',
  `slide_pic` varchar(255) DEFAULT NULL COMMENT '幻灯片图片',
  `slide_url` varchar(255) DEFAULT NULL COMMENT '幻灯片链接',
  `slide_des` varchar(255) DEFAULT NULL COMMENT '幻灯片描述',
  `slide_content` text COMMENT '幻灯片内容',
  `slide_status` int(2) NOT NULL DEFAULT '1' COMMENT '状态，1显示，0不显示',
  `listorder` int(10) DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`slide_id`),
  KEY `slide_cid` (`slide_cid`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of com_slide
-- ----------------------------
INSERT INTO `com_slide` VALUES ('1', '1', '首页第二张', '/data/upload/5884717077434.png', '#', '', '', '1', '20');
INSERT INTO `com_slide` VALUES ('10', '5', '公司案例', '/data/upload/5896d2386f0bb.png', '', '', '', '1', '0');
INSERT INTO `com_slide` VALUES ('11', '6', '1', '/data/upload/5989e2ed91447.png', '', '', '', '1', '1');
INSERT INTO `com_slide` VALUES ('3', '1', '首页第一张', '/data/upload/588470ecb44c4.png', '', '', '', '1', '10');
INSERT INTO `com_slide` VALUES ('4', '1', '首页第三张', '/data/upload/5884e802e9b42.png', '', '', '', '1', '30');
INSERT INTO `com_slide` VALUES ('6', '1', '首页第四张', '/data/upload/5884e822a50a0.png', '', '', '', '1', '4');
INSERT INTO `com_slide` VALUES ('7', '3', '关于我们', '/data/upload/588736ec967ed.png', '', '', '', '1', '0');
INSERT INTO `com_slide` VALUES ('8', '4', '人才招聘', '/data/upload/588737094e042.png', '', '', '', '1', '0');
INSERT INTO `com_slide` VALUES ('9', '2', '产品与服务', '/data/upload/5889e05f9e728.png', '', '', '', '1', '0');
INSERT INTO `com_slide` VALUES ('12', '6', '2', '/data/upload/5989e306a086b.png', '', '', '', '1', '2');
INSERT INTO `com_slide` VALUES ('13', '6', '3', '/data/upload/5989e313d9bf2.png', '', '', '', '1', '3');
INSERT INTO `com_slide` VALUES ('14', '6', '4', '/data/upload/5989e31fa086b.png', '', '', '', '1', '4');
INSERT INTO `com_slide` VALUES ('15', '7', '手机产品服务广告', '/data/upload/5989e3d7c6ac5.png', '', '', '', '1', '0');
INSERT INTO `com_slide` VALUES ('16', '8', '职位广告', '/data/upload/5989e5205fad2.png', '', '', '', '1', '0');
INSERT INTO `com_slide` VALUES ('17', '6', '5', '/data/upload/5994222cc54cc.png', '', '', '', '1', '0');

-- ----------------------------
-- Table structure for `com_slide_cat`
-- ----------------------------
DROP TABLE IF EXISTS `com_slide_cat`;
CREATE TABLE `com_slide_cat` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(255) NOT NULL COMMENT '幻灯片分类',
  `cat_idname` varchar(255) NOT NULL COMMENT '幻灯片分类标识',
  `cat_remark` text COMMENT '分类备注',
  `cat_status` int(2) NOT NULL DEFAULT '1' COMMENT '状态，1显示，0不显示',
  PRIMARY KEY (`cid`),
  KEY `cat_idname` (`cat_idname`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of com_slide_cat
-- ----------------------------
INSERT INTO `com_slide_cat` VALUES ('1', '主页幻灯片', 'index_slider', '主页幻灯片轮播图', '1');
INSERT INTO `com_slide_cat` VALUES ('2', '产品服务头部广告位', 'service_ads', '产品服务头部广告位', '1');
INSERT INTO `com_slide_cat` VALUES ('3', '关于我们bannner', 'about_us', '', '1');
INSERT INTO `com_slide_cat` VALUES ('4', '人才招聘banner', 'humanResource', '', '1');
INSERT INTO `com_slide_cat` VALUES ('5', '公司案例banner', 'company_case', '', '1');
INSERT INTO `com_slide_cat` VALUES ('6', '手机轮播图', 'mobile_index_slide', '规格：750*400', '1');
INSERT INTO `com_slide_cat` VALUES ('7', '（手机）产品服务头部广告位', 'mobile_service_ads', '规格：750*400', '1');
INSERT INTO `com_slide_cat` VALUES ('8', '（手机）人才招聘banner', 'mobile_job_ads', '规格：750*300', '1');

-- ----------------------------
-- Table structure for `com_terms`
-- ----------------------------
DROP TABLE IF EXISTS `com_terms`;
CREATE TABLE `com_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '分类id',
  `name` varchar(200) DEFAULT NULL COMMENT '分类名称',
  `slug` varchar(200) DEFAULT '',
  `taxonomy` varchar(32) DEFAULT NULL COMMENT '分类类型',
  `description` longtext COMMENT '分类描述',
  `parent` bigint(20) unsigned DEFAULT '0' COMMENT '分类父id',
  `count` bigint(20) DEFAULT '0' COMMENT '分类文章数',
  `path` varchar(500) DEFAULT NULL COMMENT '分类层级关系路径',
  `seo_title` varchar(500) DEFAULT NULL,
  `seo_keywords` varchar(500) DEFAULT NULL,
  `seo_description` varchar(500) DEFAULT NULL,
  `list_tpl` varchar(50) DEFAULT NULL COMMENT '分类列表模板',
  `one_tpl` varchar(50) DEFAULT NULL COMMENT '分类文章页模板',
  `listorder` int(5) NOT NULL DEFAULT '0' COMMENT '排序',
  `status` int(2) NOT NULL DEFAULT '1' COMMENT '状态，1发布，0不发布',
  PRIMARY KEY (`term_id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of com_terms
-- ----------------------------
INSERT INTO `com_terms` VALUES ('6', '众享资讯', '', 'article', '众享资讯', '0', '0', '0-6', '', '', '', 'list', 'articles', '0', '1');
INSERT INTO `com_terms` VALUES ('7', '产品动态', '', 'article', '产品动态', '0', '0', '0-7', '', '', '', 'list', 'articles', '0', '1');
INSERT INTO `com_terms` VALUES ('3', '产品&amp;服务', '', 'picture', '产品&amp;服务', '0', '0', '0-3', '', '', '', 'serviceindex', 'servicedetail', '0', '1');
INSERT INTO `com_terms` VALUES ('4', '公司案例', '', 'anli', '公司案例', '0', '0', '0-4', '', '', '', 'successindex', 'successdetail', '0', '1');
INSERT INTO `com_terms` VALUES ('5', '人才招聘', '', 'job', '人才招聘', '0', '0', '0-5', '', '', '', 'joblist', 'joblist', '0', '1');
INSERT INTO `com_terms` VALUES ('8', '互联网+O2O服务类', '', 'picture', '', '3', '0', '0-3-8', '', '', '', 'serviceindex', 'servicedetail', '20', '1');
INSERT INTO `com_terms` VALUES ('9', '云电商类', '', 'picture', '', '3', '0', '0-3-9', '', '', '', 'serviceindex', 'servicedetail', '10', '1');
INSERT INTO `com_terms` VALUES ('10', 'O2O服务类', '', 'anli', '', '4', '0', '0-4-10', '', '', '', 'successindex', 'successdetail', '0', '1');
INSERT INTO `com_terms` VALUES ('11', '电商类', '', 'anli', '', '4', '0', '0-4-11', '', '', '', 'successindex', 'successdetail', '0', '1');
INSERT INTO `com_terms` VALUES ('13', '政务系统类', '', 'anli', '', '4', '0', '0-4-13', '', '', '', 'successindex', 'successdetail', '0', '1');
INSERT INTO `com_terms` VALUES ('14', '金融行业类', '', 'anli', '', '4', '0', '0-4-14', '', '', '', 'successindex', 'successdetail', '0', '1');
INSERT INTO `com_terms` VALUES ('15', '行业系统解决方案', '', 'picture', '', '3', '0', '0-3-15', '', '', '', 'serviceindex', 'servicedetail', '40', '1');
INSERT INTO `com_terms` VALUES ('17', '程序/技术', '', 'job', '', '5', '0', '0-5-17', '', '', '', 'joblist', 'joblist', '0', '1');
INSERT INTO `com_terms` VALUES ('18', '行政/人资', '', 'job', '', '5', '0', '0-5-18', '', '', '', 'joblist', 'joblist', '0', '1');
INSERT INTO `com_terms` VALUES ('19', '市场/销售', '', 'job', '', '5', '0', '0-5-19', '', '', '', 'joblist', 'joblist', '0', '1');
INSERT INTO `com_terms` VALUES ('20', '产品/策划', '', 'job', '', '5', '0', '0-5-20', '', '', '', 'joblist', 'joblist', '0', '1');
INSERT INTO `com_terms` VALUES ('21', '其他产品', '', 'picture', '创新模式互联网+传统行业解决方案', '3', '0', '0-3-21', '', '', '', 'serviceindex', 'servicedetail', '60', '1');
INSERT INTO `com_terms` VALUES ('22', '直播系统', '', 'picture', '', '3', '0', '0-3-22', '', '', '', 'serviceindex', 'servicedetail', '30', '1');

-- ----------------------------
-- Table structure for `com_term_relationships`
-- ----------------------------
DROP TABLE IF EXISTS `com_term_relationships`;
CREATE TABLE `com_term_relationships` (
  `tid` bigint(20) NOT NULL AUTO_INCREMENT,
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'posts表里文章id',
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '分类id',
  `listorder` int(10) NOT NULL DEFAULT '0' COMMENT '排序',
  `status` int(2) NOT NULL DEFAULT '1' COMMENT '状态，1发布，0不发布',
  PRIMARY KEY (`tid`),
  KEY `term_taxonomy_id` (`term_id`)
) ENGINE=MyISAM AUTO_INCREMENT=78 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of com_term_relationships
-- ----------------------------
INSERT INTO `com_term_relationships` VALUES ('54', '5', '10', '0', '1');
INSERT INTO `com_term_relationships` VALUES ('53', '6', '12', '0', '1');
INSERT INTO `com_term_relationships` VALUES ('3', '7', '6', '0', '1');
INSERT INTO `com_term_relationships` VALUES ('47', '8', '6', '0', '1');
INSERT INTO `com_term_relationships` VALUES ('19', '9', '9', '0', '1');
INSERT INTO `com_term_relationships` VALUES ('9', '10', '9', '0', '1');
INSERT INTO `com_term_relationships` VALUES ('8', '11', '8', '0', '1');
INSERT INTO `com_term_relationships` VALUES ('13', '12', '12', '0', '1');
INSERT INTO `com_term_relationships` VALUES ('17', '14', '17', '0', '1');
INSERT INTO `com_term_relationships` VALUES ('22', '16', '15', '0', '1');
INSERT INTO `com_term_relationships` VALUES ('21', '15', '8', '0', '1');
INSERT INTO `com_term_relationships` VALUES ('23', '17', '16', '0', '1');
INSERT INTO `com_term_relationships` VALUES ('24', '18', '16', '0', '1');
INSERT INTO `com_term_relationships` VALUES ('25', '19', '16', '0', '1');
INSERT INTO `com_term_relationships` VALUES ('26', '20', '15', '0', '1');
INSERT INTO `com_term_relationships` VALUES ('64', '21', '15', '0', '1');
INSERT INTO `com_term_relationships` VALUES ('29', '22', '9', '0', '0');
INSERT INTO `com_term_relationships` VALUES ('30', '23', '8', '0', '0');
INSERT INTO `com_term_relationships` VALUES ('31', '24', '8', '0', '1');
INSERT INTO `com_term_relationships` VALUES ('32', '25', '8', '0', '0');
INSERT INTO `com_term_relationships` VALUES ('33', '26', '8', '0', '1');
INSERT INTO `com_term_relationships` VALUES ('34', '27', '9', '0', '1');
INSERT INTO `com_term_relationships` VALUES ('35', '28', '21', '0', '1');
INSERT INTO `com_term_relationships` VALUES ('37', '29', '21', '0', '0');
INSERT INTO `com_term_relationships` VALUES ('38', '30', '15', '0', '0');
INSERT INTO `com_term_relationships` VALUES ('39', '31', '15', '0', '0');
INSERT INTO `com_term_relationships` VALUES ('73', '32', '9', '0', '0');
INSERT INTO `com_term_relationships` VALUES ('41', '33', '17', '0', '1');
INSERT INTO `com_term_relationships` VALUES ('42', '34', '17', '0', '1');
INSERT INTO `com_term_relationships` VALUES ('43', '35', '17', '0', '1');
INSERT INTO `com_term_relationships` VALUES ('44', '36', '20', '0', '1');
INSERT INTO `com_term_relationships` VALUES ('45', '37', '10', '0', '1');
INSERT INTO `com_term_relationships` VALUES ('52', '38', '11', '0', '1');
INSERT INTO `com_term_relationships` VALUES ('48', '39', '6', '0', '1');
INSERT INTO `com_term_relationships` VALUES ('49', '40', '7', '0', '1');
INSERT INTO `com_term_relationships` VALUES ('50', '43', '7', '0', '1');
INSERT INTO `com_term_relationships` VALUES ('65', '44', '22', '0', '0');
INSERT INTO `com_term_relationships` VALUES ('55', '45', '14', '0', '1');
INSERT INTO `com_term_relationships` VALUES ('56', '46', '13', '0', '0');
INSERT INTO `com_term_relationships` VALUES ('57', '47', '13', '0', '1');
INSERT INTO `com_term_relationships` VALUES ('58', '48', '10', '0', '1');
INSERT INTO `com_term_relationships` VALUES ('59', '49', '11', '0', '0');
INSERT INTO `com_term_relationships` VALUES ('60', '50', '11', '0', '1');
INSERT INTO `com_term_relationships` VALUES ('61', '51', '11', '0', '1');
INSERT INTO `com_term_relationships` VALUES ('62', '52', '13', '0', '1');
INSERT INTO `com_term_relationships` VALUES ('63', '53', '11', '0', '1');
INSERT INTO `com_term_relationships` VALUES ('66', '54', '9', '0', '0');
INSERT INTO `com_term_relationships` VALUES ('67', '55', '22', '0', '1');
INSERT INTO `com_term_relationships` VALUES ('68', '56', '22', '0', '1');
INSERT INTO `com_term_relationships` VALUES ('69', '57', '9', '0', '1');
INSERT INTO `com_term_relationships` VALUES ('70', '58', '22', '0', '1');
INSERT INTO `com_term_relationships` VALUES ('71', '59', '9', '0', '0');
INSERT INTO `com_term_relationships` VALUES ('72', '60', '15', '0', '1');
INSERT INTO `com_term_relationships` VALUES ('74', '61', '21', '0', '1');
INSERT INTO `com_term_relationships` VALUES ('75', '62', '21', '0', '1');
INSERT INTO `com_term_relationships` VALUES ('76', '63', '21', '0', '1');
INSERT INTO `com_term_relationships` VALUES ('77', '64', '7', '0', '1');

-- ----------------------------
-- Table structure for `com_users`
-- ----------------------------
DROP TABLE IF EXISTS `com_users`;
CREATE TABLE `com_users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) NOT NULL DEFAULT '' COMMENT '用户名',
  `user_pass` varchar(64) NOT NULL DEFAULT '' COMMENT '登录密码；sp_password加密',
  `user_nicename` varchar(50) NOT NULL DEFAULT '' COMMENT '用户美名',
  `user_email` varchar(100) NOT NULL DEFAULT '' COMMENT '登录邮箱',
  `user_url` varchar(100) NOT NULL DEFAULT '' COMMENT '用户个人网站',
  `avatar` varchar(255) DEFAULT NULL COMMENT '用户头像，相对于upload/avatar目录',
  `sex` smallint(1) DEFAULT '0' COMMENT '性别；0：保密，1：男；2：女',
  `birthday` date DEFAULT NULL COMMENT '生日',
  `signature` varchar(255) DEFAULT NULL COMMENT '个性签名',
  `last_login_ip` varchar(16) DEFAULT NULL COMMENT '最后登录ip',
  `last_login_time` datetime NOT NULL DEFAULT '2000-01-01 00:00:00' COMMENT '最后登录时间',
  `create_time` datetime NOT NULL DEFAULT '2000-01-01 00:00:00' COMMENT '注册时间',
  `user_activation_key` varchar(60) NOT NULL DEFAULT '' COMMENT '激活码',
  `user_status` int(11) NOT NULL DEFAULT '1' COMMENT '用户状态 0：禁用； 1：正常 ；2：未验证',
  `score` int(11) NOT NULL DEFAULT '0' COMMENT '用户积分',
  `user_type` smallint(1) DEFAULT '1' COMMENT '用户类型，1:admin ;2:会员',
  `coin` int(11) NOT NULL DEFAULT '0' COMMENT '金币',
  `mobile` varchar(20) NOT NULL DEFAULT '' COMMENT '手机号',
  PRIMARY KEY (`id`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of com_users
-- ----------------------------
INSERT INTO `com_users` VALUES ('1', 'admin', '###83ca754a50ed491f8da84d5c948f9cd5', 'admin', 'admin@sharingany.com', '', '', '0', '0000-00-00', '', '175.43.95.224', '2017-08-30 21:43:23', '2016-07-11 01:49:11', '', '1', '0', '1', '0', '');

-- ----------------------------
-- Table structure for `com_user_favorites`
-- ----------------------------
DROP TABLE IF EXISTS `com_user_favorites`;
CREATE TABLE `com_user_favorites` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` bigint(20) DEFAULT NULL COMMENT '用户 id',
  `title` varchar(255) DEFAULT NULL COMMENT '收藏内容的标题',
  `url` varchar(255) DEFAULT NULL COMMENT '收藏内容的原文地址，不带域名',
  `description` varchar(500) DEFAULT NULL COMMENT '收藏内容的描述',
  `table` varchar(50) DEFAULT NULL COMMENT '收藏实体以前所在表，不带前缀',
  `object_id` int(11) DEFAULT NULL COMMENT '收藏内容原来的主键id',
  `createtime` int(11) DEFAULT NULL COMMENT '收藏时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of com_user_favorites
-- ----------------------------

-- ----------------------------
-- Table structure for `com_variable`
-- ----------------------------
DROP TABLE IF EXISTS `com_variable`;
CREATE TABLE `com_variable` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '变量ID',
  `variableName` varchar(255) NOT NULL COMMENT '变量名',
  `variableValue` varchar(255) DEFAULT NULL COMMENT '变量值',
  `beizhu` varchar(255) DEFAULT NULL COMMENT '备注说明',
  `listorder` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`id`),
  UNIQUE KEY `variableName` (`variableName`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of com_variable
-- ----------------------------
INSERT INTO `com_variable` VALUES ('6', 'company_name', '福州市众享智联网络科技有限公司', '公司名称', '0');
INSERT INTO `com_variable` VALUES ('7', 'service_tel', '0591-83961839', '服务热线', '0');
INSERT INTO `com_variable` VALUES ('8', 'zixun_time', '09:00-18:00', '售前咨询时间段设置', '0');
INSERT INTO `com_variable` VALUES ('9', 'company_qq', '867793066', '企业QQ', '0');
INSERT INTO `com_variable` VALUES ('10', 'company_email', 'allsharecompany@163.com', '企业邮箱', '0');
INSERT INTO `com_variable` VALUES ('11', 'company_main_address', '福州市 · 马尾区江滨东大道100-1号世创国隆中心21层', '公司地址', '0');
INSERT INTO `com_variable` VALUES ('12', 'company_sub_address', '福州市仓山区杨周路21号钱隆汇金财富中心206', '公司地址2', '0');
INSERT INTO `com_variable` VALUES ('13', 'zdy_title', '软件', '自定义标题', '0');
INSERT INTO `com_variable` VALUES ('14', 'shangwuhezuo', '杨先生 18259170940', '商务合作', '0');
