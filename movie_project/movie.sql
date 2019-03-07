/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50710
Source Host           : localhost:3306
Source Database       : movie

Target Server Type    : MYSQL
Target Server Version : 50710
File Encoding         : 65001

Date: 2019-02-01 14:08:29
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `pwd` varchar(100) DEFAULT NULL,
  `is_super` smallint(6) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `addtime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `role_id` (`role_id`),
  KEY `ix_admin_addtime` (`addtime`),
  CONSTRAINT `admin_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', 'fatalmovie', 'pbkdf2:sha256:50000$dtoygBwj$b9eba229a9807d4653291b4acbcfa9352b7057d112705fa5029f47b0cb6406b2', '0', '1', '2019-01-18 14:23:21');
INSERT INTO `admin` VALUES ('2', 'fatalmovie1', 'pbkdf2:sha256:50000$KtHGlLVO$d3b58cbcebb365f6ae7e7eae6459fbe0aa81a2598f75937d1c35d3a9574982f8', '0', '1', '2019-01-18 22:27:21');
INSERT INTO `admin` VALUES ('3', 'sunck', 'pbkdf2:sha256:50000$yJyFZgME$899db95a9dddb310baf712a650299339798422ca0c199e83cee87fdfb5d701aa', null, '1', '2019-01-28 17:57:33');
INSERT INTO `admin` VALUES ('4', 'sunck2', 'pbkdf2:sha256:50000$prV2fLGc$4d1f6fc2f0beb2536061ebb36bfee9713b18c3b3c1e6758bd03fa12388d3c362', '1', '5', '2019-01-28 17:59:28');
INSERT INTO `admin` VALUES ('5', 'sunck3', 'pbkdf2:sha256:50000$iWpqYJGs$f87a95f67edbf146f11b3e6a60fb05eccce1b1f3cc3fb385fe058762f56adec2', '1', '6', '2019-01-29 11:20:40');
INSERT INTO `admin` VALUES ('6', 'fatalmovie2', 'pbkdf2:sha256:50000$qCKcrcAs$7a9d16d839e5a0120df0696c61b4c97e1cd982823c6ca389b0b4fafcfcafa0d5', '1', '1', '2019-01-31 17:25:18');
INSERT INTO `admin` VALUES ('7', 'java', 'pbkdf2:sha256:50000$m7zXZH76$e208a30fe51708b108e9aae503732797b1e682cf9ef82a899f95204b75e859b2', '1', '1', '2019-01-31 17:34:10');

-- ----------------------------
-- Table structure for adminlog
-- ----------------------------
DROP TABLE IF EXISTS `adminlog`;
CREATE TABLE `adminlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_id` int(11) DEFAULT NULL,
  `ip` varchar(100) DEFAULT NULL,
  `addtime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_id` (`admin_id`),
  KEY `ix_adminlog_addtime` (`addtime`),
  CONSTRAINT `adminlog_ibfk_1` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of adminlog
