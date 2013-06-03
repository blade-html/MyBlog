/*
Navicat MySQL Data Transfer

Source Server         : 192.168.31.65
Source Server Version : 50531
Source Host           : 192.168.31.65:3306
Source Database       : myblog

Target Server Type    : MYSQL
Target Server Version : 50531
File Encoding         : 65001

Date: 2013-05-29 18:01:20
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `bai_article`
-- ----------------------------
DROP TABLE IF EXISTS `bai_article`;
CREATE TABLE `bai_article` (
  `a_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `a_title` varchar(200) NOT NULL DEFAULT '' COMMENT '标题',
  `a_tags` varchar(100) NOT NULL DEFAULT '' COMMENT '标签',
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
  CONSTRAINT `FK_Reference_1` FOREIGN KEY (`a_author`) REFERENCES `bai_user` (`u_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='文章表';

-- ----------------------------
-- Records of bai_article
-- ----------------------------

-- ----------------------------
-- Table structure for `bai_user`
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
  `u_status` smallint(4) NOT NULL DEFAULT '0' COMMENT '状态',
  `u_regtime` bigint(12) NOT NULL DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`u_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of bai_user
-- ----------------------------
