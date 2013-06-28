/*
Navicat MySQL Data Transfer
Source Host     : 192.168.31.65:3306
Source Database : myblog
Target Host     : 192.168.31.65:3306
Target Database : myblog
Date: 2013-06-28 15:44:17
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for bai_article
-- ----------------------------
DROP TABLE IF EXISTS `bai_article`;
CREATE TABLE `bai_article` (
  `a_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `a_title` varchar(200) NOT NULL DEFAULT '' COMMENT '标题',
  `a_image` varchar(200) NOT NULL DEFAULT '' COMMENT '主题图片',
  `a_type` int(4) NOT NULL DEFAULT '0' COMMENT '分类',
  `a_content` longtext NOT NULL COMMENT '内容',
  `a_author` bigint(20) NOT NULL DEFAULT '0' COMMENT '作者',
  `a_views` bigint(20) NOT NULL DEFAULT '0' COMMENT '浏览量',
  `a_support` bigint(20) NOT NULL DEFAULT '0' COMMENT '支持',
  `a_oppose` bigint(20) NOT NULL DEFAULT '0' COMMENT '反对',
  `a_status` int(4) NOT NULL DEFAULT '0' COMMENT '状态',
  `a_addTime` bigint(20) NOT NULL DEFAULT '0' COMMENT '添加时间',
  `a_updateTime` bigint(20) NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`a_id`),
  KEY `FK_Reference_1` (`a_author`),
  KEY `FK_Reference_2` (`a_type`),
  CONSTRAINT `FK_Reference_1` FOREIGN KEY (`a_author`) REFERENCES `bai_user` (`u_id`),
  CONSTRAINT `FK_Reference_2` FOREIGN KEY (`a_type`) REFERENCES `bai_category` (`c_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='文章表';

-- ----------------------------
-- Records of bai_article
-- ----------------------------

-- ----------------------------
-- Table structure for bai_category
-- ----------------------------
DROP TABLE IF EXISTS `bai_category`;
CREATE TABLE `bai_category` (
  `c_id` int(4) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `c_name` varchar(50) NOT NULL DEFAULT '' COMMENT '分类名称',
  `c_addTime` bigint(12) NOT NULL DEFAULT '0' COMMENT '添加时间',
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bai_category
-- ----------------------------

-- ----------------------------
-- Table structure for bai_comment
-- ----------------------------
DROP TABLE IF EXISTS `bai_comment`;
CREATE TABLE `bai_comment` (
  `com_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `com_uid` bigint(20) NOT NULL DEFAULT '0' COMMENT '注册用户ID',
  `com_pid` bigint(20) NOT NULL DEFAULT '0' COMMENT '对评论的回复',
  `com_name` varchar(50) NOT NULL DEFAULT '' COMMENT '非注册用户名称',
  `com_email` varchar(100) NOT NULL DEFAULT '' COMMENT '非注册用户Email',
  `com_artid` bigint(20) NOT NULL DEFAULT '0' COMMENT '评论对象(文章)ID',
  `com_content` varchar(1000) NOT NULL DEFAULT '' COMMENT '评论内容',
  `com_time` bigint(12) NOT NULL DEFAULT '0' COMMENT '评论时间',
  `com_status` int(4) NOT NULL DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`com_id`),
  KEY `FK_Reference_3` (`com_uid`),
  CONSTRAINT `FK_Reference_3` FOREIGN KEY (`com_uid`) REFERENCES `bai_user` (`u_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bai_comment
-- ----------------------------

-- ----------------------------
-- Table structure for bai_user
-- ----------------------------
DROP TABLE IF EXISTS `bai_user`;
CREATE TABLE `bai_user` (
  `u_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `u_email` varchar(100) NOT NULL DEFAULT '' COMMENT '邮箱',
  `u_password` varchar(100) NOT NULL DEFAULT '' COMMENT '密码',
  `u_sex` tinyint(2) NOT NULL DEFAULT '0' COMMENT '性别',
  `u_nickname` varchar(50) NOT NULL DEFAULT '' COMMENT '昵称',
  `u_realname` varchar(50) NOT NULL DEFAULT '' COMMENT '真实姓名',
  `u_birthday` bigint(12) NOT NULL DEFAULT '0' COMMENT '生日',
  `u_address` varchar(100) NOT NULL DEFAULT '' COMMENT '联系地址',
  `u_mobile` varchar(20) NOT NULL DEFAULT '' COMMENT '电话',
  `u_image` varchar(200) NOT NULL DEFAULT '' COMMENT '用户头像路径',
  `u_intro` varchar(300) NOT NULL DEFAULT '' COMMENT '用户简介',
  `u_status` smallint(4) NOT NULL DEFAULT '0' COMMENT '状态',
  `u_regtime` bigint(12) NOT NULL DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`u_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of bai_user
-- ----------------------------