-- ----------------------------
INSERT INTO `adminlog` VALUES ('1', '1', '127.0.0.1', '2019-01-28 11:53:51');
INSERT INTO `adminlog` VALUES ('2', '1', '127.0.0.1', '2019-01-28 11:54:01');
INSERT INTO `adminlog` VALUES ('3', '1', '127.0.0.1', '2019-01-28 11:54:11');
INSERT INTO `adminlog` VALUES ('4', '1', '127.0.0.1', '2019-01-28 11:54:21');
INSERT INTO `adminlog` VALUES ('5', '1', '127.0.0.1', '2019-01-28 13:24:22');
INSERT INTO `adminlog` VALUES ('6', '1', '127.0.0.1', '2019-01-28 15:03:24');
INSERT INTO `adminlog` VALUES ('7', '1', '127.0.0.1', '2019-01-28 18:34:04');
INSERT INTO `adminlog` VALUES ('8', '4', '127.0.0.1', '2019-01-29 10:59:22');
INSERT INTO `adminlog` VALUES ('9', '1', '127.0.0.1', '2019-01-29 10:59:47');
INSERT INTO `adminlog` VALUES ('10', '1', '127.0.0.1', '2019-01-29 11:03:12');
INSERT INTO `adminlog` VALUES ('11', '4', '127.0.0.1', '2019-01-29 11:03:51');
INSERT INTO `adminlog` VALUES ('12', '1', '127.0.0.1', '2019-01-29 11:06:47');
INSERT INTO `adminlog` VALUES ('13', '4', '127.0.0.1', '2019-01-29 11:10:13');
INSERT INTO `adminlog` VALUES ('14', '1', '127.0.0.1', '2019-01-29 11:10:32');
INSERT INTO `adminlog` VALUES ('15', '4', '127.0.0.1', '2019-01-29 11:11:24');
INSERT INTO `adminlog` VALUES ('16', '1', '127.0.0.1', '2019-01-29 11:13:21');
INSERT INTO `adminlog` VALUES ('17', '4', '127.0.0.1', '2019-01-29 11:14:55');
INSERT INTO `adminlog` VALUES ('18', '4', '127.0.0.1', '2019-01-29 11:16:04');
INSERT INTO `adminlog` VALUES ('19', '4', '127.0.0.1', '2019-01-29 11:16:33');
INSERT INTO `adminlog` VALUES ('20', '5', '127.0.0.1', '2019-01-29 11:24:13');
INSERT INTO `adminlog` VALUES ('21', '1', '127.0.0.1', '2019-01-29 14:13:53');
INSERT INTO `adminlog` VALUES ('22', '1', '127.0.0.1', '2019-01-30 11:22:28');
INSERT INTO `adminlog` VALUES ('23', '4', '127.0.0.1', '2019-01-30 11:22:39');
INSERT INTO `adminlog` VALUES ('24', '1', '127.0.0.1', '2019-01-31 16:18:45');
INSERT INTO `adminlog` VALUES ('25', '4', '127.0.0.1', '2019-01-31 16:18:57');
INSERT INTO `adminlog` VALUES ('26', '1', '127.0.0.1', '2019-01-31 16:38:07');
INSERT INTO `adminlog` VALUES ('27', '1', '127.0.0.1', '2019-01-31 16:41:33');
INSERT INTO `adminlog` VALUES ('28', '4', '127.0.0.1', '2019-01-31 16:42:49');
INSERT INTO `adminlog` VALUES ('29', '1', '127.0.0.1', '2019-01-31 17:22:09');
INSERT INTO `adminlog` VALUES ('30', '1', '127.0.0.1', '2019-01-31 17:22:40');
INSERT INTO `adminlog` VALUES ('31', '6', '127.0.0.1', '2019-01-31 17:25:31');
INSERT INTO `adminlog` VALUES ('32', '7', '127.0.0.1', '2019-01-31 17:36:25');
INSERT INTO `adminlog` VALUES ('33', '1', '127.0.0.1', '2019-01-31 17:38:06');

