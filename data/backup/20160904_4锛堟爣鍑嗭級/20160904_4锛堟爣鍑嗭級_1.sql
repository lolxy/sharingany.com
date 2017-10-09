-- ThinkCMF SQL Dump Program
-- 
-- DATE : 2016-09-04 20:37:54
-- Vol : 1
DROP TABLE IF EXISTS `com_ad`;
CREATE TABLE `com_ad` (
  `ad_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '广告id',
  `ad_name` varchar(255) NOT NULL COMMENT '广告名称',
  `ad_content` text COMMENT '广告内容',
  `status` int(2) NOT NULL DEFAULT '1' COMMENT '状态，1显示，0不显示',
  PRIMARY KEY (`ad_id`),
  KEY `ad_name` (`ad_name`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
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
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
DROP TABLE IF EXISTS `com_auth_access`;
CREATE TABLE `com_auth_access` (
  `role_id` mediumint(8) unsigned NOT NULL COMMENT '角色',
  `rule_name` varchar(255) NOT NULL COMMENT '规则唯一英文标识,全小写',
  `type` varchar(30) DEFAULT NULL COMMENT '权限规则分类，请加应用前缀,如admin_',
  KEY `role_id` (`role_id`),
  KEY `rule_name` (`rule_name`) USING BTREE
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
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
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
INSERT INTO com_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('1','Admin','admin_url','admin/content/default','','内容管理','1','');
INSERT INTO com_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('2','Api','admin_url','api/guestbookadmin/index','','所有留言','1','');
INSERT INTO com_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('3','Api','admin_url','api/guestbookadmin/delete','','删除网站留言','1','');
INSERT INTO com_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('4','Comment','admin_url','comment/commentadmin/index','','评论管理','1','');
INSERT INTO com_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('5','Comment','admin_url','comment/commentadmin/delete','','删除评论','1','');
INSERT INTO com_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('6','Comment','admin_url','comment/commentadmin/check','','评论审核','1','');
INSERT INTO com_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('7','Portal','admin_url','portal/adminpost/index','','文章管理','1','');
INSERT INTO com_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('8','Portal','admin_url','portal/adminpost/listorders','','文章排序','1','');
INSERT INTO com_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('9','Portal','admin_url','portal/adminpost/top','','文章置顶','1','');
INSERT INTO com_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('10','Portal','admin_url','portal/adminpost/recommend','','文章推荐','1','');
INSERT INTO com_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('11','Portal','admin_url','portal/adminpost/move','','批量移动','1','');
INSERT INTO com_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('12','Portal','admin_url','portal/adminpost/check','','文章审核','1','');
INSERT INTO com_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('13','Portal','admin_url','portal/adminpost/delete','','删除文章','1','');
INSERT INTO com_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('14','Portal','admin_url','portal/adminpost/edit','','编辑文章','1','');
INSERT INTO com_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('15','Portal','admin_url','portal/adminpost/edit_post','','提交编辑','1','');
INSERT INTO com_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('16','Portal','admin_url','portal/adminpost/add','','添加文章','1','');
INSERT INTO com_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('17','Portal','admin_url','portal/adminpost/add_post','','提交添加','1','');
INSERT INTO com_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('18','Portal','admin_url','portal/adminterm/index','','分类管理','1','');
INSERT INTO com_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('19','Portal','admin_url','portal/adminterm/listorders','','文章分类排序','1','');
INSERT INTO com_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('20','Portal','admin_url','portal/adminterm/delete','','删除分类','1','');
INSERT INTO com_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('21','Portal','admin_url','portal/adminterm/edit','','编辑分类','1','');
INSERT INTO com_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('22','Portal','admin_url','portal/adminterm/edit_post','','提交编辑','1','');
INSERT INTO com_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('23','Portal','admin_url','portal/adminterm/add','','添加分类','1','');
INSERT INTO com_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('24','Portal','admin_url','portal/adminterm/add_post','','提交添加','1','');
INSERT INTO com_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('25','Portal','admin_url','portal/adminpage/index','','页面管理','1','');
INSERT INTO com_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('26','Portal','admin_url','portal/adminpage/listorders','','页面排序','1','');
INSERT INTO com_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('27','Portal','admin_url','portal/adminpage/delete','','删除页面','1','');
INSERT INTO com_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('28','Portal','admin_url','portal/adminpage/edit','','编辑页面','1','');
INSERT INTO com_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('29','Portal','admin_url','portal/adminpage/edit_post','','提交编辑','1','');
INSERT INTO com_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('30','Portal','admin_url','portal/adminpage/add','','添加页面','1','');
INSERT INTO com_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('31','Portal','admin_url','portal/adminpage/add_post','','提交添加','1','');
INSERT INTO com_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('32','Admin','admin_url','admin/recycle/default','','回收站','1','');
INSERT INTO com_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('33','Portal','admin_url','portal/adminpost/recyclebin','','文章回收','1','');
INSERT INTO com_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('34','Portal','admin_url','portal/adminpost/restore','','文章还原','1','');
INSERT INTO com_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('35','Portal','admin_url','portal/adminpost/clean','','彻底删除','1','');
INSERT INTO com_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('36','Portal','admin_url','portal/adminpage/recyclebin','','页面回收','1','');
INSERT INTO com_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('37','Portal','admin_url','portal/adminpage/clean','','彻底删除','1','');
INSERT INTO com_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('38','Portal','admin_url','portal/adminpage/restore','','页面还原','1','');
INSERT INTO com_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('39','Admin','admin_url','admin/extension/default','','扩展工具','1','');
INSERT INTO com_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('40','Admin','admin_url','admin/backup/default','','备份管理','1','');
INSERT INTO com_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('41','Admin','admin_url','admin/backup/restore','','数据还原','1','');
INSERT INTO com_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('42','Admin','admin_url','admin/backup/index','','数据备份','1','');
INSERT INTO com_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('43','Admin','admin_url','admin/backup/index_post','','提交数据备份','1','');
INSERT INTO com_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('44','Admin','admin_url','admin/backup/download','','下载备份','1','');
INSERT INTO com_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('45','Admin','admin_url','admin/backup/del_backup','','删除备份','1','');
INSERT INTO com_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('46','Admin','admin_url','admin/backup/import','','数据备份导入','1','');
INSERT INTO com_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('47','Admin','admin_url','admin/plugin/index','','插件管理','1','');
INSERT INTO com_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('48','Admin','admin_url','admin/plugin/toggle','','插件启用切换','1','');
INSERT INTO com_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('49','Admin','admin_url','admin/plugin/setting','','插件设置','1','');
INSERT INTO com_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('50','Admin','admin_url','admin/plugin/setting_post','','插件设置提交','1','');
INSERT INTO com_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('51','Admin','admin_url','admin/plugin/install','','插件安装','1','');
INSERT INTO com_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('52','Admin','admin_url','admin/plugin/uninstall','','插件卸载','1','');
INSERT INTO com_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('53','Admin','admin_url','admin/slide/default','','幻灯片','1','');
INSERT INTO com_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('54','Admin','admin_url','admin/slide/index','','幻灯片管理','1','');
INSERT INTO com_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('55','Admin','admin_url','admin/slide/listorders','','幻灯片排序','1','');
INSERT INTO com_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('56','Admin','admin_url','admin/slide/toggle','','幻灯片显示切换','1','');
INSERT INTO com_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('57','Admin','admin_url','admin/slide/delete','','删除幻灯片','1','');
INSERT INTO com_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('58','Admin','admin_url','admin/slide/edit','','编辑幻灯片','1','');
INSERT INTO com_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('59','Admin','admin_url','admin/slide/edit_post','','提交编辑','1','');
INSERT INTO com_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('60','Admin','admin_url','admin/slide/add','','添加幻灯片','1','');
INSERT INTO com_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('61','Admin','admin_url','admin/slide/add_post','','提交添加','1','');
INSERT INTO com_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('62','Admin','admin_url','admin/slidecat/index','','幻灯片分类','1','');
INSERT INTO com_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('63','Admin','admin_url','admin/slidecat/delete','','删除分类','1','');
INSERT INTO com_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('64','Admin','admin_url','admin/slidecat/edit','','编辑分类','1','');
INSERT INTO com_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('65','Admin','admin_url','admin/slidecat/edit_post','','提交编辑','1','');
INSERT INTO com_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('66','Admin','admin_url','admin/slidecat/add','','添加分类','1','');
INSERT INTO com_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('67','Admin','admin_url','admin/slidecat/add_post','','提交添加','1','');
INSERT INTO com_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('68','Admin','admin_url','admin/ad/index','','网站广告','1','');
INSERT INTO com_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('69','Admin','admin_url','admin/ad/toggle','','广告显示切换','1','');
INSERT INTO com_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('70','Admin','admin_url','admin/ad/delete','','删除广告','1','');
INSERT INTO com_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('71','Admin','admin_url','admin/ad/edit','','编辑广告','1','');
INSERT INTO com_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('72','Admin','admin_url','admin/ad/edit_post','','提交编辑','1','');
INSERT INTO com_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('73','Admin','admin_url','admin/ad/add','','添加广告','1','');
INSERT INTO com_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('74','Admin','admin_url','admin/ad/add_post','','提交添加','1','');
INSERT INTO com_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('75','Admin','admin_url','admin/link/index','','友情链接','1','');
INSERT INTO com_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('76','Admin','admin_url','admin/link/listorders','','友情链接排序','1','');
INSERT INTO com_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('77','Admin','admin_url','admin/link/toggle','','友链显示切换','1','');
INSERT INTO com_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('78','Admin','admin_url','admin/link/delete','','删除友情链接','1','');
INSERT INTO com_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('79','Admin','admin_url','admin/link/edit','','编辑友情链接','1','');
INSERT INTO com_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('80','Admin','admin_url','admin/link/edit_post','','提交编辑','1','');
INSERT INTO com_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('81','Admin','admin_url','admin/link/add','','添加友情链接','1','');
INSERT INTO com_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('82','Admin','admin_url','admin/link/add_post','','提交添加','1','');
INSERT INTO com_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('83','Api','admin_url','api/oauthadmin/setting','','第三方登陆','1','');
INSERT INTO com_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('84','Api','admin_url','api/oauthadmin/setting_post','','提交设置','1','');
INSERT INTO com_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('85','Admin','admin_url','admin/menu/default','','菜单管理','1','');
INSERT INTO com_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('86','Admin','admin_url','admin/navcat/default1','','前台菜单','1','');
INSERT INTO com_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('87','Admin','admin_url','admin/nav/index','','菜单管理','1','');
INSERT INTO com_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('88','Admin','admin_url','admin/nav/listorders','','前台导航排序','1','');
INSERT INTO com_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('89','Admin','admin_url','admin/nav/delete','','删除菜单','1','');
INSERT INTO com_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('90','Admin','admin_url','admin/nav/edit','','编辑菜单','1','');
INSERT INTO com_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('91','Admin','admin_url','admin/nav/edit_post','','提交编辑','1','');
INSERT INTO com_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('92','Admin','admin_url','admin/nav/add','','添加菜单','1','');
INSERT INTO com_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('93','Admin','admin_url','admin/nav/add_post','','提交添加','1','');
INSERT INTO com_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('94','Admin','admin_url','admin/navcat/index','','菜单分类','1','');
INSERT INTO com_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('95','Admin','admin_url','admin/navcat/delete','','删除分类','1','');
INSERT INTO com_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('96','Admin','admin_url','admin/navcat/edit','','编辑分类','1','');
INSERT INTO com_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('97','Admin','admin_url','admin/navcat/edit_post','','提交编辑','1','');
INSERT INTO com_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('98','Admin','admin_url','admin/navcat/add','','添加分类','1','');
INSERT INTO com_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('99','Admin','admin_url','admin/navcat/add_post','','提交添加','1','');
INSERT INTO com_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('100','Admin','admin_url','admin/menu/index','','后台菜单','1','');
INSERT INTO com_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('101','Admin','admin_url','admin/menu/add','','添加菜单','1','');
INSERT INTO com_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('102','Admin','admin_url','admin/menu/add_post','','提交添加','1','');
INSERT INTO com_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('103','Admin','admin_url','admin/menu/listorders','','后台菜单排序','1','');
INSERT INTO com_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('104','Admin','admin_url','admin/menu/export_menu','','菜单备份','1','');
INSERT INTO com_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('105','Admin','admin_url','admin/menu/edit','','编辑菜单','1','');
INSERT INTO com_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('106','Admin','admin_url','admin/menu/edit_post','','提交编辑','1','');
INSERT INTO com_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('107','Admin','admin_url','admin/menu/delete','','删除菜单','1','');
INSERT INTO com_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('108','Admin','admin_url','admin/menu/lists','','所有菜单','1','');
INSERT INTO com_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('109','Admin','admin_url','admin/setting/default','','设置','1','');
INSERT INTO com_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('110','Admin','admin_url','admin/setting/userdefault','','个人信息','1','');
INSERT INTO com_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('111','Admin','admin_url','admin/user/userinfo','','修改信息','1','');
INSERT INTO com_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('112','Admin','admin_url','admin/user/userinfo_post','','修改信息提交','1','');
INSERT INTO com_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('113','Admin','admin_url','admin/setting/password','','修改密码','1','');
INSERT INTO com_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('114','Admin','admin_url','admin/setting/password_post','','提交修改','1','');
INSERT INTO com_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('115','Admin','admin_url','admin/setting/site','','网站信息','1','');
INSERT INTO com_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('116','Admin','admin_url','admin/setting/site_post','','提交修改','1','');
INSERT INTO com_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('117','Admin','admin_url','admin/route/index','','路由列表','1','');
INSERT INTO com_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('118','Admin','admin_url','admin/route/add','','路由添加','1','');
INSERT INTO com_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('119','Admin','admin_url','admin/route/add_post','','路由添加提交','1','');
INSERT INTO com_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('120','Admin','admin_url','admin/route/edit','','路由编辑','1','');
INSERT INTO com_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('121','Admin','admin_url','admin/route/edit_post','','路由编辑提交','1','');
INSERT INTO com_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('122','Admin','admin_url','admin/route/delete','','路由删除','1','');
INSERT INTO com_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('123','Admin','admin_url','admin/route/ban','','路由禁止','1','');
INSERT INTO com_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('124','Admin','admin_url','admin/route/open','','路由启用','1','');
INSERT INTO com_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('125','Admin','admin_url','admin/route/listorders','','路由排序','1','');
INSERT INTO com_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('126','Admin','admin_url','admin/mailer/default','','邮箱配置','1','');
INSERT INTO com_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('127','Admin','admin_url','admin/mailer/index','','SMTP配置','1','');
INSERT INTO com_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('128','Admin','admin_url','admin/mailer/index_post','','提交配置','1','');
INSERT INTO com_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('129','Admin','admin_url','admin/mailer/active','','邮件模板','1','');
INSERT INTO com_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('130','Admin','admin_url','admin/mailer/active_post','','提交模板','1','');
INSERT INTO com_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('131','Admin','admin_url','admin/setting/clearcache','','清除缓存','1','');
INSERT INTO com_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('132','User','admin_url','user/indexadmin/default','','用户管理','1','');
INSERT INTO com_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('133','User','admin_url','user/indexadmin/default1','','用户组','1','');
INSERT INTO com_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('134','User','admin_url','user/indexadmin/index','','本站用户','1','');
INSERT INTO com_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('135','User','admin_url','user/indexadmin/ban','','拉黑会员','1','');
INSERT INTO com_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('136','User','admin_url','user/indexadmin/cancelban','','启用会员','1','');
INSERT INTO com_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('137','User','admin_url','user/oauthadmin/index','','第三方用户','1','');
INSERT INTO com_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('138','User','admin_url','user/oauthadmin/delete','','第三方用户解绑','1','');
INSERT INTO com_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('139','User','admin_url','user/indexadmin/default3','','管理组','1','');
INSERT INTO com_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('140','Admin','admin_url','admin/rbac/index','','角色管理','1','');
INSERT INTO com_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('141','Admin','admin_url','admin/rbac/member','','成员管理','1','');
INSERT INTO com_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('142','Admin','admin_url','admin/rbac/authorize','','权限设置','1','');
INSERT INTO com_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('143','Admin','admin_url','admin/rbac/authorize_post','','提交设置','1','');
INSERT INTO com_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('144','Admin','admin_url','admin/rbac/roleedit','','编辑角色','1','');
INSERT INTO com_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('145','Admin','admin_url','admin/rbac/roleedit_post','','提交编辑','1','');
INSERT INTO com_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('146','Admin','admin_url','admin/rbac/roledelete','','删除角色','1','');
INSERT INTO com_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('147','Admin','admin_url','admin/rbac/roleadd','','添加角色','1','');
INSERT INTO com_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('148','Admin','admin_url','admin/rbac/roleadd_post','','提交添加','1','');
INSERT INTO com_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('149','Admin','admin_url','admin/user/index','','管理员','1','');
INSERT INTO com_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('150','Admin','admin_url','admin/user/delete','','删除管理员','1','');
INSERT INTO com_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('151','Admin','admin_url','admin/user/edit','','管理员编辑','1','');
INSERT INTO com_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('152','Admin','admin_url','admin/user/edit_post','','编辑提交','1','');
INSERT INTO com_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('153','Admin','admin_url','admin/user/add','','管理员添加','1','');
INSERT INTO com_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('154','Admin','admin_url','admin/user/add_post','','添加提交','1','');
INSERT INTO com_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('155','Admin','admin_url','admin/plugin/update','','插件更新','1','');
INSERT INTO com_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('156','Admin','admin_url','admin/storage/index','','文件存储','1','');
INSERT INTO com_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('157','Admin','admin_url','admin/storage/setting_post','','文件存储设置提交','1','');
INSERT INTO com_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('158','Admin','admin_url','admin/slide/ban','','禁用幻灯片','1','');
INSERT INTO com_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('159','Admin','admin_url','admin/slide/cancelban','','启用幻灯片','1','');
INSERT INTO com_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('160','Admin','admin_url','admin/user/ban','','禁用管理员','1','');
INSERT INTO com_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('161','Admin','admin_url','admin/user/cancelban','','启用管理员','1','');
INSERT INTO com_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('162','Admin','admin_url','admin/variable/index','','变量管理','1','');
INSERT INTO com_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('163','Portal','admin_url','portal/adminproduct/index','','产品管理','1','');
INSERT INTO com_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('164','Portal','admin_url','portal/adminjob/index','','招聘管理','1','');
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
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
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
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
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
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
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
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
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
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
INSERT INTO com_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('1','0','Admin','Content','default','','0','1','内容管理','th','','30');
INSERT INTO com_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('2','1','Api','Guestbookadmin','index','','1','1','所有留言','','','0');
INSERT INTO com_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('3','2','Api','Guestbookadmin','delete','','1','0','删除网站留言','','','0');
INSERT INTO com_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('4','1','Comment','Commentadmin','index','','1','0','评论管理','','','0');
INSERT INTO com_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('5','4','Comment','Commentadmin','delete','','1','0','删除评论','','','0');
INSERT INTO com_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('6','4','Comment','Commentadmin','check','','1','0','评论审核','','','0');
INSERT INTO com_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('7','1','Portal','AdminPost','index','','1','1','文章管理','','','1');
INSERT INTO com_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('8','7','Portal','AdminPost','listorders','','1','0','文章排序','','','0');
INSERT INTO com_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('9','7','Portal','AdminPost','top','','1','0','文章置顶','','','0');
INSERT INTO com_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('10','7','Portal','AdminPost','recommend','','1','0','文章推荐','','','0');
INSERT INTO com_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('11','7','Portal','AdminPost','move','','1','0','批量移动','','','1000');
INSERT INTO com_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('12','7','Portal','AdminPost','check','','1','0','文章审核','','','1000');
INSERT INTO com_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('13','7','Portal','AdminPost','delete','','1','0','删除文章','','','1000');
INSERT INTO com_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('14','7','Portal','AdminPost','edit','','1','0','编辑文章','','','1000');
INSERT INTO com_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('15','14','Portal','AdminPost','edit_post','','1','0','提交编辑','','','0');
INSERT INTO com_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('16','7','Portal','AdminPost','add','','1','0','添加文章','','','1000');
INSERT INTO com_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('17','16','Portal','AdminPost','add_post','','1','0','提交添加','','','0');
INSERT INTO com_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('18','1','Portal','AdminTerm','index','','0','1','分类管理','','','2');
INSERT INTO com_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('19','18','Portal','AdminTerm','listorders','','1','0','文章分类排序','','','0');
INSERT INTO com_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('20','18','Portal','AdminTerm','delete','','1','0','删除分类','','','1000');
INSERT INTO com_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('21','18','Portal','AdminTerm','edit','','1','0','编辑分类','','','1000');
INSERT INTO com_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('22','21','Portal','AdminTerm','edit_post','','1','0','提交编辑','','','0');
INSERT INTO com_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('23','18','Portal','AdminTerm','add','','1','0','添加分类','','','1000');
INSERT INTO com_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('24','23','Portal','AdminTerm','add_post','','1','0','提交添加','','','0');
INSERT INTO com_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('25','1','Portal','AdminPage','index','','1','1','页面管理','','','3');
INSERT INTO com_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('26','25','Portal','AdminPage','listorders','','1','0','页面排序','','','0');
INSERT INTO com_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('27','25','Portal','AdminPage','delete','','1','0','删除页面','','','1000');
INSERT INTO com_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('28','25','Portal','AdminPage','edit','','1','0','编辑页面','','','1000');
INSERT INTO com_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('29','28','Portal','AdminPage','edit_post','','1','0','提交编辑','','','0');
INSERT INTO com_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('30','25','Portal','AdminPage','add','','1','0','添加页面','','','1000');
INSERT INTO com_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('31','30','Portal','AdminPage','add_post','','1','0','提交添加','','','0');
INSERT INTO com_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('32','1','Admin','Recycle','default','','1','1','回收站','','','4');
INSERT INTO com_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('33','32','Portal','AdminPost','recyclebin','','1','1','文章回收','','','0');
INSERT INTO com_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('34','33','Portal','AdminPost','restore','','1','0','文章还原','','','1000');
INSERT INTO com_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('35','33','Portal','AdminPost','clean','','1','0','彻底删除','','','1000');
INSERT INTO com_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('36','32','Portal','AdminPage','recyclebin','','1','1','页面回收','','','1');
INSERT INTO com_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('37','36','Portal','AdminPage','clean','','1','0','彻底删除','','','1000');
INSERT INTO com_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('38','36','Portal','AdminPage','restore','','1','0','页面还原','','','1000');
INSERT INTO com_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('39','0','Admin','Extension','default','','0','1','扩展工具','cloud','','40');
INSERT INTO com_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('40','39','Admin','Backup','default','','1','1','备份管理','','','0');
INSERT INTO com_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('41','40','Admin','Backup','restore','','1','1','数据还原','','','0');
INSERT INTO com_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('42','40','Admin','Backup','index','','1','1','数据备份','','','0');
INSERT INTO com_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('43','42','Admin','Backup','index_post','','1','0','提交数据备份','','','0');
INSERT INTO com_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('44','40','Admin','Backup','download','','1','0','下载备份','','','1000');
INSERT INTO com_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('45','40','Admin','Backup','del_backup','','1','0','删除备份','','','1000');
INSERT INTO com_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('46','40','Admin','Backup','import','','1','0','数据备份导入','','','1000');
INSERT INTO com_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('47','39','Admin','Plugin','index','','1','0','插件管理','','','0');
INSERT INTO com_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('48','47','Admin','Plugin','toggle','','1','0','插件启用切换','','','0');
INSERT INTO com_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('49','47','Admin','Plugin','setting','','1','0','插件设置','','','0');
INSERT INTO com_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('50','49','Admin','Plugin','setting_post','','1','0','插件设置提交','','','0');
INSERT INTO com_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('51','47','Admin','Plugin','install','','1','0','插件安装','','','0');
INSERT INTO com_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('52','47','Admin','Plugin','uninstall','','1','0','插件卸载','','','0');
INSERT INTO com_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('53','39','Admin','Slide','default','','1','1','幻灯片','','','1');
INSERT INTO com_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('54','53','Admin','Slide','index','','1','1','幻灯片管理','','','0');
INSERT INTO com_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('55','54','Admin','Slide','listorders','','1','0','幻灯片排序','','','0');
INSERT INTO com_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('56','54','Admin','Slide','toggle','','1','0','幻灯片显示切换','','','0');
INSERT INTO com_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('57','54','Admin','Slide','delete','','1','0','删除幻灯片','','','1000');
INSERT INTO com_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('58','54','Admin','Slide','edit','','1','0','编辑幻灯片','','','1000');
INSERT INTO com_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('59','58','Admin','Slide','edit_post','','1','0','提交编辑','','','0');
INSERT INTO com_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('60','54','Admin','Slide','add','','1','0','添加幻灯片','','','1000');
INSERT INTO com_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('61','60','Admin','Slide','add_post','','1','0','提交添加','','','0');
INSERT INTO com_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('62','53','Admin','Slidecat','index','','1','1','幻灯片分类','','','0');
INSERT INTO com_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('63','62','Admin','Slidecat','delete','','1','0','删除分类','','','1000');
INSERT INTO com_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('64','62','Admin','Slidecat','edit','','1','0','编辑分类','','','1000');
INSERT INTO com_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('65','64','Admin','Slidecat','edit_post','','1','0','提交编辑','','','0');
INSERT INTO com_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('66','62','Admin','Slidecat','add','','1','0','添加分类','','','1000');
INSERT INTO com_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('67','66','Admin','Slidecat','add_post','','1','0','提交添加','','','0');
INSERT INTO com_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('68','39','Admin','Ad','index','','1','1','网站广告','','','2');
INSERT INTO com_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('69','68','Admin','Ad','toggle','','1','0','广告显示切换','','','0');
INSERT INTO com_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('70','68','Admin','Ad','delete','','1','0','删除广告','','','1000');
INSERT INTO com_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('71','68','Admin','Ad','edit','','1','0','编辑广告','','','1000');
INSERT INTO com_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('72','71','Admin','Ad','edit_post','','1','0','提交编辑','','','0');
INSERT INTO com_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('73','68','Admin','Ad','add','','1','0','添加广告','','','1000');
INSERT INTO com_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('74','73','Admin','Ad','add_post','','1','0','提交添加','','','0');
INSERT INTO com_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('75','39','Admin','Link','index','','0','1','友情链接','','','3');
INSERT INTO com_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('76','75','Admin','Link','listorders','','1','0','友情链接排序','','','0');
INSERT INTO com_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('77','75','Admin','Link','toggle','','1','0','友链显示切换','','','0');
INSERT INTO com_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('78','75','Admin','Link','delete','','1','0','删除友情链接','','','1000');
INSERT INTO com_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('79','75','Admin','Link','edit','','1','0','编辑友情链接','','','1000');
INSERT INTO com_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('80','79','Admin','Link','edit_post','','1','0','提交编辑','','','0');
INSERT INTO com_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('81','75','Admin','Link','add','','1','0','添加友情链接','','','1000');
INSERT INTO com_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('82','81','Admin','Link','add_post','','1','0','提交添加','','','0');
INSERT INTO com_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('83','39','Api','Oauthadmin','setting','','1','0','第三方登陆','leaf','','4');
INSERT INTO com_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('84','83','Api','Oauthadmin','setting_post','','1','0','提交设置','','','0');
INSERT INTO com_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('85','0','Admin','Menu','default','','1','1','菜单管理','list','','20');
INSERT INTO com_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('86','85','Admin','Navcat','default1','','1','1','前台菜单','','','0');
INSERT INTO com_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('87','86','Admin','Nav','index','','1','1','菜单管理','','','0');
INSERT INTO com_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('88','87','Admin','Nav','listorders','','1','0','前台导航排序','','','0');
INSERT INTO com_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('89','87','Admin','Nav','delete','','1','0','删除菜单','','','1000');
INSERT INTO com_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('90','87','Admin','Nav','edit','','1','0','编辑菜单','','','1000');
INSERT INTO com_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('91','90','Admin','Nav','edit_post','','1','0','提交编辑','','','0');
INSERT INTO com_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('92','87','Admin','Nav','add','','1','0','添加菜单','','','1000');
INSERT INTO com_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('93','92','Admin','Nav','add_post','','1','0','提交添加','','','0');
INSERT INTO com_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('94','86','Admin','Navcat','index','','1','1','菜单分类','','','0');
INSERT INTO com_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('95','94','Admin','Navcat','delete','','1','0','删除分类','','','1000');
INSERT INTO com_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('96','94','Admin','Navcat','edit','','1','0','编辑分类','','','1000');
INSERT INTO com_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('97','96','Admin','Navcat','edit_post','','1','0','提交编辑','','','0');
INSERT INTO com_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('98','94','Admin','Navcat','add','','1','0','添加分类','','','1000');
INSERT INTO com_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('99','98','Admin','Navcat','add_post','','1','0','提交添加','','','0');
INSERT INTO com_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('100','85','Admin','Menu','index','','1','1','后台菜单','','','0');
INSERT INTO com_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('101','100','Admin','Menu','add','','1','0','添加菜单','','','0');
INSERT INTO com_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('102','101','Admin','Menu','add_post','','1','0','提交添加','','','0');
INSERT INTO com_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('103','100','Admin','Menu','listorders','','1','0','后台菜单排序','','','0');
INSERT INTO com_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('104','100','Admin','Menu','export_menu','','1','0','菜单备份','','','1000');
INSERT INTO com_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('105','100','Admin','Menu','edit','','1','0','编辑菜单','','','1000');
INSERT INTO com_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('106','105','Admin','Menu','edit_post','','1','0','提交编辑','','','0');
INSERT INTO com_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('107','100','Admin','Menu','delete','','1','0','删除菜单','','','1000');
INSERT INTO com_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('108','100','Admin','Menu','lists','','1','0','所有菜单','','','1000');
INSERT INTO com_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('109','0','Admin','Setting','default','','0','1','设置','cogs','','0');
INSERT INTO com_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('110','109','Admin','Setting','userdefault','','0','1','个人信息','','','0');
INSERT INTO com_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('111','110','Admin','User','userinfo','','1','1','修改信息','','','0');
INSERT INTO com_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('112','111','Admin','User','userinfo_post','','1','0','修改信息提交','','','0');
INSERT INTO com_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('113','110','Admin','Setting','password','','1','1','修改密码','','','0');
INSERT INTO com_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('114','113','Admin','Setting','password_post','','1','0','提交修改','','','0');
INSERT INTO com_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('115','109','Admin','Setting','site','','1','1','网站信息','','','0');
INSERT INTO com_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('116','115','Admin','Setting','site_post','','1','0','提交修改','','','0');
INSERT INTO com_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('117','115','Admin','Route','index','','1','0','路由列表','','','0');
INSERT INTO com_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('118','115','Admin','Route','add','','1','0','路由添加','','','0');
INSERT INTO com_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('119','118','Admin','Route','add_post','','1','0','路由添加提交','','','0');
INSERT INTO com_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('120','115','Admin','Route','edit','','1','0','路由编辑','','','0');
INSERT INTO com_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('121','120','Admin','Route','edit_post','','1','0','路由编辑提交','','','0');
INSERT INTO com_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('122','115','Admin','Route','delete','','1','0','路由删除','','','0');
INSERT INTO com_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('123','115','Admin','Route','ban','','1','0','路由禁止','','','0');
INSERT INTO com_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('124','115','Admin','Route','open','','1','0','路由启用','','','0');
INSERT INTO com_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('125','115','Admin','Route','listorders','','1','0','路由排序','','','0');
INSERT INTO com_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('126','109','Admin','Mailer','default','','1','1','邮箱配置','','','0');
INSERT INTO com_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('127','126','Admin','Mailer','index','','1','1','SMTP配置','','','0');
INSERT INTO com_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('128','127','Admin','Mailer','index_post','','1','0','提交配置','','','0');
INSERT INTO com_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('129','126','Admin','Mailer','active','','1','1','邮件模板','','','0');
INSERT INTO com_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('130','129','Admin','Mailer','active_post','','1','0','提交模板','','','0');
INSERT INTO com_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('131','109','Admin','Setting','clearcache','','1','1','清除缓存','','','1');
INSERT INTO com_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('132','0','User','Indexadmin','default','','1','1','用户管理','group','','10');
INSERT INTO com_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('133','132','User','Indexadmin','default1','','1','1','用户组','','','0');
INSERT INTO com_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('134','133','User','Indexadmin','index','','1','1','本站用户','leaf','','0');
INSERT INTO com_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('135','134','User','Indexadmin','ban','','1','0','拉黑会员','','','0');
INSERT INTO com_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('136','134','User','Indexadmin','cancelban','','1','0','启用会员','','','0');
INSERT INTO com_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('137','133','User','Oauthadmin','index','','1','1','第三方用户','leaf','','0');
INSERT INTO com_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('138','137','User','Oauthadmin','delete','','1','0','第三方用户解绑','','','0');
INSERT INTO com_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('139','132','User','Indexadmin','default3','','1','1','管理组','','','0');
INSERT INTO com_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('140','139','Admin','Rbac','index','','1','1','角色管理','','','0');
INSERT INTO com_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('141','140','Admin','Rbac','member','','1','0','成员管理','','','1000');
INSERT INTO com_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('142','140','Admin','Rbac','authorize','','1','0','权限设置','','','1000');
INSERT INTO com_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('143','142','Admin','Rbac','authorize_post','','1','0','提交设置','','','0');
INSERT INTO com_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('144','140','Admin','Rbac','roleedit','','1','0','编辑角色','','','1000');
INSERT INTO com_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('145','144','Admin','Rbac','roleedit_post','','1','0','提交编辑','','','0');
INSERT INTO com_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('146','140','Admin','Rbac','roledelete','','1','1','删除角色','','','1000');
INSERT INTO com_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('147','140','Admin','Rbac','roleadd','','1','1','添加角色','','','1000');
INSERT INTO com_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('148','147','Admin','Rbac','roleadd_post','','1','0','提交添加','','','0');
INSERT INTO com_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('149','139','Admin','User','index','','1','1','管理员','','','0');
INSERT INTO com_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('150','149','Admin','User','delete','','1','0','删除管理员','','','1000');
INSERT INTO com_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('151','149','Admin','User','edit','','1','0','管理员编辑','','','1000');
INSERT INTO com_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('152','151','Admin','User','edit_post','','1','0','编辑提交','','','0');
INSERT INTO com_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('153','149','Admin','User','add','','1','0','管理员添加','','','1000');
INSERT INTO com_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('154','153','Admin','User','add_post','','1','0','添加提交','','','0');
INSERT INTO com_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('155','47','Admin','Plugin','update','','1','0','插件更新','','','0');
INSERT INTO com_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('156','39','Admin','Storage','index','','1','0','文件存储','','','0');
INSERT INTO com_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('157','156','Admin','Storage','setting_post','','1','0','文件存储设置提交','','','0');
INSERT INTO com_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('158','54','Admin','Slide','ban','','1','0','禁用幻灯片','','','0');
INSERT INTO com_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('159','54','Admin','Slide','cancelban','','1','0','启用幻灯片','','','0');
INSERT INTO com_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('160','149','Admin','User','ban','','1','0','禁用管理员','','','0');
INSERT INTO com_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('161','149','Admin','User','cancelban','','1','0','启用管理员','','','0');
INSERT INTO com_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('162','1','Admin','Variable','index','','1','1','变量管理','cog','','0');
INSERT INTO com_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('163','1','Portal','AdminProduct','index','','1','1','产品管理','','','0');
INSERT INTO com_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('164','1','Portal','AdminJob','index','','1','1','招聘管理','','','0');
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
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
INSERT INTO com_nav ( `id`, `cid`, `parentid`, `label`, `target`, `href`, `icon`, `status`, `listorder`, `path` ) VALUES  ('1','1','0','首页','','home','','1','0','0-1');
INSERT INTO com_nav ( `id`, `cid`, `parentid`, `label`, `target`, `href`, `icon`, `status`, `listorder`, `path` ) VALUES  ('6','1','0','人才招聘','','a:2:{s:6:\"action\";s:17:\"Portal/List/index\";s:5:\"param\";a:1:{s:2:\"id\";s:1:\"5\";}}','','1','3','0-6');
INSERT INTO com_nav ( `id`, `cid`, `parentid`, `label`, `target`, `href`, `icon`, `status`, `listorder`, `path` ) VALUES  ('7','1','0','关于我们','','a:2:{s:6:\"action\";s:17:\"Portal/Page/index\";s:5:\"param\";a:1:{s:2:\"id\";s:1:\"1\";}}','','1','4','0-7');
INSERT INTO com_nav ( `id`, `cid`, `parentid`, `label`, `target`, `href`, `icon`, `status`, `listorder`, `path` ) VALUES  ('4','1','0','产品&amp;服务','','a:2:{s:6:\"action\";s:17:\"Portal/List/index\";s:5:\"param\";a:1:{s:2:\"id\";s:1:\"3\";}}','','1','1','0-4');
INSERT INTO com_nav ( `id`, `cid`, `parentid`, `label`, `target`, `href`, `icon`, `status`, `listorder`, `path` ) VALUES  ('5','1','0','公司案例','','a:2:{s:6:\"action\";s:17:\"Portal/List/index\";s:5:\"param\";a:1:{s:2:\"id\";s:1:\"4\";}}','','1','2','0-5');
INSERT INTO com_nav ( `id`, `cid`, `parentid`, `label`, `target`, `href`, `icon`, `status`, `listorder`, `path` ) VALUES  ('8','1','7','公司简介','','a:2:{s:6:\"action\";s:17:\"Portal/Page/index\";s:5:\"param\";a:1:{s:2:\"id\";s:1:\"1\";}}','','1','0','0-7-8');
INSERT INTO com_nav ( `id`, `cid`, `parentid`, `label`, `target`, `href`, `icon`, `status`, `listorder`, `path` ) VALUES  ('11','1','7','联系我们','','a:2:{s:6:\"action\";s:17:\"Portal/Page/index\";s:5:\"param\";a:1:{s:2:\"id\";s:1:\"4\";}}','','1','0','0-7-11');
DROP TABLE IF EXISTS `com_nav_cat`;
CREATE TABLE `com_nav_cat` (
  `navcid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL COMMENT '导航分类名',
  `active` int(1) NOT NULL DEFAULT '1' COMMENT '是否为主菜单，1是，0不是',
  `remark` text COMMENT '备注',
  PRIMARY KEY (`navcid`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
INSERT INTO com_nav_cat ( `navcid`, `name`, `active`, `remark` ) VALUES  ('1','主导航','1','主导航');
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
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
DROP TABLE IF EXISTS `com_options`;
CREATE TABLE `com_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(64) NOT NULL COMMENT '配置名',
  `option_value` longtext NOT NULL COMMENT '配置值',
  `autoload` int(2) NOT NULL DEFAULT '1' COMMENT '是否自动加载',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
INSERT INTO com_options ( `option_id`, `option_name`, `option_value`, `autoload` ) VALUES  ('1','member_email_active','{\"title\":\"ThinkCMF\\u90ae\\u4ef6\\u6fc0\\u6d3b\\u901a\\u77e5.\",\"template\":\"<p>\\u672c\\u90ae\\u4ef6\\u6765\\u81ea<a href=\\\"http:\\/\\/www.thinkcmf.com\\\">ThinkCMF<\\/a><br\\/><br\\/>&nbsp; &nbsp;<strong>---------------<\\/strong><br\\/>&nbsp; &nbsp;<strong>\\u5e10\\u53f7\\u6fc0\\u6d3b\\u8bf4\\u660e<\\/strong><br\\/>&nbsp; &nbsp;<strong>---------------<\\/strong><br\\/><br\\/>&nbsp; &nbsp; \\u5c0a\\u656c\\u7684<span style=\\\"FONT-SIZE: 16px; FONT-FAMILY: Arial; COLOR: rgb(51,51,51); LINE-HEIGHT: 18px; BACKGROUND-COLOR: rgb(255,255,255)\\\">#username#\\uff0c\\u60a8\\u597d\\u3002<\\/span>\\u5982\\u679c\\u60a8\\u662fThinkCMF\\u7684\\u65b0\\u7528\\u6237\\uff0c\\u6216\\u5728\\u4fee\\u6539\\u60a8\\u7684\\u6ce8\\u518cEmail\\u65f6\\u4f7f\\u7528\\u4e86\\u672c\\u5730\\u5740\\uff0c\\u6211\\u4eec\\u9700\\u8981\\u5bf9\\u60a8\\u7684\\u5730\\u5740\\u6709\\u6548\\u6027\\u8fdb\\u884c\\u9a8c\\u8bc1\\u4ee5\\u907f\\u514d\\u5783\\u573e\\u90ae\\u4ef6\\u6216\\u5730\\u5740\\u88ab\\u6ee5\\u7528\\u3002<br\\/>&nbsp; &nbsp; \\u60a8\\u53ea\\u9700\\u70b9\\u51fb\\u4e0b\\u9762\\u7684\\u94fe\\u63a5\\u5373\\u53ef\\u6fc0\\u6d3b\\u60a8\\u7684\\u5e10\\u53f7\\uff1a<br\\/>&nbsp; &nbsp; <a title=\\\"\\\" href=\\\"http:\\/\\/#link#\\\" target=\\\"_self\\\">http:\\/\\/#link#<\\/a><br\\/>&nbsp; &nbsp; (\\u5982\\u679c\\u4e0a\\u9762\\u4e0d\\u662f\\u94fe\\u63a5\\u5f62\\u5f0f\\uff0c\\u8bf7\\u5c06\\u8be5\\u5730\\u5740\\u624b\\u5de5\\u7c98\\u8d34\\u5230\\u6d4f\\u89c8\\u5668\\u5730\\u5740\\u680f\\u518d\\u8bbf\\u95ee)<br\\/>&nbsp; &nbsp; \\u611f\\u8c22\\u60a8\\u7684\\u8bbf\\u95ee\\uff0c\\u795d\\u60a8\\u4f7f\\u7528\\u6109\\u5feb\\uff01<br\\/><br\\/>&nbsp; &nbsp; \\u6b64\\u81f4<br\\/>&nbsp; &nbsp; ThinkCMF \\u7ba1\\u7406\\u56e2\\u961f.<\\/p>\"}','1');
INSERT INTO com_options ( `option_id`, `option_name`, `option_value`, `autoload` ) VALUES  ('2','site_options','{\"site_name\":\"sharingany\",\"site_host\":\"http:\\/\\/www.sharingany.com\\/\",\"site_admin_url_password\":\"\",\"site_tpl\":\"sharingany\",\"site_adminstyle\":\"flat\",\"site_icp\":\"\\u95fdICP\\u590715015670\",\"site_admin_email\":\"admin@sharingany.com\",\"site_tongji\":\"<script type=\\\"text\\/javascript\\\">var cnzz_protocol = ((\\\"https:\\\" == document.location.protocol) ? \\\" https:\\/\\/\\\" : \\\" http:\\/\\/\\\");document.write(unescape(\\\"%3Cspan id=\'cnzz_stat_icon_1260008575\'%3E%3C\\/span%3E%3Cscript src=\'\\\" + cnzz_protocol + \\\"s95.cnzz.com\\/z_stat.php%3Fid%3D1260008575%26show%3Dpic1\' type=\'text\\/javascript\'%3E%3C\\/script%3E\\\"));<\\/script>\",\"site_copyright\":\"Copyright@2015-2016 \\u798f\\u5efa \\u2022 \\u4f17\\u4eab\\u7f51\\u7edc\\u79d1\\u6280\\u6709\\u9650\\u516c\\u53f8  \\u7248\\u6743\\u6240\\u6709 \",\"site_seo_title\":\"\\u4e92\\u8054\\u7f51\\u521b\\u65b0\\u6280\\u672f\\u670d\\u52a1\\u89e3\\u51b3\\u65b9\\u6848 \\u798f\\u5efa \\u2022 \\u4f17\\u4eab\\u7f51\\u7edc\\u79d1\\u6280\\u6709\\u9650\\u516c\\u53f8\",\"site_seo_keywords\":\"\\u4e92\\u8054\\u7f51,\\u4f17\\u4eab\\u7f51\\u7edc,\\u521b\\u65b0\\u6280\\u672f\\uff0c\\u6280\\u672f\\u89e3\\u51b3\\u65b9\\u6848\\u63d0\\u4f9b\\u5546\",\"site_seo_description\":\"\\u798f\\u5efa \\u2022 \\u4f17\\u4eab\\u7f51\\u7edc\\u79d1\\u6280\\u6709\\u9650\\u516c\\u53f8\\uff0c\\u4e92\\u8054\\u7f51\\u521b\\u65b0\\u6280\\u672f\\u670d\\u52a1\\u89e3\\u51b3\\u65b9\\u6848 \",\"urlmode\":\"1\",\"html_suffix\":\"\",\"comment_time_interval\":60}','1');
INSERT INTO com_options ( `option_id`, `option_name`, `option_value`, `autoload` ) VALUES  ('3','cmf_settings','{\"banned_usernames\":\"\"}','1');
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
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
DROP TABLE IF EXISTS `com_posts`;
CREATE TABLE `com_posts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned DEFAULT '0' COMMENT '发表者id',
  `post_keywords` varchar(150) NOT NULL COMMENT 'seo keywords',
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
  `post_type` int(2) DEFAULT NULL,
  `post_mime_type` varchar(100) DEFAULT '',
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
  `zp_zhize` longtext NOT NULL COMMENT '工作职责',
  `zp_address` varchar(255) DEFAULT NULL COMMENT '工作地点',
  PRIMARY KEY (`id`),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`id`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`),
  KEY `post_date` (`post_date`) USING BTREE
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
INSERT INTO com_posts ( `id`, `post_author`, `post_keywords`, `post_source`, `post_date`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `post_modified`, `post_content_filtered`, `post_parent`, `post_type`, `post_mime_type`, `comment_count`, `smeta`, `post_hits`, `post_like`, `istop`, `recommended`, `product`, `price`, `functionss`, `flow`, `zp_count`, `zp_date`, `zp_xuanshang`, `zp_gangwei`, `zp_xssm`, `zp_zhize`, `zp_address` ) VALUES  ('1','1','众享网络科技  公司简介','','2016-07-20 21:41:56','<div class=\"fzlc\"><div class=\"title abstracttitle\"></div><div class=\"ovhide mt31 abstract_at\"><div class=\"abstract_s1\"><div class=\"f_l w800\"><p style=\"line-height: 1.75em;\"><span style=\"font-size: 18px;\">众享网络科技有限公司(www.sharingany.com 简称众享），是一家以互联网领域创新型软件产品研发及配套服务为主快速发展的高新IT技术创新企业。致力于行业领域的软件研发、解决方案集成及运行维护服务，并已构建起完整的IT服务价值链，为客户提供端到端的IT信息化服务。</span></p><p><span style=\"font-size: 18px;\">公司目前提供三大服务：创新模式互联网+软件产品，政务与行业软件产品，移动互联网互动营销服务。从技术、营销、商业模式各方面提供全方位的创新服务，助力企业互联网+升级。拥有多年的专业历程及互联网核心技术沉淀&nbsp;，十余款互联网创新产品自主知识产权，互联网领域10余年从业经验的专业团队。</span></p><p style=\"margin-top:0;margin-bottom:0;text-align:left;direction:ltr;unicode-bidi:embed;vertical-align:baseline\"><span style=\"font-size: 18px;\">我们追求卓越的产品品质以及完美的用户服务体验，提倡“以技术创新、服务至上、专注极致为根本导向”。旨在为企业提供符合企业“互联网+”战略的软件产品设计、开发以及提供互动营销云服务，以技术创新驱动企业“互联网+”战略的落地。</span></p><p><br/> </p></div>﻿﻿<div style=\"max-width:370px;\" class=\"f_r\"><img alt=\"abstract_img1.png\" src=\"http://www.sharingany.com/data/upload/ueditor/20160903/57ca4848e825b.png\" title=\"暂无图片~~~\"/> </div><div class=\"blank\"></div></div><div class=\"blank15\"></div><div class=\"be_line\"></div><div class=\"blank15\"></div><div class=\"blank15\"></div><div class=\"blank30\"></div><div class=\"abstract_s3\"><div class=\"abstract_s3tit\"></div><div class=\"\"><div class=\"boxes\"><div class=\"box\"><div class=\"box_img abstract_s3img1\"></div><div class=\"box_txt\"><h1><span style=\"font-size: 36px;\">技术创新</span></h1><h2><span style=\"font-size: 18px;\">敏锐的技术前瞻性，引领技术创新潮流</span></h2><div class=\"blank15\"></div></div></div><div class=\"box\"><div class=\"box_img abstract_s3img2\"></div><div class=\"box_txt\"><h1><span style=\"font-size: 36px;\">极致服务</span></h1><h2><span style=\"font-size: 18px;\">为客户提供极致的思维、产品、服务</span></h2><div class=\"blank15\"></div></div></div><div class=\"box\"><div class=\"box_img abstract_s3img3\"></div><div class=\"box_txt\"><h1><span style=\"font-size: 36px;\">专注极致</span></h1><h2><span style=\"font-size: 18px;\">深耕互联网产业，坚持创新，精益求精</span></h2><div class=\"blank15\"></div></div></div><div class=\"blank\"></div></div></div></div><div class=\"blank30\"></div><div class=\"be_line\"></div><div class=\"blank30\"></div><div class=\"abstract_s5\"><div class=\"blank30\"></div><div class=\"abstract_s5tit\"></div><div class=\"blank20\"></div><div class=\"abstract_s5con\"><img alt=\"workplase.png\" src=\"http://www.sharingany.com/data/upload/ueditor/20160903/57ca3be54bbea.png\" title=\"workplase.png\"/> </div></div></div></div>','公司简介','众享网络科技  公司简介','1','1','2016-07-20 21:41:40','','0','2','','0','{\"template\":\"about\",\"thumb\":\"\"}','0','0','0','0','','','','','1','0000-00-00','','','','','');
INSERT INTO com_posts ( `id`, `post_author`, `post_keywords`, `post_source`, `post_date`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `post_modified`, `post_content_filtered`, `post_parent`, `post_type`, `post_mime_type`, `comment_count`, `smeta`, `post_hits`, `post_like`, `istop`, `recommended`, `product`, `price`, `functionss`, `flow`, `zp_count`, `zp_date`, `zp_xuanshang`, `zp_gangwei`, `zp_xssm`, `zp_zhize`, `zp_address` ) VALUES  ('14','1','web前端开发','','2016-09-04 16:58:16','','web前端工程师及助理工程师','','1','1','2016-09-01 16:57:00','','0','0','','0','{\"thumb\":\"\"}','7','0','1','1','','','','','1','2016-09-24','','<p>1111</p>','','<p>1111</p>','福州');
INSERT INTO com_posts ( `id`, `post_author`, `post_keywords`, `post_source`, `post_date`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `post_modified`, `post_content_filtered`, `post_parent`, `post_type`, `post_mime_type`, `comment_count`, `smeta`, `post_hits`, `post_like`, `istop`, `recommended`, `product`, `price`, `functionss`, `flow`, `zp_count`, `zp_date`, `zp_xuanshang`, `zp_gangwei`, `zp_xssm`, `zp_zhize`, `zp_address` ) VALUES  ('2','1','发展历程','','2016-07-20 21:42:13','<p>发展历程</p>','发展历程','发展历程','0','1','2016-07-20 21:41:58','','0','2','','0','{\"template\":\"page\",\"thumb\":\"\"}','0','0','0','0','','','','','1','0000-00-00','','','','','');
INSERT INTO com_posts ( `id`, `post_author`, `post_keywords`, `post_source`, `post_date`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `post_modified`, `post_content_filtered`, `post_parent`, `post_type`, `post_mime_type`, `comment_count`, `smeta`, `post_hits`, `post_like`, `istop`, `recommended`, `product`, `price`, `functionss`, `flow`, `zp_count`, `zp_date`, `zp_xuanshang`, `zp_gangwei`, `zp_xssm`, `zp_zhize`, `zp_address` ) VALUES  ('3','1','加入我们','','2016-07-20 21:42:26','<p>加入我们</p>','加入我们','加入我们','0','1','2016-07-20 21:42:15','','0','2','','0','{\"template\":\"page\",\"thumb\":\"\"}','0','0','0','0','','','','','1','0000-00-00','','','','','');
INSERT INTO com_posts ( `id`, `post_author`, `post_keywords`, `post_source`, `post_date`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `post_modified`, `post_content_filtered`, `post_parent`, `post_type`, `post_mime_type`, `comment_count`, `smeta`, `post_hits`, `post_like`, `istop`, `recommended`, `product`, `price`, `functionss`, `flow`, `zp_count`, `zp_date`, `zp_xuanshang`, `zp_gangwei`, `zp_xssm`, `zp_zhize`, `zp_address` ) VALUES  ('4','1','联系我们','','2016-07-20 21:42:39','<p>联系我们</p>','联系我们','联系我们','1','1','2016-07-20 21:42:27','','0','2','','0','{\"template\":\"contactus\",\"thumb\":\"\"}','0','0','0','0','','','','','1','0000-00-00','','','','','');
INSERT INTO com_posts ( `id`, `post_author`, `post_keywords`, `post_source`, `post_date`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `post_modified`, `post_content_filtered`, `post_parent`, `post_type`, `post_mime_type`, `comment_count`, `smeta`, `post_hits`, `post_like`, `istop`, `recommended`, `product`, `price`, `functionss`, `flow`, `zp_count`, `zp_date`, `zp_xuanshang`, `zp_gangwei`, `zp_xssm`, `zp_zhize`, `zp_address` ) VALUES  ('5','1','测试1','测试1','2016-07-22 21:47:40','<p><img src=\"http://www.sharingany.com/data/upload/ueditor/20160723/57937637d6c09.jpg\" title=\"001.jpg\" alt=\"001.jpg\"/></p>','测试1','测试1','1','1','2016-07-22 21:47:11','','0','0','','0','{\"thumb\":\"20160722\\/579223f568204.png\"}','25','0','0','0','','','','','1','0000-00-00','','','','','');
INSERT INTO com_posts ( `id`, `post_author`, `post_keywords`, `post_source`, `post_date`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `post_modified`, `post_content_filtered`, `post_parent`, `post_type`, `post_mime_type`, `comment_count`, `smeta`, `post_hits`, `post_like`, `istop`, `recommended`, `product`, `price`, `functionss`, `flow`, `zp_count`, `zp_date`, `zp_xuanshang`, `zp_gangwei`, `zp_xssm`, `zp_zhize`, `zp_address` ) VALUES  ('6','1','测试2','测试2','2016-07-22 21:54:35','<p>测试2</p>','测试2','测试2','1','1','2016-07-22 21:49:09','','0','0','','0','{\"thumb\":\"20160722\\/57922588f1748.png\"}','33','0','0','1','','','','','1','0000-00-00','','','','','');
INSERT INTO com_posts ( `id`, `post_author`, `post_keywords`, `post_source`, `post_date`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `post_modified`, `post_content_filtered`, `post_parent`, `post_type`, `post_mime_type`, `comment_count`, `smeta`, `post_hits`, `post_like`, `istop`, `recommended`, `product`, `price`, `functionss`, `flow`, `zp_count`, `zp_date`, `zp_xuanshang`, `zp_gangwei`, `zp_xssm`, `zp_zhize`, `zp_address` ) VALUES  ('7','1','','','2016-07-22 23:07:16','<p><span style=\"word-wrap: break-word;transition: all 0.3s;color: rgb(51, 51, 51);font-family: &#39;Microsoft YaHei&#39;;line-height: 24px;text-indent: 32px;background-color: rgb(255, 255, 255)\">方维科技，</span><span style=\"word-wrap: break-word;transition: all 0.3s;color: rgb(51, 51, 51);font-family: &#39;Microsoft YaHei&#39;;line-height: 24px;text-indent: 32px;background-color: rgb(255, 255, 255)\">2008</span><span style=\"word-wrap: break-word;transition: all 0.3s;color: rgb(51, 51, 51);font-family: &#39;Microsoft YaHei&#39;;line-height: 24px;text-indent: 32px;background-color: rgb(255, 255, 255)\">年成立，一直致力于互联网创新产品及解决方案的研究和开发，并以敏锐的商业嗅觉和快速的市场反应始终领跑在行业前列，本周正式宣布获得兴业资本首轮战略投资。</span></p>','领跑互联网创新产品及解决方案，方维获兴业资本首轮战略投资','方维科技，2008年成立，一直致力于互联网创新产品及解决方案的研究和开发，并以敏锐的商业嗅觉和快速的市场反应始终领跑在行业前列，本周正式宣布获得兴业资本首轮战略投资。','1','1','2016-07-22 23:06:03','','0','0','','0','{\"thumb\":\"20160722\\/5792369a499bc.jpg\"}','101','0','1','1','','','','','1','0000-00-00','','','','','');
INSERT INTO com_posts ( `id`, `post_author`, `post_keywords`, `post_source`, `post_date`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `post_modified`, `post_content_filtered`, `post_parent`, `post_type`, `post_mime_type`, `comment_count`, `smeta`, `post_hits`, `post_like`, `istop`, `recommended`, `product`, `price`, `functionss`, `flow`, `zp_count`, `zp_date`, `zp_xuanshang`, `zp_gangwei`, `zp_xssm`, `zp_zhize`, `zp_address` ) VALUES  ('8','1','测试,说明','','2016-07-22 23:08:31','<p><a style=\"color: rgb(26, 188, 156); line-height: 20px; font-family: &quot;Microsoft YaHei&quot;, Lato, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 12px; text-decoration: none; white-space: normal; background-color: rgb(255, 255, 255);\" href=\"http://www.sharingany.com/index.php?g=portal&m=article&a=index&id=3\" target=\"_blank\">领跑互联网创新产品及解决方案，方维获兴业资本首轮战略投资</a></p>','领跑互联网创新产品及解决方案，方维获兴业资本首轮战略投资','领跑互联网创新产品及解决方案，方维获兴业资本首轮战略投资','1','1','2016-07-22 23:07:39','','0','0','','0','{\"thumb\":\"20160722\\/579236e823762.jpg\"}','57','0','1','1','','','','','1','0000-00-00','','','','','');
INSERT INTO com_posts ( `id`, `post_author`, `post_keywords`, `post_source`, `post_date`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `post_modified`, `post_content_filtered`, `post_parent`, `post_type`, `post_mime_type`, `comment_count`, `smeta`, `post_hits`, `post_like`, `istop`, `recommended`, `product`, `price`, `functionss`, `flow`, `zp_count`, `zp_date`, `zp_xuanshang`, `zp_gangwei`, `zp_xssm`, `zp_zhize`, `zp_address` ) VALUES  ('9','1','','','2016-07-23 09:42:16','<div class=\"h110\" id=\"to_top\">
		<div class=\"fixed_nav\" id=\"centop\">
		      <ul class=\"clearfix o2o_page_check w_1020 all_check_nav\">
		    		<a class=\"f_l one current\" rel=\"0\" href=\"javascript:void(0)\">产品介绍</a>
					<a class=\"f_l two\" rel=\"1\" href=\"javascript:void(0)\">功能介绍</a>
					<a class=\"f_l three\" rel=\"2\" href=\"javascript:void(0)\">产品价格</a>
					<a class=\"f_l four\" href=\"javascript:void(0)\">制定流程</a>
		       </ul>
			   <div class=\"bor_f3f3f3\"></div>
		</div>
	</div>

	<div class=\"all_check all_check_0\">
	<div class=\"warp\">
		<div class=\"blank26\"></div>
		<div class=\"h_35\"><span class=\"5c5c5c\">什么是</span><span class=\"ec5051\">方维外卖预订系统</span></div>
		<p class=\"p_15\">
			方维外卖预订系统主要提供外卖和预订两大功能，通过外卖送上门和预订到店消费来实现。<br>
			通过方维外卖预订系统可以方便的基于地址位置搜索到附近的盒饭、水果、饮料、蛋糕等外卖信息。<br>
			消费者可以随时随地自助下单、付款、留下送货地址、电话、送货时间并添加备注，在家等着商品送上门，完成一次足不出户的完美体验。
		</p>
		<div class=\"blank67\"></div>
		<img src=\"/themes/sharingany/Public/images/o2o_images_6.png\" class=\"w_percentage_100\">
		<div class=\"blank22\"></div>
		<ul class=\"clearfix Product_introduction\">
			<li class=\"f_l\">
				<h6>轻松下单</h6>
				<p>定位地址，附近商户一目了然</p>
			</li>
			<li class=\"f_l\">
				<h6>在线支付</h6>
				<p>在线支付,享受优惠</p>
			</li>
			<li class=\"f_l\">
				<h6>送货上门</h6>
				<p>足不出户，生活更简单</p>
			</li>
		</ul>
		<div class=\"blank49\"></div>
	</div>
	
	<div class=\"o2o_images_7\">
		<div class=\"warp\">
			<div class=\"blank43\"></div>
			<div class=\"h_35\"><span class=\"5c5c5c\">方维外卖预订系统</span><span class=\"ec5051\">多平台解决方案</span></div>
			<p class=\"p_15\">
			方维外卖预订系统是通过PC端网站、独立手机APP、微信公共账号来进行服务的网络外卖预订平台。<br>
			成熟的方维外卖预订系统，节约您的开发成本、缩短业务上线时间。助您迅速开启O2O行业服务，快速抢占市场份额！
		</p>
		<div class=\"blank45\"></div>
		<ul class=\"terminal w628 clearfix\">
			<li class=\"f_l one current\" rel=\"0\">PC端</li>
			<li class=\"f_l two\" rel=\"1\">手机端</li>
			<li class=\"f_l three\" rel=\"2\">微信端</li>
			<li class=\"f_l four\" rel=\"3\">WAP端</li>
		</ul>
		<div class=\"tc terminal_img\">
			   <dl style=\" overflow:hidden; width:1200px; height:435px;\">
			   	      <dd style=\"display:block;\" class=\"terminal_0\">
					        <div class=\"img-scroll img-scroll_0\">
							 <span class=\"prev prev_0 but_span\"></span>
							 <span class=\"next next_0 but_span\"></span>
							    <div class=\"img-list img-list_0\">
							     <ul>
							         <li><img src=\"/themes/sharingany/Public/images/pc_img_in.png\"></li>
							         <li><img src=\"/themes/sharingany/Public/images/pc_img_in_1.png\"></li>
							         <li><img src=\"/themes/sharingany/Public/images/pc_img_in_2.png\"></li>
							         <li><img src=\"/themes/sharingany/Public/images/pc_img_in_3.png\"></li>
							        </ul>
							    </div>
							</div>
					  </dd>
					  <dd style=\"display:block;\" class=\"terminal_1\">
					        <div class=\"tc\"><img src=\"/themes/sharingany/Public/images/tel_img.png\"></div>
					  </dd>
					  <dd style=\"display:block;\" class=\"terminal_2\">
					        <div class=\"tc\"><img src=\"/themes/sharingany/Public/images/tel_img.png\"></div>
					  </dd>
					  <dd style=\"display:block;\" class=\"terminal_3\">
					         <div class=\"tc\"><img src=\"/themes/sharingany/Public/images/tel_img.png\"></div>
					  </dd>
			   </dl>
		</div>
		</div>
	</div>
	
	<div class=\"warp\">
		    <div class=\"blank49\"></div>
		    <div class=\"h_35\"><span class=\"ec5051\">消费者、商家、平台</span><span class=\"5c5c5c\">多角色使用</span></div>
			<p class=\"p_15\">方维外卖预订系统极其在乎品质和用户体验，为不同角色提供全方位的服务，趋向终端与服务一体化，实现终端多样化</p>
			<div class=\"blank107\"></div>
			<img src=\"/themes/sharingany/Public/images/o2o_images_8.png\" class=\"w_percentage_100\">
			<div class=\"blank20\"></div>
			<ul class=\"clearfix Product_introduction\">
				<li class=\"f_l\">
					<h6>消费者</h6>
					<p>多平台快速下单<br>网站、app、微信均可下单。外卖订座一站式搞定</p>
				</li>
				<li class=\"f_l\">
					<h6>平台</h6>
					<p>方便管理订单状态、系统管理、资金流水<br>实现用户、商户、资金全掌控</p>
				</li>
				<li class=\"f_l\">
					<h6>商家</h6>
					<p>使用商家端即可管理订单、验证、<br>商家信息营业状态等</p>
				</li>
		    </ul>
			<div class=\"blank78\"></div>
	</div>
	
	<div class=\"o2o_images_9\">
		<div class=\"blank49\"></div>
		<div class=\"h_35\"><span class=\"ec5051\">方维外卖预定系统</span><span class=\"5c5c5c\"> - 只做有品质的系统</span></div>
	    <div class=\"blank17\"></div>
		<a id=\"qqbtn5\" target=\"_blank\" href=\"http://wpa.qq.com/msgrd?v=3&uin={$company_qq}&site=qq&menu=yes\" class=\"call_server\"> 联系客服</a>
	</div>
	</div>
    
	<div class=\"all_check all_check_1\" style=\" display:none;\">
	         <div class=\"c_f6f6f6\">
  	<div class=\"warp\">
  		<div class=\"blank70\"></div>
  		<div class=\"h_Product_introduction\"></div>
		<div class=\"Exclamation_top\"></div>
		<p class=\"p_Product_introduction\">
			<b>方维外卖预订系统</b> 主要提供外卖和预订两大功能，通过外卖送上门和预订到店消费来实现。
			通过方维外卖预订系统可以方便的基于地址位置搜索到附近的盒饭、水果、饮料、蛋糕等外卖信息。
			消费者可以随时随地自助下单、付款、留下送货地址、电话、送货时间并添加备注，在家等着商品送上门，完成一次足不出户的完美体验。
      </p>
		<div class=\"Exclamation_bottom\"></div>
  	</div>
  </div>
  
  <div class=\"warp function\">
  	<div class=\"blank55\"></div>
  	<div class=\"Feature_list\"></div>
	<div class=\"table_title pt60\"><img src=\"/themes/sharingany/Public/images/bor_line.png\">&nbsp;用户端（WEB网站）<img src=\"/themes/sharingany/Public/images/bor_line.png\"></div>
<table>
                <thead>
                     <tr>
                        <th colspan=\"2\">功能</th>
                        <th width=\"892\">说明</th>
                     </tr>
                     <tr>
                      <td colspan=\"2\">注册</td>
                      <td><div align=\"left\">
                        <blockquote>
                          <p class=\"pl45\">可以通过账户密码或手机验证码注册</p>
                        </blockquote>
                      </div></td>
                    </tr>
                     <tr>
                       <td colspan=\"2\">登录</td>
                       <td><div align=\"left\">
                         <blockquote>
                           <p class=\"pl45\">可以通过账户密码或手机动态码登录</p>
                         </blockquote>
                       </div></td>
                     </tr>
                     <tr>
                       <td colspan=\"2\">地址定位</td>
                       <td><div class=\"pl45\" align=\"left\">输入所在商圈，进入附近商家页面</div></td>
                     </tr>
                     <tr>
                       <td colspan=\"2\">附近商家</td>
                       <td><div class=\"pl45\" align=\"left\">提供商家分类和活动内容进行筛选。默认根据定位地址由近到远默认排序方式显示商家信息</div></td>
                     </tr>
                     <tr>
                       <td colspan=\"2\">预订商家</td>
                       <td><div class=\"pl45\" align=\"left\">提供商家分类和当前城市的商圈进行筛选</div></td>
                     </tr>
                     <tr>
                       <td colspan=\"2\">我的收藏</td>
                       <td><div class=\"pl45\" align=\"left\">展示会员收藏的商家列表</div></td>
                     </tr>
                     <tr>
                       <td colspan=\"2\">热卖</td>
                       <td><div class=\"pl45\" align=\"left\">默认根据销量展示热销的产品</div></td>
                     </tr>
                     <tr>
                       <td colspan=\"2\">商家介绍页</td>
                       <td><div class=\"pl45\" align=\"left\">展示商家图片，商家名称、营业时间、地址、菜单、评价等信息</div></td>
                     </tr>
                     <tr>
                       <td colspan=\"2\">评价列表</td>
                       <td><div class=\"pl45\" align=\"left\">每完成一个订单，可以对订单进一次评价</div></td>
                     </tr>
                     <tr>
                       <td colspan=\"2\">商家公告</td>
                       <td><div class=\"pl45\" align=\"left\">内容展示商家公告，优惠活动信息</div></td>
                     </tr>
                     <tr>
                       <td colspan=\"2\">购物车</td>
                       <td><div class=\"pl45\" align=\"left\">选中的商品，存放在购物车并计算价格</div></td>
                     </tr>
                     <tr>
                       <td colspan=\"2\">外卖下单</td>
                       <td><div class=\"pl45\" align=\"left\">用户在下单页提交送货信息和支付方式</div></td>
                     </tr>
                     <tr>
                       <td colspan=\"2\">预订下单</td>
                       <td><div class=\"pl45\" align=\"left\">用户在下单页提交预订信息和支付方式</div></td>
                     </tr>
                     <tr>
                       <td colspan=\"2\">在线支付</td>
                       <td><div class=\"pl45\" align=\"left\">用户付款支持多种在线支付方式（例如支付宝、微信支付）</div></td>
                     </tr>
                     <tr>
                       <td rowspan=\"11\" style=\"line-height:18px;\" width=\"111\">会员<br>
                       中心</td>
                       <td width=\"181\">外卖订单</td>
                       <td><div class=\"pl45\" align=\"left\">展示外卖订单，查看订单详细和状态，确认订单及点评</div></td>
                     </tr>
                     <tr>
                       <td width=\"181\">预订订单</td>
                       <td><div class=\"pl45\" align=\"left\">展示预订订单，查看订单详细和状态，确认订单及点评</div></td>
                     </tr>
                     <tr>
                       <td width=\"181\">账户设置</td>
                       <td><div class=\"pl45\" align=\"left\">查看或设置会员信息</div></td>
                     </tr>
                     <tr>
                       <td width=\"181\">我的资产</td>
                       <td><div class=\"pl45\" align=\"left\">展示会员账户余额及资产记录；展示会员积分及积分记录<br>
                       </div></td>
                     </tr>
                     <tr>
                       <td width=\"181\">充值</td>
                       <td><div class=\"pl45\" align=\"left\">账户充值与提现功能</div></td>
                     </tr>
                     <tr>
                       <td width=\"181\">送货地址</td>
                       <td><div class=\"pl45\" align=\"left\">会员收货地址列表及添加</div></td>
                     </tr>
                     <tr>
                       <td width=\"181\">我的红包</td>
                       <td><div class=\"pl45\" align=\"left\">显示账户红包，可通过积分兑换红包</div></td>
                     </tr>
                     <tr>
                       <td width=\"181\">会员消息</td>
                       <td><div class=\"pl45\" align=\"left\">会员消息列表</div></td>
                     </tr>
                     <tr>
                       <td width=\"181\">我的收藏</td>
                       <td><div class=\"pl45\" align=\"left\">展示会员收藏的商家列表</div></td>
                     </tr>
                     <tr>
                       <td width=\"181\">我的点评</td>
                       <td><div class=\"pl45\" align=\"left\">会员评价列表</div></td>
                     </tr>
                     <tr>
                       <td width=\"181\">我的邀请</td>
                       <td><div class=\"pl45\" align=\"left\">复制邀请链接，邀请好友注册购买获得返利</div></td>
                     </tr>
                </thead>
                <tbody>
				</tbody>
            </table>
			<div class=\"table_title\"><img src=\"/themes/sharingany/Public/images/bor_line.png\">&nbsp;商户端（WEB网站）<img src=\"/themes/sharingany/Public/images/bor_line.png\"></div>
			<table>
                <thead>
                     <tr>
                        <th colspan=\"2\">功能</th>
                        <th width=\"892\">说明</th>
                     </tr>
                     <tr>
                       <td rowspan=\"4\" style=\"line-height:18px;\" width=\"111\">订单<br>
                       管理</td>
                       <td width=\"181\">外卖订单</td>
                       <td><div class=\"pl45\" align=\"left\">显示外卖订单记录，可通过订单状态、日期、支付方式、订单号或手机号进行搜索筛选</div></td>
                     </tr>
                     <tr>
                       <td>预订订单</td>
                       <td><div class=\"pl45\" align=\"left\">显示预订订单记录，可通过订单状态、日期、订单号或手机号进行搜索筛选</div></td>
                     </tr>
                     <tr>
                       <td>催单记录</td>
                       <td><div class=\"pl45\" align=\"left\">显示会员催单记录</div></td>
                     </tr>
                     <tr>
                       <td>预订电子券验证</td>
                       <td><div class=\"pl45\" align=\"left\">验证预订订单的序列号</div></td>
                     </tr>
                     <tr>
                       <td rowspan=\"3\" style=\"line-height:18px;\">财务<br>
                       管理</td>
                       <td>对账单</td>
                       <td><div class=\"pl45\" align=\"left\">显示商家销售记录及结算情况</div></td>
                     </tr>
                     <tr>
                       <td>提现</td>
                       <td><div class=\"pl45\" align=\"left\">商家提现申请及提现记录</div></td>
                     </tr>
                     <tr>
                       <td>银行账户</td>
                       <td><div class=\"pl45\" align=\"left\">商家提现银行账户设置</div></td>
                     </tr>
                     <tr>
                       <td rowspan=\"3\" style=\"line-height:18px;\"><p>门店<br>
                       管理</p></td>
                       <td>门店列表</td>
                       <td><div class=\"pl45\" align=\"left\">门店信息管理，可发布多门店</div></td>
                     </tr>
                     <tr>
                       <td>外卖预订设置</td>
                       <td><div class=\"pl45\" align=\"left\">外卖预订业务设置</div></td>
                     </tr>
                     <tr>
                       <td>门店点评</td>
                       <td><div class=\"pl45\" align=\"left\">订单点评列表及回复</div></td>
                     </tr>
                     <tr>
                       <td>账户管理</td>
                       <td>子账户列表</td>
                       <td><div class=\"pl45\" align=\"left\">商户平台账号管理列表</div></td>
                     </tr>
                </thead>
                <tbody>
				</tbody>
            </table>
			<div class=\"table_title\"><img src=\"/themes/sharingany/Public/images/bor_line.png\">&nbsp;系统管理后台端(WEB网站)<img src=\"/themes/sharingany/Public/images/bor_line.png\"></div>
			<table>
                <thead>
                     <tr>
                        <th width=\"181\">功能</th>
                        <th width=\"892\">说明</th>
                     </tr>
                     <tr>
                       <td colspan=\"2\" class=\"th_2\">商户管理</td>
                     </tr>
                     <tr>
                       <td>供应商</td>
                       <td><div class=\"pl45\" align=\"left\">管理商户及门店信息</div></td>
                     </tr>
                     <tr>
                       <td>店铺分类</td>
                       <td><div class=\"pl45\" align=\"left\">设置店铺分类及商品类目</div></td>
                     </tr>
                     <tr>
                       <td>宝贝类目</td>
                       <td><div class=\"pl45\" align=\"left\">管理商品的分类</div></td>
                     </tr>
                     <tr>
                       <td>点评管理</td>
                       <td><div class=\"pl45\" align=\"left\">设置点评评分分组及管理会员点评</div></td>
                     </tr>
                      <tr>
                       <td colspan=\"2\" class=\"th_2\">会员管理</td>
                     </tr>
                     <tr>
                       <td>会员管理</td>
                       <td><div class=\"pl45\" align=\"left\">显示系统注册会员数据</div></td>
                     </tr>
                     <tr>
                       <td>会员返利</td>
                       <td><div class=\"pl45\" align=\"left\">设置会员等级</div></td>
                     </tr>
                     <tr>
                       <td>站点消息</td>
                       <td><div class=\"pl45\" align=\"left\">会员邀请记录列表</div></td>
                     </tr>
                     <tr>
                       <td>会员整合插件</td>
                       <td><div class=\"pl45\" align=\"left\">系统发送的消息管理</div></td>
                     </tr>
                     <tr>
                       <td>API插件列表</td>
                       <td><div class=\"pl45\" align=\"left\">会员整合设置及第三方同步设置</div></td>
                     </tr>
                      <tr>
                       <td colspan=\"2\" class=\"th_2\">订单管理</td>
                     </tr>
                     <tr>
                       <td>订单管理</td>
                       <td><div class=\"pl45\" align=\"left\">外卖和预订订单管理</div></td>
                     </tr>
                     <tr>
                       <td>支付接口列表</td>
                       <td><div class=\"pl45\" align=\"left\">支付接口设置</div></td>
                     </tr>
                     <tr>
                       <td>红包列表</td>
                       <td><div class=\"pl45\" align=\"left\">添加、管理、发放、查看红包</div></td>
                     </tr>
                     <tr>
                       <td>促销管理</td>
                       <td><div class=\"pl45\" align=\"left\">平台促销设置和管理</div></td>
                     </tr>
                      <tr>
                       <td colspan=\"2\" class=\"th_2\">短信邮件</td>
                     </tr>
                     <tr>
                       <td>队列管理</td>
                       <td><div class=\"pl45\" align=\"left\">短信发送队列管理</div></td>
                     </tr>
                     <tr>
                       <td>消息模板</td>
                       <td><div class=\"pl45\" align=\"left\">消息模板设置管理</div></td>
                     </tr>
                     <tr>
                       <td>短信管理</td>
                       <td><div class=\"pl45\" align=\"left\">短信接口设置</div></td>
                     </tr>
                     <tr>
                       <td colspan=\"2\" class=\"th_2\">资金管理</td>
                     </tr>
                     <tr>
                       <td>充值管理</td>
                       <td><div class=\"pl45\" align=\"left\">会员在线充值记录和管理</div></td>
                     </tr>
                     <tr>
                       <td>提现管理</td>
                       <td><div class=\"pl45\" align=\"left\">会员和商户提现申请列表和管理</div></td>
                     </tr>
                     <tr>
                       <td>报表</td>
                       <td><div class=\"pl45\" align=\"left\">平台销售报表及商户结算报表和对账单</div></td>
                     </tr>
                     <tr>
                       <td colspan=\"2\" class=\"th_2\">系统配置</td>
                     </tr>
                     <tr>
                       <td>系统设置</td>
                       <td><div class=\"pl45\" align=\"left\">设置系统基础信息、图片配置等数据</div></td>
                     </tr>
                     <tr>
                       <td>城市商圈</td>
                       <td><div class=\"pl45\" align=\"left\">设置开通的城市及城市下服务的商圈</div></td>
                     </tr>
                     <tr>
                       <td>文章管理</td>
                       <td><div class=\"pl45\" align=\"left\">设置文章分类及发布分类下的文章数据</div></td>
                     </tr>
                     <tr>
                       <td>友情链接</td>
                       <td><div class=\"pl45\" align=\"left\">添加友情链接数据</div></td>
                     </tr>
                     <tr>
                       <td>系统管理员</td>
                       <td><div class=\"pl45\" align=\"left\">设置系统管理员和管理权限</div></td>
                     </tr>
                      <tr>
                       <td>数据库</td>
                       <td><div class=\"pl45\" align=\"left\">备份数据库</div></td>
                     </tr>
                      <tr>
                       <td>系统日志</td>
                       <td><div class=\"pl45\" align=\"left\">记录后台操作</div></td>
                     </tr>
                </thead>
                <tbody>
				</tbody>
            </table>
			<div class=\"blank90\"></div>
  </div>
	</div>
	
	<div class=\"all_check all_check_2\" style=\" display:none;\">
	     <div class=\"warp\">
  	<div class=\"blank20\"></div>
  	<ul class=\"Release\">
  		<li class=\"f_l\">
  			<div class=\"h_name c_00a4d2\">基础版</div>
			<div class=\"bor_ddd\">
				<div class=\"Price_num\">￥8,800</div>
				<div class=\"Introduction\">标准服务</div>
				<dl class=\"server_list\">
					<dd>产品商业授权（授权一个<br>顶级域名，不可更换）</dd>
					<dd>产品WEB端程序</dd>
					<dd>产品WAP端程序</dd>
				</dl>
				<a href=\"#\" class=\"Advisory c_00a4d2\">去咨询</a>
			</div>
  		</li>
		<li class=\"f_l\">
  			<div class=\"h_name c_00a4d2\">标准版</div>
			<div class=\"bor_ddd\">
				<div class=\"Price_num\">￥15,800</div>
				<div class=\"Introduction\">标准服务</div>
				<dl class=\"server_list\">
					<dd>产品商业授权（授权一个<br>顶级域名，不可更换）</dd>
					<dd>产品WEB端程序</dd>
					<dd>产品WAP端程序</dd>
					<dd>手机端Android+IOS</dd>
				</dl>
				<a href=\"#\" class=\"Advisory c_00a4d2\">去咨询</a>
			</div>
  		</li>
		<li class=\"f_l\">
  			<div class=\"h_name c_14bab02\">高级版</div>
			<div class=\"bor_ddd\">
				<div class=\"Price_num\">￥26,800</div>
				<div class=\"Introduction\">标准服务</div>
				<dl class=\"server_list\">
					<dd>产品商业授权（授权一个<br>顶级域名，不可更换）</dd>
					<dd>产品WEB端程序</dd>
					<dd>产品WAP端程序</dd>
					<dd>手机端Android+IOS</dd>
					<dd>商家移动端</dd>
				</dl>
				<a href=\"#\" class=\"Advisory c_14bab02\">去咨询</a>
			</div>
  		</li>
		<li class=\"f_l\">
  			<div class=\"h_name c_f46173\">旗舰版</div>
			<div class=\"bor_ddd\">
				<div class=\"Price_num\">￥108,000</div>
				<div class=\"Introduction\">标准服务</div>
				<dl class=\"server_list\">
					<dd>产品商业授权（授权一个<br>顶级域名，不可更换）</dd>
					<dd>产品WEB端程序源代码</dd>
					<dd>产品WAP端程序源代码</dd>
					<dd>手机端Android+IOS源代码</dd>
					<dd>商家移动端源代码</dd>
				</dl>
				<a href=\"#\" class=\"Advisory c_f46173\">去咨询</a>
			</div>
  		</li>
	</ul>
	<div class=\"blank33\"></div>
	<div class=\"bitc_h\">产品<b>授权</b></div>
	<div class=\"shift\">
		<table>
                <thead>
                    <tr>
                        <th width=\"28%\">功能</th>
                        <th width=\"18%\">基础版</th>
                        <th width=\"18%\">标准版</th>
                        <th width=\"18%\">高级版</th>
                        <th width=\"18%\">旗舰版</th>
                     </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>
                            <p style=\"padding-top:10px; line-height:6px;\">产品商业授权</p>
                            <p style=\"color:#999; font-size:12px;\">（授权一个名称/顶级域名，不可更换）</p>
                        </td>
                        <td class=\"c_fcfcfc\"><img src=\"/themes/sharingany/Public/images/yes_f.png\" class=\"pngfix\"></td>
                        <td><img src=\"/themes/sharingany/Public/images/yes_f.png\" class=\"pngfix\"></td>
                        <td class=\"c_fcfcfc\"><img src=\"/themes/sharingany/Public/images/yes_f.png\" class=\"pngfix\"></td>
                        <td><img src=\"/themes/sharingany/Public/images/yes_f.png\" class=\"pngfix\"></td>
                     </tr>
                    <tr>
                        <td>产品WEB端</td>
                        <td class=\"c_fcfcfc\"><img src=\"/themes/sharingany/Public/images/yes_f.png\" class=\"pngfix\"></td>
                        <td><img src=\"/themes/sharingany/Public/images/yes_f.png\" class=\"pngfix\"></td>
                        <td class=\"c_fcfcfc\"><img src=\"/themes/sharingany/Public/images/yes_f.png\" class=\"pngfix\"></td>
                        <td>源代码</td>
                    </tr>
                    <tr>
                        <td>产品WAP端</td>
                        <td class=\"c_fcfcfc\"><img src=\"/themes/sharingany/Public/images/yes_f.png\" class=\"pngfix\"></td>
                        <td><img src=\"/themes/sharingany/Public/images/yes_f.png\" class=\"pngfix\"></td>
                        <td class=\"c_fcfcfc\"><img src=\"/themes/sharingany/Public/images/yes_f.png\" class=\"pngfix\"></td>
                        <td>源代码</td>
                     </tr>
                    <tr>
                        <td>手机客户端（Android）</td>
                        <td class=\"c_fcfcfc\"><img src=\"/themes/sharingany/Public/images/no_f.png\" class=\"pngfix\"></td>
                        <td><img src=\"/themes/sharingany/Public/images/yes_f.png\" class=\"pngfix\"></td>
                        <td class=\"c_fcfcfc\"><img src=\"/themes/sharingany/Public/images/yes_f.png\" class=\"pngfix\"></td>
                        <td>源代码</td>
                    </tr>
                    <tr>
                        <td>手机客户端（IOS）</td>
                        <td class=\"c_fcfcfc\"><img src=\"/themes/sharingany/Public/images/no_f.png\" class=\"pngfix\"></td>
                        <td><img src=\"/themes/sharingany/Public/images/yes_f.png\" class=\"pngfix\"></td>
                        <td class=\"c_fcfcfc\"><img src=\"/themes/sharingany/Public/images/yes_f.png\" class=\"pngfix\"></td>
                        <td>源代码</td>
                       </tr>
					  <tr>
                        <td>商家移动端</td>
                        <td class=\"c_fcfcfc\"><img src=\"/themes/sharingany/Public/images/no_f.png\" class=\"pngfix\"></td>
                        <td><img src=\"/themes/sharingany/Public/images/no_f.png\" class=\"pngfix\"></td>
                        <td class=\"c_fcfcfc\"><img src=\"/themes/sharingany/Public/images/yes_f.png\" class=\"pngfix\"></td>
                        <td>源代码</td>
                      </tr>
                </tbody>
            </table>
	</div>
	<div class=\"bitc_h\">产品<b>服务</b></div>
	<div class=\"shift\">
		<table>
                <thead>
                    <tr>
                        <th colspan=\"2\">服务级别</th>
                        <th width=\"18%\">基础版</th>
                        <th width=\"18%\">标准版</th>
                        <th width=\"18%\">高级版</th>
                        <th width=\"18%\">旗舰版</th>
                     </tr>
                </thead>
                <tbody>
					<tr>
                        <td colspan=\"2\">服务年限</td>
                        <td class=\"c_fcfcfc\">无服务</td>
                         <td>1年</td>
                         <td class=\"c_fcfcfc\">1年</td>
                         <td>1年</td>
                    </tr>
					<tr>
					  <td rowspan=\"3\" style=\" line-height:18px\" width=\"11%\"><p>文档</p>
				      <p>资料</p></td>
					  <td width=\"17%\">使用说明</td>
					  <td class=\"c_fcfcfc\"><img src=\"/themes/sharingany/Public/images/yes_f.png\" class=\"pngfix\"></td>
					  <td><img src=\"/themes/sharingany/Public/images/yes_f.png\" class=\"pngfix\"></td>
					  <td class=\"c_fcfcfc\"><img src=\"/themes/sharingany/Public/images/yes_f.png\" class=\"pngfix\"></td>
					  <td><img src=\"/themes/sharingany/Public/images/yes_f.png\" class=\"pngfix\"></td>
				  </tr>
					<tr>
					  <td width=\"17%\">功能列表</td>
					  <td class=\"c_fcfcfc\"><img src=\"/themes/sharingany/Public/images/yes_f.png\" class=\"pngfix\"></td>
					  <td><img src=\"/themes/sharingany/Public/images/yes_f.png\" class=\"pngfix\"></td>
					  <td class=\"c_fcfcfc\"><img src=\"/themes/sharingany/Public/images/yes_f.png\" class=\"pngfix\"></td>
					  <td><img src=\"/themes/sharingany/Public/images/yes_f.png\" class=\"pngfix\"></td>
				  </tr>
					<tr>
					  <td width=\"17%\">二次开发文档</td>
					  <td class=\"c_fcfcfc\"><img src=\"/themes/sharingany/Public/images/no_f.png\" class=\"pngfix\"></td>
					  <td><img src=\"/themes/sharingany/Public/images/no_f.png\" class=\"pngfix\"></td>
					  <td class=\"c_fcfcfc\"><img src=\"/themes/sharingany/Public/images/no_f.png\" class=\"pngfix\"></td>
					  <td><img src=\"/themes/sharingany/Public/images/yes_f.png\" class=\"pngfix\"></td>
				  </tr>
					<tr>
					  <td rowspan=\"6\" style=\" line-height:18px\"><p>安装</p>
				      <p>服务</p></td>
					  <td>协助申请域名空间</td>
					  <td class=\"c_fcfcfc\"><img src=\"/themes/sharingany/Public/images/no_f.png\" class=\"pngfix\"></td>
					  <td><img src=\"/themes/sharingany/Public/images/yes_f.png\" class=\"pngfix\"></td>
					  <td class=\"c_fcfcfc\"><img src=\"/themes/sharingany/Public/images/yes_f.png\" class=\"pngfix\"></td>
					  <td><img src=\"/themes/sharingany/Public/images/yes_f.png\" class=\"pngfix\"></td>
				  </tr>
					<tr>
					  <td>协助申请网站备案</td>
					  <td class=\"c_fcfcfc\"><img src=\"/themes/sharingany/Public/images/no_f.png\" class=\"pngfix\"></td>
					  <td><img src=\"/themes/sharingany/Public/images/yes_f.png\" class=\"pngfix\"></td>
					  <td class=\"c_fcfcfc\"><img src=\"/themes/sharingany/Public/images/yes_f.png\" class=\"pngfix\"></td>
					  <td><img src=\"/themes/sharingany/Public/images/yes_f.png\" class=\"pngfix\"></td>
				  </tr>
					<tr>
					  <td>系统运行环境部署</td>	
					  <td class=\"c_fcfcfc\">1次</td>
					  <td>1次</td>
					  <td class=\"c_fcfcfc\">2次</td>
					  <td>5次</td>
				  </tr>
					<tr>
					  <td>WEB端产品部署</td>
					  <td class=\"c_fcfcfc\">1次</td>
					  <td>1次</td>
					  <td class=\"c_fcfcfc\">2次</td>
					  <td>5次</td>
				  </tr>
					<tr>
					  <td>移动端打包</td>
					  <td class=\"c_fcfcfc\"><img src=\"/themes/sharingany/Public/images/no_f.png\" class=\"pngfix\"></td>
					  <td>1次</td>
					  <td class=\"c_fcfcfc\">2次</td>
					  <td>5次</td>
				  </tr>
					<tr>
					  <td>移动端发布</td>
					  <td class=\"c_fcfcfc\"><img src=\"/themes/sharingany/Public/images/no_f.png\" class=\"pngfix\"></td>
					  <td>1次</td>
					  <td class=\"c_fcfcfc\">2次</td>
					  <td>5次</td>
				  </tr>
					<tr>
					  <td rowspan=\"2\" style=\" line-height:18px\"><p>培训</p>
				      <p>服务</p></td>
					  <td>产品使用培训</td>
					  <td class=\"c_fcfcfc\"><img src=\"/themes/sharingany/Public/images/no_f.png\" class=\"pngfix\"></td>
					  <td><img src=\"/themes/sharingany/Public/images/no_f.png\" class=\"pngfix\"></td>
					  <td class=\"c_fcfcfc\">1天</td>
					  <td>2天</td>
				  </tr>
					<tr>
					  <td>二次开发培训</td>
					  <td class=\"c_fcfcfc\"><img src=\"/themes/sharingany/Public/images/no_f.png\" class=\"pngfix\"></td>
					  <td><img src=\"/themes/sharingany/Public/images/no_f.png\" class=\"pngfix\"></td>
					  <td class=\"c_fcfcfc\"><img src=\"/themes/sharingany/Public/images/no_f.png\" class=\"pngfix\"></td>
					  <td>3天</td>
				  </tr>
					<tr>
					  <td rowspan=\"7\" style=\" line-height:18px\"><p>咨询</p>
				      <p>服务</p></td>
					  <td>协助申请支付接口</td>
					  <td class=\"c_fcfcfc\"><img src=\"/themes/sharingany/Public/images/no_f.png\" class=\"pngfix\"></td>
					  <td><img src=\"/themes/sharingany/Public/images/no_f.png\" class=\"pngfix\"></td>
					  <td class=\"c_fcfcfc\"><img src=\"/themes/sharingany/Public/images/yes_f.png\" class=\"pngfix\"></td>
					  <td><img src=\"/themes/sharingany/Public/images/yes_f.png\" class=\"pngfix\"></td>
				  </tr>
					<tr>
					  <td>产品使用咨询</td>
					  <td class=\"c_fcfcfc\"><img src=\"/themes/sharingany/Public/images/yes_f.png\" class=\"pngfix\"></td>
					  <td><img src=\"/themes/sharingany/Public/images/yes_f.png\" class=\"pngfix\"></td>
					  <td class=\"c_fcfcfc\"><img src=\"/themes/sharingany/Public/images/yes_f.png\" class=\"pngfix\"></td>
					  <td><img src=\"/themes/sharingany/Public/images/yes_f.png\" class=\"pngfix\"></td>
				  </tr>
					<tr>
					  <td>二次开发咨询</td>
					  <td class=\"c_fcfcfc\"><img src=\"/themes/sharingany/Public/images/no_f.png\" class=\"pngfix\"></td>
					  <td><img src=\"/themes/sharingany/Public/images/no_f.png\" class=\"pngfix\"></td>
					  <td class=\"c_fcfcfc\"><img src=\"/themes/sharingany/Public/images/no_f.png\" class=\"pngfix\"></td>
					  <td><img src=\"/themes/sharingany/Public/images/yes_f.png\" class=\"pngfix\"></td>
				  </tr>
					<tr>
					  <td>模板制作咨询</td>
					  <td class=\"c_fcfcfc\"><img src=\"/themes/sharingany/Public/images/no_f.png\" class=\"pngfix\"></td>
					  <td><img src=\"/themes/sharingany/Public/images/no_f.png\" class=\"pngfix\"></td>
					  <td class=\"c_fcfcfc\"><img src=\"/themes/sharingany/Public/images/no_f.png\" class=\"pngfix\"></td>
					  <td><img src=\"/themes/sharingany/Public/images/yes_f.png\" class=\"pngfix\"></td>
				  </tr>
					<tr>
					  <td>电话技术支持</td>
					  <td class=\"c_fcfcfc\"><img src=\"/themes/sharingany/Public/images/no_f.png\" class=\"pngfix\"></td>
					  <td><img src=\"/themes/sharingany/Public/images/no_f.png\" class=\"pngfix\"></td>
					  <td class=\"c_fcfcfc\"><img src=\"/themes/sharingany/Public/images/no_f.png\" class=\"pngfix\"></td>
					  <td><img src=\"/themes/sharingany/Public/images/yes_f.png\" class=\"pngfix\"></td>
				  </tr>
					<tr>
					  <td>指定工程师服务</td>
					  <td class=\"c_fcfcfc\"><img src=\"/themes/sharingany/Public/images/no_f.png\" class=\"pngfix\"></td>
					  <td><img src=\"/themes/sharingany/Public/images/no_f.png\" class=\"pngfix\"></td>
					  <td class=\"c_fcfcfc\"><img src=\"/themes/sharingany/Public/images/no_f.png\" class=\"pngfix\"></td>
					  <td><img src=\"/themes/sharingany/Public/images/yes_f.png\" class=\"pngfix\"></td>
				  </tr>
					<tr>
					  <td>安全咨询</td>
					  <td class=\"c_fcfcfc\"><img src=\"/themes/sharingany/Public/images/no_f.png\" class=\"pngfix\"></td>
					  <td><img src=\"/themes/sharingany/Public/images/no_f.png\" class=\"pngfix\"></td>
					  <td class=\"c_fcfcfc\"><img src=\"/themes/sharingany/Public/images/no_f.png\" class=\"pngfix\"></td>
					  <td><img src=\"/themes/sharingany/Public/images/yes_f.png\" class=\"pngfix\"></td>
				  </tr>
					<tr>
					  <td rowspan=\"4\" style=\" line-height:18px\"><p>维护</p>
				      <p>服务</p></td>
					  <td>BUG反馈与响应</td>
					  <td class=\"c_fcfcfc\"><img src=\"/themes/sharingany/Public/images/yes_f.png\" class=\"pngfix\"></td>
					  <td><img src=\"/themes/sharingany/Public/images/yes_f.png\" class=\"pngfix\"></td>
					  <td class=\"c_fcfcfc\"><img src=\"/themes/sharingany/Public/images/yes_f.png\" class=\"pngfix\"></td>
					  <td><img src=\"/themes/sharingany/Public/images/yes_f.png\" class=\"pngfix\"></td>
				  </tr>
					<tr>
					  <td>运行故障排查</td>
					  <td class=\"c_fcfcfc\"><img src=\"/themes/sharingany/Public/images/yes_f.png\" class=\"pngfix\"></td>
					  <td><img src=\"/themes/sharingany/Public/images/yes_f.png\" class=\"pngfix\"></td>
					  <td class=\"c_fcfcfc\"><img src=\"/themes/sharingany/Public/images/yes_f.png\" class=\"pngfix\"></td>
					  <td><img src=\"/themes/sharingany/Public/images/yes_f.png\" class=\"pngfix\"></td>
				  </tr>
					<tr>
					  <td>数据库修复</td>
					  <td class=\"c_fcfcfc\"><img src=\"/themes/sharingany/Public/images/no_f.png\" class=\"pngfix\"></td>
					  <td><img src=\"/themes/sharingany/Public/images/no_f.png\" class=\"pngfix\"></td>
					  <td class=\"c_fcfcfc\">1次</td>
					  <td>3次</td>
				  </tr>
					<tr>
					  <td>数据迁移</td>
					  <td class=\"c_fcfcfc\"><img src=\"/themes/sharingany/Public/images/no_f.png\" class=\"pngfix\"></td>
					  <td><img src=\"/themes/sharingany/Public/images/no_f.png\" class=\"pngfix\"></td>
					  <td class=\"c_fcfcfc\">1次</td>
					  <td>3次</td>
				  </tr>
               </tbody>
            </table>
	</div>
	<div class=\"blank40\"></div>
  </div>
	</div>','创新模式互联网+软件产品','技术驱动商业创新|研发符合企业需求的产品','1','1','2016-07-23 09:40:01','','0','0','','0','{\"thumb\":\"20160723\\/5792cb69e602d.png\"}','17','0','0','1','','','','','1','0000-00-00','','','','','');
INSERT INTO com_posts ( `id`, `post_author`, `post_keywords`, `post_source`, `post_date`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `post_modified`, `post_content_filtered`, `post_parent`, `post_type`, `post_mime_type`, `comment_count`, `smeta`, `post_hits`, `post_like`, `istop`, `recommended`, `product`, `price`, `functionss`, `flow`, `zp_count`, `zp_date`, `zp_xuanshang`, `zp_gangwei`, `zp_xssm`, `zp_zhize`, `zp_address` ) VALUES  ('10','1','B2B2C商城  B2B商城  B2C商城  O2O商城','众享网络科技','2016-07-23 09:42:57','<p>内容<br/></p>','移动电商解决方案','B2B2C商城  B2B商城  B2C商城  O2O商城|研发符合行业需求智慧云电商解决方案','1','1','2016-07-23 09:42:18','','0','0','','0','{\"thumb\":\"20160723\\/5792cb9c86a4c.png\"}','21','0','0','1','<p>产品介绍<br/></p>','<p>产品价格</p>','<p>功能介绍</p>','<p>制定流程</p>','1','0000-00-00','','','','','');
INSERT INTO com_posts ( `id`, `post_author`, `post_keywords`, `post_source`, `post_date`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `post_modified`, `post_content_filtered`, `post_parent`, `post_type`, `post_mime_type`, `comment_count`, `smeta`, `post_hits`, `post_like`, `istop`, `recommended`, `product`, `price`, `functionss`, `flow`, `zp_count`, `zp_date`, `zp_xuanshang`, `zp_gangwei`, `zp_xssm`, `zp_zhize`, `zp_address` ) VALUES  ('11','1','办公租赁 O2O','','2016-07-23 09:43:48','<p>助力传统房产中介企业产业升级|帮助房产中介企业快速互联网+<br/></p><p><br/></p><p><br/></p>','O2O办公租赁服务平台','助力传统房产中介企业产业升级|帮助房产中介企业快速互联网+','1','1','2016-07-23 09:42:59','','0','0','','0','{\"thumb\":\"20160723\\/5792cbc07f03a.png\"}','34','0','0','1','<p>1</p>','<p>3</p>','<p>2</p>','<p>4</p>','1','0000-00-00','','','','','');
INSERT INTO com_posts ( `id`, `post_author`, `post_keywords`, `post_source`, `post_date`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `post_modified`, `post_content_filtered`, `post_parent`, `post_type`, `post_mime_type`, `comment_count`, `smeta`, `post_hits`, `post_like`, `istop`, `recommended`, `product`, `price`, `functionss`, `flow`, `zp_count`, `zp_date`, `zp_xuanshang`, `zp_gangwei`, `zp_xssm`, `zp_zhize`, `zp_address` ) VALUES  ('12','1','','','2016-07-23 15:06:15','<p>测试3</p>','测试3','测试3','1','1','2016-07-23 15:05:51','','0','0','','0','{\"thumb\":\"20160723\\/5793176308c23.png\"}','19','0','0','1','','','','','1','0000-00-00','','','','','');
INSERT INTO com_posts ( `id`, `post_author`, `post_keywords`, `post_source`, `post_date`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `post_modified`, `post_content_filtered`, `post_parent`, `post_type`, `post_mime_type`, `comment_count`, `smeta`, `post_hits`, `post_like`, `istop`, `recommended`, `product`, `price`, `functionss`, `flow`, `zp_count`, `zp_date`, `zp_xuanshang`, `zp_gangwei`, `zp_xssm`, `zp_zhize`, `zp_address` ) VALUES  ('13','1','','','2016-07-24 16:24:08','<p><img src=\"http://www.sharingany.com/data/upload/ueditor/20160724/57947ba501211.jpg\" title=\"u0.jpg\" alt=\"u0.jpg\"/></p>','服务介绍','','1','1','2016-07-24 16:23:31','','0','2','','0','{\"template\":\"successdetail\",\"thumb\":\"\"}','0','0','0','0','','','','','1','0000-00-00','','','','','');
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
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
INSERT INTO com_role ( `id`, `name`, `pid`, `status`, `remark`, `create_time`, `update_time`, `listorder` ) VALUES  ('1','超级管理员','0','1','拥有网站最高管理员权限！','1329633709','1329633709','0');
DROP TABLE IF EXISTS `com_role_user`;
CREATE TABLE `com_role_user` (
  `role_id` int(11) unsigned DEFAULT '0' COMMENT '角色 id',
  `user_id` int(11) DEFAULT '0' COMMENT '用户id',
  KEY `group_id` (`role_id`),
  KEY `user_id` (`user_id`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
DROP TABLE IF EXISTS `com_route`;
CREATE TABLE `com_route` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '路由id',
  `full_url` varchar(255) DEFAULT NULL COMMENT '完整url， 如：portal/list/index?id=1',
  `url` varchar(255) DEFAULT NULL COMMENT '实际显示的url',
  `listorder` int(5) DEFAULT '0' COMMENT '排序，优先级，越小优先级越高',
  `status` tinyint(1) DEFAULT '1' COMMENT '状态，1：启用 ;0：不启用',
  PRIMARY KEY (`id`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
INSERT INTO com_route ( `id`, `full_url`, `url`, `listorder`, `status` ) VALUES  ('1','list/index/id/3','product','0','1');
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
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
INSERT INTO com_slide ( `slide_id`, `slide_cid`, `slide_name`, `slide_pic`, `slide_url`, `slide_des`, `slide_content`, `slide_status`, `listorder` ) VALUES  ('1','1','1','/data/upload/20160722/57922fe377628.jpg','#','','','1','0');
INSERT INTO com_slide ( `slide_id`, `slide_cid`, `slide_name`, `slide_pic`, `slide_url`, `slide_des`, `slide_content`, `slide_status`, `listorder` ) VALUES  ('2','2','产品服务头部广告位','/data/upload/20160723/5792dae218047.png','#','产品服务头部广告位','','1','0');
DROP TABLE IF EXISTS `com_slide_cat`;
CREATE TABLE `com_slide_cat` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(255) NOT NULL COMMENT '幻灯片分类',
  `cat_idname` varchar(255) NOT NULL COMMENT '幻灯片分类标识',
  `cat_remark` text COMMENT '分类备注',
  `cat_status` int(2) NOT NULL DEFAULT '1' COMMENT '状态，1显示，0不显示',
  PRIMARY KEY (`cid`),
  KEY `cat_idname` (`cat_idname`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
INSERT INTO com_slide_cat ( `cid`, `cat_name`, `cat_idname`, `cat_remark`, `cat_status` ) VALUES  ('1','主页幻灯片','index_slider','主页幻灯片轮播图','1');
INSERT INTO com_slide_cat ( `cid`, `cat_name`, `cat_idname`, `cat_remark`, `cat_status` ) VALUES  ('2','产品服务头部广告位','service_ads','产品服务头部广告位','1');
DROP TABLE IF EXISTS `com_term_relationships`;
CREATE TABLE `com_term_relationships` (
  `tid` bigint(20) NOT NULL AUTO_INCREMENT,
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'posts表里文章id',
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '分类id',
  `listorder` int(10) NOT NULL DEFAULT '0' COMMENT '排序',
  `status` int(2) NOT NULL DEFAULT '1' COMMENT '状态，1发布，0不发布',
  PRIMARY KEY (`tid`),
  KEY `term_taxonomy_id` (`term_id`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
INSERT INTO com_term_relationships ( `tid`, `object_id`, `term_id`, `listorder`, `status` ) VALUES  ('11','5','12','0','1');
INSERT INTO com_term_relationships ( `tid`, `object_id`, `term_id`, `listorder`, `status` ) VALUES  ('12','6','10','0','1');
INSERT INTO com_term_relationships ( `tid`, `object_id`, `term_id`, `listorder`, `status` ) VALUES  ('3','7','6','0','1');
INSERT INTO com_term_relationships ( `tid`, `object_id`, `term_id`, `listorder`, `status` ) VALUES  ('4','8','7','0','1');
INSERT INTO com_term_relationships ( `tid`, `object_id`, `term_id`, `listorder`, `status` ) VALUES  ('5','9','3','0','1');
INSERT INTO com_term_relationships ( `tid`, `object_id`, `term_id`, `listorder`, `status` ) VALUES  ('9','10','9','0','1');
INSERT INTO com_term_relationships ( `tid`, `object_id`, `term_id`, `listorder`, `status` ) VALUES  ('8','11','8','0','1');
INSERT INTO com_term_relationships ( `tid`, `object_id`, `term_id`, `listorder`, `status` ) VALUES  ('13','12','12','0','1');
INSERT INTO com_term_relationships ( `tid`, `object_id`, `term_id`, `listorder`, `status` ) VALUES  ('15','14','17','0','1');
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
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
INSERT INTO com_terms ( `term_id`, `name`, `slug`, `taxonomy`, `description`, `parent`, `count`, `path`, `seo_title`, `seo_keywords`, `seo_description`, `list_tpl`, `one_tpl`, `listorder`, `status` ) VALUES  ('6','众享资讯','','article','众享资讯','0','0','0-6','','','','list','articles','0','1');
INSERT INTO com_terms ( `term_id`, `name`, `slug`, `taxonomy`, `description`, `parent`, `count`, `path`, `seo_title`, `seo_keywords`, `seo_description`, `list_tpl`, `one_tpl`, `listorder`, `status` ) VALUES  ('7','产品动态','','article','产品动态','0','0','0-7','','','','serviceindex','servicedetail','0','1');
INSERT INTO com_terms ( `term_id`, `name`, `slug`, `taxonomy`, `description`, `parent`, `count`, `path`, `seo_title`, `seo_keywords`, `seo_description`, `list_tpl`, `one_tpl`, `listorder`, `status` ) VALUES  ('3','产品&amp;服务','','picture','产品&amp;服务','0','0','0-3','','','','serviceindex','servicedetail','0','1');
INSERT INTO com_terms ( `term_id`, `name`, `slug`, `taxonomy`, `description`, `parent`, `count`, `path`, `seo_title`, `seo_keywords`, `seo_description`, `list_tpl`, `one_tpl`, `listorder`, `status` ) VALUES  ('4','公司案例','','anli','公司案例','0','0','0-4','','','','successindex','successdetail','0','1');
INSERT INTO com_terms ( `term_id`, `name`, `slug`, `taxonomy`, `description`, `parent`, `count`, `path`, `seo_title`, `seo_keywords`, `seo_description`, `list_tpl`, `one_tpl`, `listorder`, `status` ) VALUES  ('5','人才招聘','','job','人才招聘','0','0','0-5','','','','joblist','joblist','0','1');
INSERT INTO com_terms ( `term_id`, `name`, `slug`, `taxonomy`, `description`, `parent`, `count`, `path`, `seo_title`, `seo_keywords`, `seo_description`, `list_tpl`, `one_tpl`, `listorder`, `status` ) VALUES  ('8','O2O服务类','','picture','','3','0','0-3-8','','','','serviceindex','servicedetail','0','1');
INSERT INTO com_terms ( `term_id`, `name`, `slug`, `taxonomy`, `description`, `parent`, `count`, `path`, `seo_title`, `seo_keywords`, `seo_description`, `list_tpl`, `one_tpl`, `listorder`, `status` ) VALUES  ('9','云电商类','','picture','','3','0','0-3-9','','','','serviceindex','servicedetail','0','1');
INSERT INTO com_terms ( `term_id`, `name`, `slug`, `taxonomy`, `description`, `parent`, `count`, `path`, `seo_title`, `seo_keywords`, `seo_description`, `list_tpl`, `one_tpl`, `listorder`, `status` ) VALUES  ('10','O2O服务类','','anli','','4','0','0-4-10','','','','successindex','successdetail','0','1');
INSERT INTO com_terms ( `term_id`, `name`, `slug`, `taxonomy`, `description`, `parent`, `count`, `path`, `seo_title`, `seo_keywords`, `seo_description`, `list_tpl`, `one_tpl`, `listorder`, `status` ) VALUES  ('11','电商类','','anli','','4','0','0-4-11','','','','successindex','successdetail','0','1');
INSERT INTO com_terms ( `term_id`, `name`, `slug`, `taxonomy`, `description`, `parent`, `count`, `path`, `seo_title`, `seo_keywords`, `seo_description`, `list_tpl`, `one_tpl`, `listorder`, `status` ) VALUES  ('12','智能设备类','','anli','','4','0','0-4-12','','','','successindex','successdetail','0','1');
INSERT INTO com_terms ( `term_id`, `name`, `slug`, `taxonomy`, `description`, `parent`, `count`, `path`, `seo_title`, `seo_keywords`, `seo_description`, `list_tpl`, `one_tpl`, `listorder`, `status` ) VALUES  ('13','政务系统类','','anli','','4','0','0-4-13','','','','successindex','successdetail','0','1');
INSERT INTO com_terms ( `term_id`, `name`, `slug`, `taxonomy`, `description`, `parent`, `count`, `path`, `seo_title`, `seo_keywords`, `seo_description`, `list_tpl`, `one_tpl`, `listorder`, `status` ) VALUES  ('14','金融行业类','','anli','','4','0','0-4-14','','','','successindex','successdetail','0','1');
INSERT INTO com_terms ( `term_id`, `name`, `slug`, `taxonomy`, `description`, `parent`, `count`, `path`, `seo_title`, `seo_keywords`, `seo_description`, `list_tpl`, `one_tpl`, `listorder`, `status` ) VALUES  ('15','政务与行业类','','picture','','3','0','0-3-15','','','','list','article','0','1');
INSERT INTO com_terms ( `term_id`, `name`, `slug`, `taxonomy`, `description`, `parent`, `count`, `path`, `seo_title`, `seo_keywords`, `seo_description`, `list_tpl`, `one_tpl`, `listorder`, `status` ) VALUES  ('16','智能设备类','','picture','','3','0','0-3-16','','','','list','article','0','1');
INSERT INTO com_terms ( `term_id`, `name`, `slug`, `taxonomy`, `description`, `parent`, `count`, `path`, `seo_title`, `seo_keywords`, `seo_description`, `list_tpl`, `one_tpl`, `listorder`, `status` ) VALUES  ('17','程序/技术','','job','','5','0','0-5-17','','','','joblist','joblist','0','1');
INSERT INTO com_terms ( `term_id`, `name`, `slug`, `taxonomy`, `description`, `parent`, `count`, `path`, `seo_title`, `seo_keywords`, `seo_description`, `list_tpl`, `one_tpl`, `listorder`, `status` ) VALUES  ('18','行政/人资','','job','','5','0','0-5-18','','','','joblist','joblist','0','1');
INSERT INTO com_terms ( `term_id`, `name`, `slug`, `taxonomy`, `description`, `parent`, `count`, `path`, `seo_title`, `seo_keywords`, `seo_description`, `list_tpl`, `one_tpl`, `listorder`, `status` ) VALUES  ('19','市场/销售','','job','','5','0','0-5-19','','','','joblist','joblist','0','1');
INSERT INTO com_terms ( `term_id`, `name`, `slug`, `taxonomy`, `description`, `parent`, `count`, `path`, `seo_title`, `seo_keywords`, `seo_description`, `list_tpl`, `one_tpl`, `listorder`, `status` ) VALUES  ('20','产品/策划','','job','','5','0','0-5-20','','','','joblist','joblist','0','1');
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
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
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
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
INSERT INTO com_users ( `id`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `avatar`, `sex`, `birthday`, `signature`, `last_login_ip`, `last_login_time`, `create_time`, `user_activation_key`, `user_status`, `score`, `user_type`, `coin`, `mobile` ) VALUES  ('1','admin','###83ca754a50ed491f8da84d5c948f9cd5','admin','admin@sharingany.com','','','0','0000-00-00','','120.32.127.187','2016-09-04 20:35:31','2016-07-11 01:49:11','','1','0','1','0','');
DROP TABLE IF EXISTS `com_variable`;
CREATE TABLE `com_variable` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '变量ID',
  `variableName` varchar(255) NOT NULL COMMENT '变量名',
  `variableValue` varchar(255) DEFAULT NULL COMMENT '变量值',
  `beizhu` varchar(255) DEFAULT NULL COMMENT '备注说明',
  `listorder` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`id`),
  UNIQUE KEY `variableName` (`variableName`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
INSERT INTO com_variable ( `id`, `variablename`, `variablevalue`, `beizhu`, `listorder` ) VALUES  ('6','company_name','福建 ● 众享网络科技有限公司','公司名称','0');
INSERT INTO com_variable ( `id`, `variablename`, `variablevalue`, `beizhu`, `listorder` ) VALUES  ('7','service_tel','0591-63337100','服务热线','0');
INSERT INTO com_variable ( `id`, `variablename`, `variablevalue`, `beizhu`, `listorder` ) VALUES  ('8','zixun_time','09:00-18:00','售前咨询时间段设置','0');
INSERT INTO com_variable ( `id`, `variablename`, `variablevalue`, `beizhu`, `listorder` ) VALUES  ('9','company_qq','867793066','企业QQ','0');
INSERT INTO com_variable ( `id`, `variablename`, `variablevalue`, `beizhu`, `listorder` ) VALUES  ('10','company_email','allsharecompany@163.com','企业邮箱','0');
INSERT INTO com_variable ( `id`, `variablename`, `variablevalue`, `beizhu`, `listorder` ) VALUES  ('11','company_main_address','福州市 · 马尾区江滨东大道100-1号世创国隆中心21层','公司地址','0');
INSERT INTO com_variable ( `id`, `variablename`, `variablevalue`, `beizhu`, `listorder` ) VALUES  ('12','company_sub_address','鼓楼区工业路523号福大创业园222-226','公司地址2','0');