-- ----------------------------
-- Table structure for auth
-- ----------------------------
DROP TABLE IF EXISTS `auth`;
CREATE TABLE `auth` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `addtime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `url` (`url`),
  KEY `ix_auth_addtime` (`addtime`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth
-- ----------------------------
INSERT INTO `auth` VALUES ('1', '添加标签', '/admin/tag/add/', '2019-01-28 13:43:17');
INSERT INTO `auth` VALUES ('2', '编辑标签', '/admin/tag/edit/<int:id>/', '2019-01-28 13:44:45');
INSERT INTO `auth` VALUES ('3', '标签列表', '/admin/tag/list/<int:page>/', '2019-01-28 13:45:15');
INSERT INTO `auth` VALUES ('5', '标签删除', '/admin/tag/del/<int:id>/', '2019-01-28 14:32:40');
INSERT INTO `auth` VALUES ('6', '添加权限', '/admin/auth/add/', '2019-01-31 16:30:25');
INSERT INTO `auth` VALUES ('7', '权限列表', '/admin/auth/list/<int:page>/', '2019-01-31 16:30:40');
INSERT INTO `auth` VALUES ('8', '删除权限', '/admin/auth/del/<int:id>/', '2019-01-31 16:31:02');
INSERT INTO `auth` VALUES ('9', '编辑权限', '/admin/auth/edit/<int:id>/', '2019-01-31 16:31:20');
INSERT INTO `auth` VALUES ('10', '添加管理员', '/admin/add/', '2019-01-31 16:31:30');
INSERT INTO `auth` VALUES ('11', '管理员列表', '/admin/list/<int:page>/', '2019-01-31 16:31:40');
INSERT INTO `auth` VALUES ('12', '编辑角色', '/admin/role/edit/<int:id>/', '2019-01-31 16:32:27');
INSERT INTO `auth` VALUES ('13', '删除角色', '/admin/role/del/<int:id>/', '2019-01-31 16:32:38');
INSERT INTO `auth` VALUES ('14', '角色列表', '/admin/role/list/<int:page>/', '2019-01-31 16:32:55');
INSERT INTO `auth` VALUES ('15', '添加角色', '/admin/role/add/', '2019-01-31 16:33:06');
INSERT INTO `auth` VALUES ('16', '会员日志', '/admin/userloginlog/list/<int:page>/', '2019-01-31 16:33:21');
INSERT INTO `auth` VALUES ('17', '管理员日志', '/admin/adminloginlog/list/<int:page>/', '2019-01-31 16:33:31');
INSERT INTO `auth` VALUES ('18', '操作日志', '/admin/oplog/list/<int:page>/', '2019-01-31 16:33:42');
INSERT INTO `auth` VALUES ('19', '删除收藏电影', '/admin/moviecol/del/<int:id>/', '2019-01-31 16:33:53');
INSERT INTO `auth` VALUES ('20', '电影收藏列表', '/admin/moviecol/list/<int:page>/', '2019-01-31 16:34:02');
INSERT INTO `auth` VALUES ('21', '删除评论', '/admin/comment/del/<int:id>/', '2019-01-31 16:34:15');
INSERT INTO `auth` VALUES ('22', '评论管理列表', '/admin/comment/list/<int:page>/', '2019-01-31 16:34:28');
INSERT INTO `auth` VALUES ('23', '删除会员', '/admin/user/del/<int:id>/', '2019-01-31 16:34:39');
INSERT INTO `auth` VALUES ('24', '查看会员信息', '/admin/user/view/<int:id>/', '2019-01-31 16:34:52');
INSERT INTO `auth` VALUES ('25', '会员列表', '/admin/user/list/<int:page>/', '2019-01-31 16:35:02');
INSERT INTO `auth` VALUES ('26', '编辑电影预告', '/admin/preview/edit/<int:id>/', '2019-01-31 16:35:14');
INSERT INTO `auth` VALUES ('27', '删除电影预告', '/admin/preview/del/<int:id>/', '2019-01-31 16:35:25');
INSERT INTO `auth` VALUES ('28', '电影预告列表', '/admin/preview/list/<int:page>/', '2019-01-31 16:35:36');
INSERT INTO `auth` VALUES ('29', '添加电影预告', '/admin/preview/add/', '2019-01-31 16:35:49');
INSERT INTO `auth` VALUES ('30', '删除电影', '/admin/movie/del/<int:id>/', '2019-01-31 16:35:59');
INSERT INTO `auth` VALUES ('31', '编辑电影', '/admin/movie/edit/<int:id>/', '2019-01-31 16:36:10');
INSERT INTO `auth` VALUES ('32', '电影列表', '/admin/movie/list/<int:page>/', '2019-01-31 16:36:19');
INSERT INTO `auth` VALUES ('33', '添加电影', '/admin/movie/add/', '2019-01-31 16:36:28');
INSERT INTO `auth` VALUES ('34', '后台首页', '/admin/', '2019-01-31 16:36:28');

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text,
  `movie_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `addtime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `movie_id` (`movie_id`),
  KEY `user_id` (`user_id`),
  KEY `ix_comment_addtime` (`addtime`),
  CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`id`),
  CONSTRAINT `comment_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES ('25', '好看', '2', '1', '2019-01-27 17:19:19');
INSERT INTO `comment` VALUES ('26', '不错', '2', '2', '2019-01-27 17:19:19');
INSERT INTO `comment` VALUES ('27', '经典', '2', '3', '2019-01-27 17:19:19');
INSERT INTO `comment` VALUES ('28', '给力', '2', '4', '2019-01-27 17:19:19');
INSERT INTO `comment` VALUES ('29', '难看', '3', '5', '2019-01-27 17:19:19');
INSERT INTO `comment` VALUES ('30', '无聊', '3', '6', '2019-01-27 17:19:19');
INSERT INTO `comment` VALUES ('31', '乏味', '3', '7', '2019-01-27 17:19:19');
INSERT INTO `comment` VALUES ('32', '<p>aaaaaaaaaaaa</p>', '3', '14', '2019-01-30 16:32:28');
INSERT INTO `comment` VALUES ('33', '<p>nnnnnnnnnnnnnn</p>', '3', '14', '2019-01-30 16:33:33');
INSERT INTO `comment` VALUES ('34', '<p>aaa</p>', '3', '14', '2019-01-30 16:34:17');
INSERT INTO `comment` VALUES ('35', '<p><img src=\"http://img.baidu.com/hi/jx2/j_0002.gif\"/><img src=\"http://img.baidu.com/hi/jx2/j_0002.gif\"/></p>', '3', '14', '2019-01-30 16:35:16');
INSERT INTO `comment` VALUES ('36', '<p>7777777</p>', '2', '14', '2019-01-31 11:15:13');
INSERT INTO `comment` VALUES ('37', '<p><img src=\"http://img.baidu.com/hi/jx2/j_0020.gif\"/></p>', '3', '14', '2019-01-31 11:21:59');
INSERT INTO `comment` VALUES ('38', '<p><img src=\"http://img.baidu.com/hi/jx2/j_0061.gif\"/></p>', '3', '16', '2019-01-31 16:10:25');

-- ----------------------------
-- Table structure for movie
-- ----------------------------
DROP TABLE IF EXISTS `movie`;
CREATE TABLE `movie` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `info` text,
  `logo` varchar(255) DEFAULT NULL,
  `star` smallint(6) DEFAULT NULL,
  `playnum` bigint(20) DEFAULT NULL,
  `commentnum` bigint(20) DEFAULT NULL,
  `tag_id` int(11) DEFAULT NULL,
  `area` varchar(255) DEFAULT NULL,
  `release_time` date DEFAULT NULL,
  `length` varchar(100) DEFAULT NULL,
  `addtime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`),
  UNIQUE KEY `url` (`url`),
  UNIQUE KEY `logo` (`logo`),
  KEY `tag_id` (`tag_id`),
  KEY `ix_movie_addtime` (`addtime`),
  CONSTRAINT `movie_ibfk_1` FOREIGN KEY (`tag_id`) REFERENCES `tag` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of movie
-- ----------------------------
INSERT INTO `movie` VALUES ('2', '66周年', '20190121191124b7a14a7b43b94a5cb1780e4a8e087068.mp4', '66周年！', '201901211911240901bf7261944cc0958477834f4f3a7c.png', '1', '62', '0', '1', '美国', '2019-01-16', '5', '2019-01-21 16:16:11');
INSERT INTO `movie` VALUES ('3', 'final', '20190121161740d1b029eba7d0481ba7162050085ff3f5.mp4', 'final！', '201901211617409a38f3ea144d41d89cd350c1ebaa501c.png', '5', '97', '2', '2', '美国', '2019-02-01', '1', '2019-01-21 16:17:40');

-- ----------------------------
-- Table structure for moviecol
-- ----------------------------
DROP TABLE IF EXISTS `moviecol`;
CREATE TABLE `moviecol` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `movie_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `addtime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `movie_id` (`movie_id`),
  KEY `user_id` (`user_id`),
  KEY `ix_moviecol_addtime` (`addtime`),
  CONSTRAINT `moviecol_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`id`),
  CONSTRAINT `moviecol_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of moviecol
-- ----------------------------
INSERT INTO `moviecol` VALUES ('1', '2', '1', '2019-01-27 17:54:35');
INSERT INTO `moviecol` VALUES ('2', '2', '2', '2019-01-27 17:54:35');
INSERT INTO `moviecol` VALUES ('3', '2', '3', '2019-01-27 17:54:35');
INSERT INTO `moviecol` VALUES ('4', '2', '4', '2019-01-27 17:54:35');
INSERT INTO `moviecol` VALUES ('5', '3', '14', '2019-01-27 17:54:35');
INSERT INTO `moviecol` VALUES ('6', '3', '4', '2019-01-27 17:54:35');
INSERT INTO `moviecol` VALUES ('7', '3', '5', '2019-01-27 17:54:35');
INSERT INTO `moviecol` VALUES ('9', '2', '14', '2019-01-31 12:04:19');

-- ----------------------------
-- Table structure for oplog
-- ----------------------------
DROP TABLE IF EXISTS `oplog`;
CREATE TABLE `oplog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_id` int(11) DEFAULT NULL,
  `ip` varchar(100) DEFAULT NULL,
  `reason` varchar(600) DEFAULT NULL,
  `addtime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_id` (`admin_id`),
  KEY `ix_oplog_addtime` (`addtime`),
  CONSTRAINT `oplog_ibfk_1` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oplog
-- ----------------------------
INSERT INTO `oplog` VALUES ('1', '1', '127.0.0.1', '添加标签123', '2019-01-28 11:20:32');
INSERT INTO `oplog` VALUES ('2', '1', '127.0.0.1', '添加标签456', '2019-01-28 11:20:35');
INSERT INTO `oplog` VALUES ('3', '1', '127.0.0.1', '添加标签789', '2019-01-28 11:20:40');
INSERT INTO `oplog` VALUES ('4', '1', '127.0.0.1', '添加标签abc', '2019-01-28 11:20:42');
INSERT INTO `oplog` VALUES ('5', '1', '127.0.0.1', '添加标签def', '2019-01-28 11:20:45');
INSERT INTO `oplog` VALUES ('6', '1', '127.0.0.1', '添加权限添加标签', '2019-01-28 13:43:17');
INSERT INTO `oplog` VALUES ('7', '1', '127.0.0.1', '添加权限编辑标签', '2019-01-28 13:44:45');
INSERT INTO `oplog` VALUES ('8', '1', '127.0.0.1', '添加权限标签列表', '2019-01-28 13:45:15');
INSERT INTO `oplog` VALUES ('9', '1', '127.0.0.1', '添加权限删除标签', '2019-01-28 13:46:10');
INSERT INTO `oplog` VALUES ('10', '1', '127.0.0.1', '添加权限删除标签', '2019-01-28 14:32:40');
INSERT INTO `oplog` VALUES ('11', '1', '127.0.0.1', '添加权限标签管理员1', '2019-01-28 15:32:32');
INSERT INTO `oplog` VALUES ('12', '1', '127.0.0.1', '添加权限标签管理员2', '2019-01-28 15:32:46');
INSERT INTO `oplog` VALUES ('13', '1', '127.0.0.1', '添加权限标签管理员', '2019-01-28 15:56:46');
INSERT INTO `oplog` VALUES ('14', '1', '127.0.0.1', '添加权限标签管理员', '2019-01-28 16:16:59');
INSERT INTO `oplog` VALUES ('15', '1', '127.0.0.1', '添加权限标签管理员2', '2019-01-28 16:17:34');
INSERT INTO `oplog` VALUES ('16', '1', '127.0.0.1', '添加权限标签管理员3', '2019-01-28 17:49:33');
INSERT INTO `oplog` VALUES ('17', '1', '127.0.0.1', '添加权限标签管理员3', '2019-01-28 17:55:20');
INSERT INTO `oplog` VALUES ('18', '5', '127.0.0.1', '添加标签123123', '2019-01-29 11:26:55');
INSERT INTO `oplog` VALUES ('19', '4', '127.0.0.1', '添加权限添加权限', '2019-01-31 16:30:25');
INSERT INTO `oplog` VALUES ('20', '4', '127.0.0.1', '添加权限权限列表', '2019-01-31 16:30:40');
INSERT INTO `oplog` VALUES ('21', '4', '127.0.0.1', '添加权限删除权限', '2019-01-31 16:31:02');
INSERT INTO `oplog` VALUES ('22', '4', '127.0.0.1', '添加权限编辑权限', '2019-01-31 16:31:20');
INSERT INTO `oplog` VALUES ('23', '4', '127.0.0.1', '添加权限添加管理员', '2019-01-31 16:31:30');
INSERT INTO `oplog` VALUES ('24', '4', '127.0.0.1', '添加权限管理员列表', '2019-01-31 16:31:40');
INSERT INTO `oplog` VALUES ('25', '4', '127.0.0.1', '添加权限编辑角色', '2019-01-31 16:32:27');
INSERT INTO `oplog` VALUES ('26', '4', '127.0.0.1', '添加权限删除角色', '2019-01-31 16:32:38');
INSERT INTO `oplog` VALUES ('27', '4', '127.0.0.1', '添加权限角色列表', '2019-01-31 16:32:55');
INSERT INTO `oplog` VALUES ('28', '4', '127.0.0.1', '添加权限添加角色', '2019-01-31 16:33:06');
INSERT INTO `oplog` VALUES ('29', '4', '127.0.0.1', '添加权限会员日志', '2019-01-31 16:33:21');
INSERT INTO `oplog` VALUES ('30', '4', '127.0.0.1', '添加权限管理员日志', '2019-01-31 16:33:31');
INSERT INTO `oplog` VALUES ('31', '4', '127.0.0.1', '添加权限操作日志', '2019-01-31 16:33:42');
INSERT INTO `oplog` VALUES ('32', '4', '127.0.0.1', '添加权限删除收藏电影', '2019-01-31 16:33:53');
INSERT INTO `oplog` VALUES ('33', '4', '127.0.0.1', '添加权限电影收藏列表', '2019-01-31 16:34:02');
INSERT INTO `oplog` VALUES ('34', '4', '127.0.0.1', '添加权限删除评论', '2019-01-31 16:34:15');
INSERT INTO `oplog` VALUES ('35', '4', '127.0.0.1', '添加权限评论管理列表', '2019-01-31 16:34:28');
INSERT INTO `oplog` VALUES ('36', '4', '127.0.0.1', '添加权限删除会员', '2019-01-31 16:34:39');
INSERT INTO `oplog` VALUES ('37', '4', '127.0.0.1', '添加权限查看会员信息', '2019-01-31 16:34:52');
INSERT INTO `oplog` VALUES ('38', '4', '127.0.0.1', '添加权限会员列表', '2019-01-31 16:35:02');
INSERT INTO `oplog` VALUES ('39', '4', '127.0.0.1', '添加权限编辑电影预告', '2019-01-31 16:35:14');
INSERT INTO `oplog` VALUES ('40', '4', '127.0.0.1', '添加权限删除电影预告', '2019-01-31 16:35:25');
INSERT INTO `oplog` VALUES ('41', '4', '127.0.0.1', '添加权限电影预告列表', '2019-01-31 16:35:36');
INSERT INTO `oplog` VALUES ('42', '4', '127.0.0.1', '添加权限添加电影预告', '2019-01-31 16:35:49');
INSERT INTO `oplog` VALUES ('43', '4', '127.0.0.1', '添加权限删除电影', '2019-01-31 16:35:59');
INSERT INTO `oplog` VALUES ('44', '4', '127.0.0.1', '添加权限编辑电影', '2019-01-31 16:36:10');
INSERT INTO `oplog` VALUES ('45', '4', '127.0.0.1', '添加权限电影列表', '2019-01-31 16:36:19');
INSERT INTO `oplog` VALUES ('46', '4', '127.0.0.1', '添加权限添加电影', '2019-01-31 16:36:28');

-- ----------------------------
-- Table structure for preview
-- ----------------------------
DROP TABLE IF EXISTS `preview`;
CREATE TABLE `preview` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `addtime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`),
  UNIQUE KEY `logo` (`logo`),
  KEY `ix_preview_addtime` (`addtime`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of preview
-- ----------------------------
INSERT INTO `preview` VALUES ('1', '变形金刚', '201901271149573e0454ed277045a7b63ef33cc5ad3215.png', '2019-01-27 11:49:58');
INSERT INTO `preview` VALUES ('2', '木乃伊', '201901271150080ff09b3a60854b0ea156042b3c84e58f.png', '2019-01-27 11:50:09');
INSERT INTO `preview` VALUES ('3', '碟中谍', '201901271423250a526586755d4514bb820e551738d2b4.png', '2019-01-27 13:24:34');
INSERT INTO `preview` VALUES ('4', '我的英雄学院', '201901271427117d0312d01a764339a1a385bccb4a6c5e.jpg', '2019-01-27 14:27:12');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `auths` varchar(600) DEFAULT NULL,
  `addtime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `ix_role_addtime` (`addtime`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('1', '超级管理员', '1,2,3,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34', '2019-01-18 09:50:09');
INSERT INTO `role` VALUES ('2', '标签管理员1', '3,5', '2019-01-28 15:32:32');
INSERT INTO `role` VALUES ('5', '标签管理员', '1,2,3,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33', '2019-01-28 16:16:59');
INSERT INTO `role` VALUES ('6', '标签管理员2', '1,2,3,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33', '2019-01-28 16:17:34');
INSERT INTO `role` VALUES ('8', '标签管理员3', '1,2,3', '2019-01-28 17:55:20');

-- ----------------------------
-- Table structure for tag
-- ----------------------------
DROP TABLE IF EXISTS `tag`;
CREATE TABLE `tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `addtime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `ix_tag_addtime` (`addtime`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tag
-- ----------------------------
INSERT INTO `tag` VALUES ('1', '科幻', '2019-01-21 10:15:55');
INSERT INTO `tag` VALUES ('2', '动作', '2019-01-21 10:21:15');
INSERT INTO `tag` VALUES ('3', '爱情', '2019-01-21 10:25:44');
INSERT INTO `tag` VALUES ('6', '魔幻', '2019-01-21 12:34:46');
INSERT INTO `tag` VALUES ('7', '123', '2019-01-28 11:20:32');
INSERT INTO `tag` VALUES ('8', '456', '2019-01-28 11:20:35');
INSERT INTO `tag` VALUES ('9', '789', '2019-01-28 11:20:40');
INSERT INTO `tag` VALUES ('10', 'abc', '2019-01-28 11:20:42');
INSERT INTO `tag` VALUES ('11', 'def', '2019-01-28 11:20:45');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `pwd` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `info` text,
  `face` varchar(255) DEFAULT NULL,
  `addtime` datetime DEFAULT NULL,
  `uuid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`),
  UNIQUE KEY `face` (`face`),
  UNIQUE KEY `uuid` (`uuid`),
  KEY `ix_user_addtime` (`addtime`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '鼠', '1231', '1231@123.com', '13888888881', '鼠', '1f401.png', '2019-01-27 17:17:10', 'd32a72bdac524478b7e4f6dfc8394fc0');
INSERT INTO `user` VALUES ('2', '牛', '1232', '1232@123.com', '13888888882', '牛', '1f402.png', '2019-01-27 14:36:11', 'd32a72bdac524478b7e4f6dfc8394fc1');
INSERT INTO `user` VALUES ('3', '虎', '1233', '1233@123.com', '13888888883', '虎', '1f405.png', '2019-01-27 14:36:11', 'd32a72bdac524478b7e4f6dfc8394fc2');
INSERT INTO `user` VALUES ('4', '兔', '1234', '1234@123.com', '13888888884', '兔', '1f407.png', '2019-01-27 14:36:11', 'd32a72bdac524478b7e4f6dfc8394fc3');
INSERT INTO `user` VALUES ('5', '龙', '1235', '1235@123.com', '13888888885', '龙', '1f409.png', '2019-01-27 14:36:11', 'd32a72bdac524478b7e4f6dfc8394fc4');
INSERT INTO `user` VALUES ('6', '蛇', '1236', '1236@123.com', '13888888886', '蛇', '1f40d.png', '2019-01-27 14:36:11', 'd32a72bdac524478b7e4f6dfc8394fc5');
INSERT INTO `user` VALUES ('7', '马', '1237', '1237@123.com', '13888888887', '马', '1f434.png', '2019-01-27 14:36:11', 'd32a72bdac524478b7e4f6dfc8394fc6');
INSERT INTO `user` VALUES ('8', '羊', '1238', '1238@123.com', '13888888888', '羊', '1f411.png', '2019-01-27 14:36:11', 'd32a72bdac524478b7e4f6dfc8394fc7');
INSERT INTO `user` VALUES ('9', '猴', '1239', '1239@123.com', '13888888889', '猴', '1f412.png', '2019-01-27 14:36:11', 'd32a72bdac524478b7e4f6dfc8394fc8');
INSERT INTO `user` VALUES ('10', '鸡', '1240', '1240@123.com', '13888888891', '鸡', '1f413.png', '2019-01-27 14:36:11', 'd32a72bdac524478b7e4f6dfc8394fc9');
INSERT INTO `user` VALUES ('11', '狗', '1241', '1241@123.com', '13888888892', '狗', '1f415.png', '2019-01-27 14:36:11', 'd32a72bdac524478b7e4f6dfc8394fd0');
INSERT INTO `user` VALUES ('13', '猪', '1242', '1242@123.com', '13888888893', '猪', '1f416.png', '2019-01-27 17:17:34', 'd32a72bdac524478b7e4f6dfc8394fd1');
INSERT INTO `user` VALUES ('14', 'fatal', 'pbkdf2:sha256:50000$FJPjPzqN$a9d87123adbd5caee486842c79e5c4463196942f06ebd0af48e9cd472ed2bb7d', '1564649449@qq.com', '15876576903', '春眠不觉晓，处处闻啼鸟。', '20190129211545f8ed7619730243bd8230072c75fb0500.jpg', '2019-01-29 15:04:42', 'e409831e1aad42ecaeca31414fe932a0');
INSERT INTO `user` VALUES ('15', 'fatal1', 'pbkdf2:sha256:50000$wxiyi76g$1a4b359bc76c6c03abc87645f934bc2cfab47a80fd49edf1e2bae416aad08bbe', '111111111@qq.com', '15876576904', null, null, '2019-01-29 15:16:45', '6732b4ed9680414c8568d71efd39361a');
INSERT INTO `user` VALUES ('16', 'java', 'pbkdf2:sha256:50000$8uY78pW3$59741815e0588b045a6a95d3aede77527cdb1565396a6e8f5fdbeddfd63bcad2', '970138074@qq.com', '13111111111', null, null, '2019-01-31 16:09:59', '2a9427aaab0149648a831e52c945fa0d');

-- ----------------------------
-- Table structure for userlog
-- ----------------------------
DROP TABLE IF EXISTS `userlog`;
CREATE TABLE `userlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `ip` varchar(100) DEFAULT NULL,
  `addtime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `ix_userlog_addtime` (`addtime`),
  CONSTRAINT `userlog_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userlog
-- ----------------------------
INSERT INTO `userlog` VALUES ('1', '1', '192.168.4.1', '2019-01-28 12:04:38');
INSERT INTO `userlog` VALUES ('2', '2', '192.168.4.2', '2019-01-28 12:04:38');
INSERT INTO `userlog` VALUES ('3', '3', '192.168.4.3', '2019-01-28 12:04:38');
INSERT INTO `userlog` VALUES ('4', '4', '192.168.4.4', '2019-01-28 12:04:38');
INSERT INTO `userlog` VALUES ('5', '5', '192.168.4.5', '2019-01-28 12:04:38');
INSERT INTO `userlog` VALUES ('6', '6', '192.168.4.6', '2019-01-28 12:04:38');
INSERT INTO `userlog` VALUES ('7', '7', '192.168.4.7', '2019-01-28 12:04:38');
INSERT INTO `userlog` VALUES ('8', '8', '192.168.4.8', '2019-01-28 12:04:38');
INSERT INTO `userlog` VALUES ('9', '9', '192.168.4.9', '2019-01-28 12:04:38');
INSERT INTO `userlog` VALUES ('10', '14', '127.0.0.1', '2019-01-29 15:49:40');
INSERT INTO `userlog` VALUES ('11', '14', '127.0.0.1', '2019-01-29 15:55:49');
INSERT INTO `userlog` VALUES ('12', '14', '127.0.0.1', '2019-01-29 16:23:52');
INSERT INTO `userlog` VALUES ('13', '14', '127.0.0.1', '2019-01-30 09:56:44');
INSERT INTO `userlog` VALUES ('14', '14', '127.0.0.1', '2019-01-30 10:23:14');
INSERT INTO `userlog` VALUES ('15', '14', '127.0.0.1', '2019-01-30 10:23:41');
INSERT INTO `userlog` VALUES ('16', '14', '127.0.0.1', '2019-01-30 10:25:52');
INSERT INTO `userlog` VALUES ('17', '14', '127.0.0.1', '2019-01-30 10:26:26');
INSERT INTO `userlog` VALUES ('18', '14', '127.0.0.1', '2019-01-30 10:33:41');
INSERT INTO `userlog` VALUES ('19', '14', '127.0.0.1', '2019-01-30 10:34:04');
INSERT INTO `userlog` VALUES ('20', '14', '127.0.0.1', '2019-01-30 15:38:25');
INSERT INTO `userlog` VALUES ('21', '14', '127.0.0.1', '2019-01-31 10:01:12');
INSERT INTO `userlog` VALUES ('22', '14', '127.0.0.1', '2019-01-31 10:37:35');
INSERT INTO `userlog` VALUES ('23', '14', '127.0.0.1', '2019-01-31 14:20:12');
INSERT INTO `userlog` VALUES ('24', '14', '127.0.0.1', '2019-01-31 15:55:02');
INSERT INTO `userlog` VALUES ('25', '16', '127.0.0.1', '2019-01-31 16:10:08');
INSERT INTO `userlog` VALUES ('26', '14', '127.0.0.1', '2019-01-31 17:53:50');
